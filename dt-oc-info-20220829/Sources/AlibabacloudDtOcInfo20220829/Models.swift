import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GetOcCompetitorsRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcCompetitorsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var competitionBrandIntroduction: String?

        public var competitionEntAddress: String?

        public var competitionEntEsDate: String?

        public var competitionEntFinTurn: String?

        public var competitionEntName: String?

        public var competitionIntroduction: String?

        public var competitionLogoUrl: String?

        public var competitionProductName: String?

        public var competitionTag: String?

        public var competitionWebsite: String?

        public var entName: String?

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
            if self.competitionBrandIntroduction != nil {
                map["CompetitionBrandIntroduction"] = self.competitionBrandIntroduction!
            }
            if self.competitionEntAddress != nil {
                map["CompetitionEntAddress"] = self.competitionEntAddress!
            }
            if self.competitionEntEsDate != nil {
                map["CompetitionEntEsDate"] = self.competitionEntEsDate!
            }
            if self.competitionEntFinTurn != nil {
                map["CompetitionEntFinTurn"] = self.competitionEntFinTurn!
            }
            if self.competitionEntName != nil {
                map["CompetitionEntName"] = self.competitionEntName!
            }
            if self.competitionIntroduction != nil {
                map["CompetitionIntroduction"] = self.competitionIntroduction!
            }
            if self.competitionLogoUrl != nil {
                map["CompetitionLogoUrl"] = self.competitionLogoUrl!
            }
            if self.competitionProductName != nil {
                map["CompetitionProductName"] = self.competitionProductName!
            }
            if self.competitionTag != nil {
                map["CompetitionTag"] = self.competitionTag!
            }
            if self.competitionWebsite != nil {
                map["CompetitionWebsite"] = self.competitionWebsite!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CompetitionBrandIntroduction") {
                self.competitionBrandIntroduction = dict["CompetitionBrandIntroduction"] as! String
            }
            if dict.keys.contains("CompetitionEntAddress") {
                self.competitionEntAddress = dict["CompetitionEntAddress"] as! String
            }
            if dict.keys.contains("CompetitionEntEsDate") {
                self.competitionEntEsDate = dict["CompetitionEntEsDate"] as! String
            }
            if dict.keys.contains("CompetitionEntFinTurn") {
                self.competitionEntFinTurn = dict["CompetitionEntFinTurn"] as! String
            }
            if dict.keys.contains("CompetitionEntName") {
                self.competitionEntName = dict["CompetitionEntName"] as! String
            }
            if dict.keys.contains("CompetitionIntroduction") {
                self.competitionIntroduction = dict["CompetitionIntroduction"] as! String
            }
            if dict.keys.contains("CompetitionLogoUrl") {
                self.competitionLogoUrl = dict["CompetitionLogoUrl"] as! String
            }
            if dict.keys.contains("CompetitionProductName") {
                self.competitionProductName = dict["CompetitionProductName"] as! String
            }
            if dict.keys.contains("CompetitionTag") {
                self.competitionTag = dict["CompetitionTag"] as! String
            }
            if dict.keys.contains("CompetitionWebsite") {
                self.competitionWebsite = dict["CompetitionWebsite"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcCompetitorsResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcCompetitorsResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcCompetitorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcCompetitorsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcCompetitorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcCoreTeamsRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcCoreTeamsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var entName: String?

        public var memberIntroduction: String?

        public var memberName: String?

        public var memberPosition: String?

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
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.memberIntroduction != nil {
                map["MemberIntroduction"] = self.memberIntroduction!
            }
            if self.memberName != nil {
                map["MemberName"] = self.memberName!
            }
            if self.memberPosition != nil {
                map["MemberPosition"] = self.memberPosition!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("MemberIntroduction") {
                self.memberIntroduction = dict["MemberIntroduction"] as! String
            }
            if dict.keys.contains("MemberName") {
                self.memberName = dict["MemberName"] as! String
            }
            if dict.keys.contains("MemberPosition") {
                self.memberPosition = dict["MemberPosition"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcCoreTeamsResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcCoreTeamsResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcCoreTeamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcCoreTeamsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcCoreTeamsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcFinancingRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcFinancingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var entName: String?

        public var finAmount: String?

        public var finDate: String?

        public var finTurn: String?

        public var investors: String?

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
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.finAmount != nil {
                map["FinAmount"] = self.finAmount!
            }
            if self.finDate != nil {
                map["FinDate"] = self.finDate!
            }
            if self.finTurn != nil {
                map["FinTurn"] = self.finTurn!
            }
            if self.investors != nil {
                map["Investors"] = self.investors!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("FinAmount") {
                self.finAmount = dict["FinAmount"] as! String
            }
            if dict.keys.contains("FinDate") {
                self.finDate = dict["FinDate"] as! String
            }
            if dict.keys.contains("FinTurn") {
                self.finTurn = dict["FinTurn"] as! String
            }
            if dict.keys.contains("Investors") {
                self.investors = dict["Investors"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcFinancingResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcFinancingResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcFinancingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcFinancingResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcFinancingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcFuzzSearchRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcFuzzSearchResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var entName: String?

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
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcFuzzSearchResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcFuzzSearchResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcFuzzSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcFuzzSearchResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcFuzzSearchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcAbnormalOperationRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcAbnormalOperationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var inDate: String?

        public var inDepartment: String?

        public var inReason: String?

        public var outDate: String?

        public var outDepartment: String?

        public var outReason: String?

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
            if self.inDate != nil {
                map["InDate"] = self.inDate!
            }
            if self.inDepartment != nil {
                map["InDepartment"] = self.inDepartment!
            }
            if self.inReason != nil {
                map["InReason"] = self.inReason!
            }
            if self.outDate != nil {
                map["OutDate"] = self.outDate!
            }
            if self.outDepartment != nil {
                map["OutDepartment"] = self.outDepartment!
            }
            if self.outReason != nil {
                map["OutReason"] = self.outReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InDate") {
                self.inDate = dict["InDate"] as! String
            }
            if dict.keys.contains("InDepartment") {
                self.inDepartment = dict["InDepartment"] as! String
            }
            if dict.keys.contains("InReason") {
                self.inReason = dict["InReason"] as! String
            }
            if dict.keys.contains("OutDate") {
                self.outDate = dict["OutDate"] as! String
            }
            if dict.keys.contains("OutDepartment") {
                self.outDepartment = dict["OutDepartment"] as! String
            }
            if dict.keys.contains("OutReason") {
                self.outReason = dict["OutReason"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcAbnormalOperationResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcAbnormalOperationResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcAbnormalOperationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcAbnormalOperationResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcAbnormalOperationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcAdminLicenseRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcAdminLicenseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var department: String?

        public var endDate: String?

        public var licenseName: String?

        public var licenseNo: String?

        public var startDate: String?

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
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.licenseName != nil {
                map["LicenseName"] = self.licenseName!
            }
            if self.licenseNo != nil {
                map["LicenseNo"] = self.licenseNo!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("EndDate") {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("LicenseName") {
                self.licenseName = dict["LicenseName"] as! String
            }
            if dict.keys.contains("LicenseNo") {
                self.licenseNo = dict["LicenseNo"] as! String
            }
            if dict.keys.contains("StartDate") {
                self.startDate = dict["StartDate"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcAdminLicenseResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcAdminLicenseResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcAdminLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcAdminLicenseResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcAdminLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcBasicRequest : Tea.TeaModel {
    public var searchKey: String?

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
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcBasicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var checkDate: String?

        public var entAddress: String?

        public var entBrief: String?

        public var entName: String?

        public var entNameEng: String?

        public var entStatus: String?

        public var entType: String?

        public var esDate: String?

        public var formerNames: String?

        public var industryNameLv1: String?

        public var industryNameLv2: String?

        public var insuredNum: String?

        public var legalName: String?

        public var licenseNumber: String?

        public var opFrom: String?

        public var opScope: String?

        public var opTo: String?

        public var orgNo: String?

        public var recCap: String?

        public var regCap: String?

        public var regOrg: String?

        public var regOrgCity: String?

        public var regOrgDistrict: String?

        public var regOrgProvince: String?

        public var socialCreditCode: String?

        public var staffNum: String?

        public var taxNum: String?

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
            if self.checkDate != nil {
                map["CheckDate"] = self.checkDate!
            }
            if self.entAddress != nil {
                map["EntAddress"] = self.entAddress!
            }
            if self.entBrief != nil {
                map["EntBrief"] = self.entBrief!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.entNameEng != nil {
                map["EntNameEng"] = self.entNameEng!
            }
            if self.entStatus != nil {
                map["EntStatus"] = self.entStatus!
            }
            if self.entType != nil {
                map["EntType"] = self.entType!
            }
            if self.esDate != nil {
                map["EsDate"] = self.esDate!
            }
            if self.formerNames != nil {
                map["FormerNames"] = self.formerNames!
            }
            if self.industryNameLv1 != nil {
                map["IndustryNameLv1"] = self.industryNameLv1!
            }
            if self.industryNameLv2 != nil {
                map["IndustryNameLv2"] = self.industryNameLv2!
            }
            if self.insuredNum != nil {
                map["InsuredNum"] = self.insuredNum!
            }
            if self.legalName != nil {
                map["LegalName"] = self.legalName!
            }
            if self.licenseNumber != nil {
                map["LicenseNumber"] = self.licenseNumber!
            }
            if self.opFrom != nil {
                map["OpFrom"] = self.opFrom!
            }
            if self.opScope != nil {
                map["OpScope"] = self.opScope!
            }
            if self.opTo != nil {
                map["OpTo"] = self.opTo!
            }
            if self.orgNo != nil {
                map["OrgNo"] = self.orgNo!
            }
            if self.recCap != nil {
                map["RecCap"] = self.recCap!
            }
            if self.regCap != nil {
                map["RegCap"] = self.regCap!
            }
            if self.regOrg != nil {
                map["RegOrg"] = self.regOrg!
            }
            if self.regOrgCity != nil {
                map["RegOrgCity"] = self.regOrgCity!
            }
            if self.regOrgDistrict != nil {
                map["RegOrgDistrict"] = self.regOrgDistrict!
            }
            if self.regOrgProvince != nil {
                map["RegOrgProvince"] = self.regOrgProvince!
            }
            if self.socialCreditCode != nil {
                map["SocialCreditCode"] = self.socialCreditCode!
            }
            if self.staffNum != nil {
                map["StaffNum"] = self.staffNum!
            }
            if self.taxNum != nil {
                map["TaxNum"] = self.taxNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CheckDate") {
                self.checkDate = dict["CheckDate"] as! String
            }
            if dict.keys.contains("EntAddress") {
                self.entAddress = dict["EntAddress"] as! String
            }
            if dict.keys.contains("EntBrief") {
                self.entBrief = dict["EntBrief"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("EntNameEng") {
                self.entNameEng = dict["EntNameEng"] as! String
            }
            if dict.keys.contains("EntStatus") {
                self.entStatus = dict["EntStatus"] as! String
            }
            if dict.keys.contains("EntType") {
                self.entType = dict["EntType"] as! String
            }
            if dict.keys.contains("EsDate") {
                self.esDate = dict["EsDate"] as! String
            }
            if dict.keys.contains("FormerNames") {
                self.formerNames = dict["FormerNames"] as! String
            }
            if dict.keys.contains("IndustryNameLv1") {
                self.industryNameLv1 = dict["IndustryNameLv1"] as! String
            }
            if dict.keys.contains("IndustryNameLv2") {
                self.industryNameLv2 = dict["IndustryNameLv2"] as! String
            }
            if dict.keys.contains("InsuredNum") {
                self.insuredNum = dict["InsuredNum"] as! String
            }
            if dict.keys.contains("LegalName") {
                self.legalName = dict["LegalName"] as! String
            }
            if dict.keys.contains("LicenseNumber") {
                self.licenseNumber = dict["LicenseNumber"] as! String
            }
            if dict.keys.contains("OpFrom") {
                self.opFrom = dict["OpFrom"] as! String
            }
            if dict.keys.contains("OpScope") {
                self.opScope = dict["OpScope"] as! String
            }
            if dict.keys.contains("OpTo") {
                self.opTo = dict["OpTo"] as! String
            }
            if dict.keys.contains("OrgNo") {
                self.orgNo = dict["OrgNo"] as! String
            }
            if dict.keys.contains("RecCap") {
                self.recCap = dict["RecCap"] as! String
            }
            if dict.keys.contains("RegCap") {
                self.regCap = dict["RegCap"] as! String
            }
            if dict.keys.contains("RegOrg") {
                self.regOrg = dict["RegOrg"] as! String
            }
            if dict.keys.contains("RegOrgCity") {
                self.regOrgCity = dict["RegOrgCity"] as! String
            }
            if dict.keys.contains("RegOrgDistrict") {
                self.regOrgDistrict = dict["RegOrgDistrict"] as! String
            }
            if dict.keys.contains("RegOrgProvince") {
                self.regOrgProvince = dict["RegOrgProvince"] as! String
            }
            if dict.keys.contains("SocialCreditCode") {
                self.socialCreditCode = dict["SocialCreditCode"] as! String
            }
            if dict.keys.contains("StaffNum") {
                self.staffNum = dict["StaffNum"] as! String
            }
            if dict.keys.contains("TaxNum") {
                self.taxNum = dict["TaxNum"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetOcIcBasicResponseBody.Data?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetOcIcBasicResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcBasicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcBasicResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcBasicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcBranchRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcBranchResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var entName: String?

        public var entStatus: String?

        public var esDate: String?

        public var operName: String?

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
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.entStatus != nil {
                map["EntStatus"] = self.entStatus!
            }
            if self.esDate != nil {
                map["EsDate"] = self.esDate!
            }
            if self.operName != nil {
                map["OperName"] = self.operName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("EntStatus") {
                self.entStatus = dict["EntStatus"] as! String
            }
            if dict.keys.contains("EsDate") {
                self.esDate = dict["EsDate"] as! String
            }
            if dict.keys.contains("OperName") {
                self.operName = dict["OperName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcBranchResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcBranchResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcBranchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcBranchResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcBranchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcChangeRecordRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcChangeRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var afterContent: String?

        public var beforeContent: String?

        public var changeDate: String?

        public var type: String?

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
            if self.afterContent != nil {
                map["AfterContent"] = self.afterContent!
            }
            if self.beforeContent != nil {
                map["BeforeContent"] = self.beforeContent!
            }
            if self.changeDate != nil {
                map["ChangeDate"] = self.changeDate!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AfterContent") {
                self.afterContent = dict["AfterContent"] as! String
            }
            if dict.keys.contains("BeforeContent") {
                self.beforeContent = dict["BeforeContent"] as! String
            }
            if dict.keys.contains("ChangeDate") {
                self.changeDate = dict["ChangeDate"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcChangeRecordResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcChangeRecordResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcChangeRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcChangeRecordResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcChangeRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcCheckupRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcCheckupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var date: String?

        public var department: String?

        public var result: String?

        public var type: String?

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
            if self.date != nil {
                map["Date"] = self.date!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Date") {
                self.date = dict["Date"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcCheckupResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcCheckupResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcCheckupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcCheckupResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcCheckupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcClearAccountRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcClearAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var leader: String?

        public var member: String?

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
            if self.leader != nil {
                map["Leader"] = self.leader!
            }
            if self.member != nil {
                map["Member"] = self.member!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Leader") {
                self.leader = dict["Leader"] as! String
            }
            if dict.keys.contains("Member") {
                self.member = dict["Member"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcClearAccountResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcClearAccountResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcClearAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcClearAccountResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcClearAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcDoubleCheckupRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcDoubleCheckupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var inspectDate: String?

        public var inspectDepartment: String?

        public var inspectItem: String?

        public var inspectPlanId: String?

        public var inspectPlanName: String?

        public var inspectResult: String?

        public var inspectTaskId: String?

        public var inspectTaskName: String?

        public var inspectTypeName: String?

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
            if self.inspectDate != nil {
                map["InspectDate"] = self.inspectDate!
            }
            if self.inspectDepartment != nil {
                map["InspectDepartment"] = self.inspectDepartment!
            }
            if self.inspectItem != nil {
                map["InspectItem"] = self.inspectItem!
            }
            if self.inspectPlanId != nil {
                map["InspectPlanId"] = self.inspectPlanId!
            }
            if self.inspectPlanName != nil {
                map["InspectPlanName"] = self.inspectPlanName!
            }
            if self.inspectResult != nil {
                map["InspectResult"] = self.inspectResult!
            }
            if self.inspectTaskId != nil {
                map["InspectTaskId"] = self.inspectTaskId!
            }
            if self.inspectTaskName != nil {
                map["InspectTaskName"] = self.inspectTaskName!
            }
            if self.inspectTypeName != nil {
                map["InspectTypeName"] = self.inspectTypeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InspectDate") {
                self.inspectDate = dict["InspectDate"] as! String
            }
            if dict.keys.contains("InspectDepartment") {
                self.inspectDepartment = dict["InspectDepartment"] as! String
            }
            if dict.keys.contains("InspectItem") {
                self.inspectItem = dict["InspectItem"] as! String
            }
            if dict.keys.contains("InspectPlanId") {
                self.inspectPlanId = dict["InspectPlanId"] as! String
            }
            if dict.keys.contains("InspectPlanName") {
                self.inspectPlanName = dict["InspectPlanName"] as! String
            }
            if dict.keys.contains("InspectResult") {
                self.inspectResult = dict["InspectResult"] as! String
            }
            if dict.keys.contains("InspectTaskId") {
                self.inspectTaskId = dict["InspectTaskId"] as! String
            }
            if dict.keys.contains("InspectTaskName") {
                self.inspectTaskName = dict["InspectTaskName"] as! String
            }
            if dict.keys.contains("InspectTypeName") {
                self.inspectTypeName = dict["InspectTypeName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcDoubleCheckupResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcDoubleCheckupResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcDoubleCheckupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcDoubleCheckupResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcDoubleCheckupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcEmployeeRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcEmployeeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var jobTitle: String?

        public var name: String?

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
            if self.jobTitle != nil {
                map["JobTitle"] = self.jobTitle!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobTitle") {
                self.jobTitle = dict["JobTitle"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcEmployeeResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcEmployeeResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcEmployeeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcEmployeeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcEmployeeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcEquityFrozenRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcEquityFrozenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var freezeAmount: String?

        public var freezeCardNum: String?

        public var freezeCardType: String?

        public var freezeCourt: String?

        public var freezeEndDate: String?

        public var freezeExecItem: String?

        public var freezeExecPerson: String?

        public var freezeNoticeNum: String?

        public var freezePublishDate: String?

        public var freezeStartDate: String?

        public var status: String?

        public var unfreezeAdjustNum: String?

        public var unfreezeCourt: String?

        public var unfreezeDate: String?

        public var unfreezeReason: String?

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
            if self.freezeAmount != nil {
                map["FreezeAmount"] = self.freezeAmount!
            }
            if self.freezeCardNum != nil {
                map["FreezeCardNum"] = self.freezeCardNum!
            }
            if self.freezeCardType != nil {
                map["FreezeCardType"] = self.freezeCardType!
            }
            if self.freezeCourt != nil {
                map["FreezeCourt"] = self.freezeCourt!
            }
            if self.freezeEndDate != nil {
                map["FreezeEndDate"] = self.freezeEndDate!
            }
            if self.freezeExecItem != nil {
                map["FreezeExecItem"] = self.freezeExecItem!
            }
            if self.freezeExecPerson != nil {
                map["FreezeExecPerson"] = self.freezeExecPerson!
            }
            if self.freezeNoticeNum != nil {
                map["FreezeNoticeNum"] = self.freezeNoticeNum!
            }
            if self.freezePublishDate != nil {
                map["FreezePublishDate"] = self.freezePublishDate!
            }
            if self.freezeStartDate != nil {
                map["FreezeStartDate"] = self.freezeStartDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.unfreezeAdjustNum != nil {
                map["UnfreezeAdjustNum"] = self.unfreezeAdjustNum!
            }
            if self.unfreezeCourt != nil {
                map["UnfreezeCourt"] = self.unfreezeCourt!
            }
            if self.unfreezeDate != nil {
                map["UnfreezeDate"] = self.unfreezeDate!
            }
            if self.unfreezeReason != nil {
                map["UnfreezeReason"] = self.unfreezeReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FreezeAmount") {
                self.freezeAmount = dict["FreezeAmount"] as! String
            }
            if dict.keys.contains("FreezeCardNum") {
                self.freezeCardNum = dict["FreezeCardNum"] as! String
            }
            if dict.keys.contains("FreezeCardType") {
                self.freezeCardType = dict["FreezeCardType"] as! String
            }
            if dict.keys.contains("FreezeCourt") {
                self.freezeCourt = dict["FreezeCourt"] as! String
            }
            if dict.keys.contains("FreezeEndDate") {
                self.freezeEndDate = dict["FreezeEndDate"] as! String
            }
            if dict.keys.contains("FreezeExecItem") {
                self.freezeExecItem = dict["FreezeExecItem"] as! String
            }
            if dict.keys.contains("FreezeExecPerson") {
                self.freezeExecPerson = dict["FreezeExecPerson"] as! String
            }
            if dict.keys.contains("FreezeNoticeNum") {
                self.freezeNoticeNum = dict["FreezeNoticeNum"] as! String
            }
            if dict.keys.contains("FreezePublishDate") {
                self.freezePublishDate = dict["FreezePublishDate"] as! String
            }
            if dict.keys.contains("FreezeStartDate") {
                self.freezeStartDate = dict["FreezeStartDate"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UnfreezeAdjustNum") {
                self.unfreezeAdjustNum = dict["UnfreezeAdjustNum"] as! String
            }
            if dict.keys.contains("UnfreezeCourt") {
                self.unfreezeCourt = dict["UnfreezeCourt"] as! String
            }
            if dict.keys.contains("UnfreezeDate") {
                self.unfreezeDate = dict["UnfreezeDate"] as! String
            }
            if dict.keys.contains("UnfreezeReason") {
                self.unfreezeReason = dict["UnfreezeReason"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcEquityFrozenResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcEquityFrozenResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcEquityFrozenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcEquityFrozenResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcEquityFrozenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcEquityPledgeRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcEquityPledgeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var number: String?

        public var pawnee: String?

        public var pawneeIdentifyNo: String?

        public var pledgor: String?

        public var pledgorAmount: String?

        public var pledgorIdentifyNo: String?

        public var publicDate: String?

        public var regDate: String?

        public var relatedComp: String?

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
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.pawnee != nil {
                map["Pawnee"] = self.pawnee!
            }
            if self.pawneeIdentifyNo != nil {
                map["PawneeIdentifyNo"] = self.pawneeIdentifyNo!
            }
            if self.pledgor != nil {
                map["Pledgor"] = self.pledgor!
            }
            if self.pledgorAmount != nil {
                map["PledgorAmount"] = self.pledgorAmount!
            }
            if self.pledgorIdentifyNo != nil {
                map["PledgorIdentifyNo"] = self.pledgorIdentifyNo!
            }
            if self.publicDate != nil {
                map["PublicDate"] = self.publicDate!
            }
            if self.regDate != nil {
                map["RegDate"] = self.regDate!
            }
            if self.relatedComp != nil {
                map["RelatedComp"] = self.relatedComp!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Number") {
                self.number = dict["Number"] as! String
            }
            if dict.keys.contains("Pawnee") {
                self.pawnee = dict["Pawnee"] as! String
            }
            if dict.keys.contains("PawneeIdentifyNo") {
                self.pawneeIdentifyNo = dict["PawneeIdentifyNo"] as! String
            }
            if dict.keys.contains("Pledgor") {
                self.pledgor = dict["Pledgor"] as! String
            }
            if dict.keys.contains("PledgorAmount") {
                self.pledgorAmount = dict["PledgorAmount"] as! String
            }
            if dict.keys.contains("PledgorIdentifyNo") {
                self.pledgorIdentifyNo = dict["PledgorIdentifyNo"] as! String
            }
            if dict.keys.contains("PublicDate") {
                self.publicDate = dict["PublicDate"] as! String
            }
            if dict.keys.contains("RegDate") {
                self.regDate = dict["RegDate"] as! String
            }
            if dict.keys.contains("RelatedComp") {
                self.relatedComp = dict["RelatedComp"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcEquityPledgeResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcEquityPledgeResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcEquityPledgeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcEquityPledgeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcEquityPledgeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcInvestmentRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcInvestmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var entName: String?

        public var investCreditCode: String?

        public var investEsDate: String?

        public var investLegalName: String?

        public var investLicenseNo: String?

        public var investName: String?

        public var investRegCap: String?

        public var investStatus: String?

        public var shouldCap: String?

        public var stockPercentage: String?

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
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.investCreditCode != nil {
                map["InvestCreditCode"] = self.investCreditCode!
            }
            if self.investEsDate != nil {
                map["InvestEsDate"] = self.investEsDate!
            }
            if self.investLegalName != nil {
                map["InvestLegalName"] = self.investLegalName!
            }
            if self.investLicenseNo != nil {
                map["InvestLicenseNo"] = self.investLicenseNo!
            }
            if self.investName != nil {
                map["InvestName"] = self.investName!
            }
            if self.investRegCap != nil {
                map["InvestRegCap"] = self.investRegCap!
            }
            if self.investStatus != nil {
                map["InvestStatus"] = self.investStatus!
            }
            if self.shouldCap != nil {
                map["ShouldCap"] = self.shouldCap!
            }
            if self.stockPercentage != nil {
                map["StockPercentage"] = self.stockPercentage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("InvestCreditCode") {
                self.investCreditCode = dict["InvestCreditCode"] as! String
            }
            if dict.keys.contains("InvestEsDate") {
                self.investEsDate = dict["InvestEsDate"] as! String
            }
            if dict.keys.contains("InvestLegalName") {
                self.investLegalName = dict["InvestLegalName"] as! String
            }
            if dict.keys.contains("InvestLicenseNo") {
                self.investLicenseNo = dict["InvestLicenseNo"] as! String
            }
            if dict.keys.contains("InvestName") {
                self.investName = dict["InvestName"] as! String
            }
            if dict.keys.contains("InvestRegCap") {
                self.investRegCap = dict["InvestRegCap"] as! String
            }
            if dict.keys.contains("InvestStatus") {
                self.investStatus = dict["InvestStatus"] as! String
            }
            if dict.keys.contains("ShouldCap") {
                self.shouldCap = dict["ShouldCap"] as! String
            }
            if dict.keys.contains("StockPercentage") {
                self.stockPercentage = dict["StockPercentage"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcInvestmentResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcInvestmentResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcInvestmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcInvestmentResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcInvestmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcKnowledgePropertyPledgeRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcKnowledgePropertyPledgeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var name: String?

        public var number: String?

        public var pawnee: String?

        public var period: String?

        public var pledgor: String?

        public var publicDate: String?

        public var status: String?

        public var type: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.pawnee != nil {
                map["Pawnee"] = self.pawnee!
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.pledgor != nil {
                map["Pledgor"] = self.pledgor!
            }
            if self.publicDate != nil {
                map["PublicDate"] = self.publicDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Number") {
                self.number = dict["Number"] as! String
            }
            if dict.keys.contains("Pawnee") {
                self.pawnee = dict["Pawnee"] as! String
            }
            if dict.keys.contains("Period") {
                self.period = dict["Period"] as! String
            }
            if dict.keys.contains("Pledgor") {
                self.pledgor = dict["Pledgor"] as! String
            }
            if dict.keys.contains("PublicDate") {
                self.publicDate = dict["PublicDate"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcKnowledgePropertyPledgeResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcKnowledgePropertyPledgeResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcKnowledgePropertyPledgeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcKnowledgePropertyPledgeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcKnowledgePropertyPledgeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcMortgageRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcMortgageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var debitAmount: String?

        public var debitPeriod: String?

        public var debitScope: String?

        public var debitType: String?

        public var department: String?

        public var guarantees: String?

        public var identifyNo: String?

        public var identifyType: String?

        public var mortgageesName: String?

        public var number: String?

        public var onecompId: String?

        public var publicDate: String?

        public var regDate: String?

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
            if self.debitAmount != nil {
                map["DebitAmount"] = self.debitAmount!
            }
            if self.debitPeriod != nil {
                map["DebitPeriod"] = self.debitPeriod!
            }
            if self.debitScope != nil {
                map["DebitScope"] = self.debitScope!
            }
            if self.debitType != nil {
                map["DebitType"] = self.debitType!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.guarantees != nil {
                map["Guarantees"] = self.guarantees!
            }
            if self.identifyNo != nil {
                map["IdentifyNo"] = self.identifyNo!
            }
            if self.identifyType != nil {
                map["IdentifyType"] = self.identifyType!
            }
            if self.mortgageesName != nil {
                map["MortgageesName"] = self.mortgageesName!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.onecompId != nil {
                map["OnecompId"] = self.onecompId!
            }
            if self.publicDate != nil {
                map["PublicDate"] = self.publicDate!
            }
            if self.regDate != nil {
                map["RegDate"] = self.regDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DebitAmount") {
                self.debitAmount = dict["DebitAmount"] as! String
            }
            if dict.keys.contains("DebitPeriod") {
                self.debitPeriod = dict["DebitPeriod"] as! String
            }
            if dict.keys.contains("DebitScope") {
                self.debitScope = dict["DebitScope"] as! String
            }
            if dict.keys.contains("DebitType") {
                self.debitType = dict["DebitType"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("Guarantees") {
                self.guarantees = dict["Guarantees"] as! String
            }
            if dict.keys.contains("IdentifyNo") {
                self.identifyNo = dict["IdentifyNo"] as! String
            }
            if dict.keys.contains("IdentifyType") {
                self.identifyType = dict["IdentifyType"] as! String
            }
            if dict.keys.contains("MortgageesName") {
                self.mortgageesName = dict["MortgageesName"] as! String
            }
            if dict.keys.contains("Number") {
                self.number = dict["Number"] as! String
            }
            if dict.keys.contains("OnecompId") {
                self.onecompId = dict["OnecompId"] as! String
            }
            if dict.keys.contains("PublicDate") {
                self.publicDate = dict["PublicDate"] as! String
            }
            if dict.keys.contains("RegDate") {
                self.regDate = dict["RegDate"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcMortgageResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcMortgageResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcMortgageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcMortgageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcMortgageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcSeriousOffenseRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcSeriousOffenseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var entName: String?

        public var inDate: String?

        public var inDepartment: String?

        public var inReason: String?

        public var outDate: String?

        public var outDepartment: String?

        public var outReason: String?

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
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.inDate != nil {
                map["InDate"] = self.inDate!
            }
            if self.inDepartment != nil {
                map["InDepartment"] = self.inDepartment!
            }
            if self.inReason != nil {
                map["InReason"] = self.inReason!
            }
            if self.outDate != nil {
                map["OutDate"] = self.outDate!
            }
            if self.outDepartment != nil {
                map["OutDepartment"] = self.outDepartment!
            }
            if self.outReason != nil {
                map["OutReason"] = self.outReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("InDate") {
                self.inDate = dict["InDate"] as! String
            }
            if dict.keys.contains("InDepartment") {
                self.inDepartment = dict["InDepartment"] as! String
            }
            if dict.keys.contains("InReason") {
                self.inReason = dict["InReason"] as! String
            }
            if dict.keys.contains("OutDate") {
                self.outDate = dict["OutDate"] as! String
            }
            if dict.keys.contains("OutDepartment") {
                self.outDepartment = dict["OutDepartment"] as! String
            }
            if dict.keys.contains("OutReason") {
                self.outReason = dict["OutReason"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcSeriousOffenseResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcSeriousOffenseResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcSeriousOffenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcSeriousOffenseResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcSeriousOffenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcShareholderRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcShareholderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var shouldCap: String?

        public var shouldCapTime: String?

        public var stockName: String?

        public var stockPercent: String?

        public var stockType: String?

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
            if self.shouldCap != nil {
                map["ShouldCap"] = self.shouldCap!
            }
            if self.shouldCapTime != nil {
                map["ShouldCapTime"] = self.shouldCapTime!
            }
            if self.stockName != nil {
                map["StockName"] = self.stockName!
            }
            if self.stockPercent != nil {
                map["StockPercent"] = self.stockPercent!
            }
            if self.stockType != nil {
                map["StockType"] = self.stockType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ShouldCap") {
                self.shouldCap = dict["ShouldCap"] as! String
            }
            if dict.keys.contains("ShouldCapTime") {
                self.shouldCapTime = dict["ShouldCapTime"] as! String
            }
            if dict.keys.contains("StockName") {
                self.stockName = dict["StockName"] as! String
            }
            if dict.keys.contains("StockPercent") {
                self.stockPercent = dict["StockPercent"] as! String
            }
            if dict.keys.contains("StockType") {
                self.stockType = dict["StockType"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcShareholderResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcShareholderResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcShareholderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcShareholderResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcShareholderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIcSimpleCancelRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIcSimpleCancelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var department: String?

        public var entName: String?

        public var noticePeriod: String?

        public var scaContent: String?

        public var scaDate: String?

        public var scaProposer: String?

        public var scaResult: String?

        public var scaResultDate: String?

        public var socialCreditCode: String?

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
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.noticePeriod != nil {
                map["NoticePeriod"] = self.noticePeriod!
            }
            if self.scaContent != nil {
                map["ScaContent"] = self.scaContent!
            }
            if self.scaDate != nil {
                map["ScaDate"] = self.scaDate!
            }
            if self.scaProposer != nil {
                map["ScaProposer"] = self.scaProposer!
            }
            if self.scaResult != nil {
                map["ScaResult"] = self.scaResult!
            }
            if self.scaResultDate != nil {
                map["ScaResultDate"] = self.scaResultDate!
            }
            if self.socialCreditCode != nil {
                map["SocialCreditCode"] = self.socialCreditCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("NoticePeriod") {
                self.noticePeriod = dict["NoticePeriod"] as! String
            }
            if dict.keys.contains("ScaContent") {
                self.scaContent = dict["ScaContent"] as! String
            }
            if dict.keys.contains("ScaDate") {
                self.scaDate = dict["ScaDate"] as! String
            }
            if dict.keys.contains("ScaProposer") {
                self.scaProposer = dict["ScaProposer"] as! String
            }
            if dict.keys.contains("ScaResult") {
                self.scaResult = dict["ScaResult"] as! String
            }
            if dict.keys.contains("ScaResultDate") {
                self.scaResultDate = dict["ScaResultDate"] as! String
            }
            if dict.keys.contains("SocialCreditCode") {
                self.socialCreditCode = dict["SocialCreditCode"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIcSimpleCancelResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIcSimpleCancelResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIcSimpleCancelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIcSimpleCancelResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIcSimpleCancelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIpCertificateRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIpCertificateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authorizeDate: String?

        public var authorizeDepartment: String?

        public var certNum: String?

        public var certScope: String?

        public var certType: String?

        public var entName: String?

        public var province: String?

        public var pubDate: String?

        public var validEndDate: String?

        public var validStartDate: String?

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
            if self.authorizeDate != nil {
                map["AuthorizeDate"] = self.authorizeDate!
            }
            if self.authorizeDepartment != nil {
                map["AuthorizeDepartment"] = self.authorizeDepartment!
            }
            if self.certNum != nil {
                map["CertNum"] = self.certNum!
            }
            if self.certScope != nil {
                map["CertScope"] = self.certScope!
            }
            if self.certType != nil {
                map["CertType"] = self.certType!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.pubDate != nil {
                map["PubDate"] = self.pubDate!
            }
            if self.validEndDate != nil {
                map["ValidEndDate"] = self.validEndDate!
            }
            if self.validStartDate != nil {
                map["ValidStartDate"] = self.validStartDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorizeDate") {
                self.authorizeDate = dict["AuthorizeDate"] as! String
            }
            if dict.keys.contains("AuthorizeDepartment") {
                self.authorizeDepartment = dict["AuthorizeDepartment"] as! String
            }
            if dict.keys.contains("CertNum") {
                self.certNum = dict["CertNum"] as! String
            }
            if dict.keys.contains("CertScope") {
                self.certScope = dict["CertScope"] as! String
            }
            if dict.keys.contains("CertType") {
                self.certType = dict["CertType"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("Province") {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("PubDate") {
                self.pubDate = dict["PubDate"] as! String
            }
            if dict.keys.contains("ValidEndDate") {
                self.validEndDate = dict["ValidEndDate"] as! String
            }
            if dict.keys.contains("ValidStartDate") {
                self.validStartDate = dict["ValidStartDate"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIpCertificateResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIpCertificateResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIpCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIpCertificateResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIpCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIpDomainRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIpDomainResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var checkDate: String?

        public var domain: String?

        public var entName: String?

        public var homeUrl: String?

        public var number: String?

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
            if self.checkDate != nil {
                map["CheckDate"] = self.checkDate!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.homeUrl != nil {
                map["HomeUrl"] = self.homeUrl!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.siteName != nil {
                map["SiteName"] = self.siteName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CheckDate") {
                self.checkDate = dict["CheckDate"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("HomeUrl") {
                self.homeUrl = dict["HomeUrl"] as! String
            }
            if dict.keys.contains("Number") {
                self.number = dict["Number"] as! String
            }
            if dict.keys.contains("SiteName") {
                self.siteName = dict["SiteName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIpDomainResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIpDomainResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIpDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIpDomainResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIpDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIpPatentRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIpPatentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agency: String?

        public var agent: String?

        public var brief: String?

        public var cateNum: String?

        public var entName: String?

        public var inventorList: String?

        public var mainClaim: String?

        public var patentName: String?

        public var patentStatus: String?

        public var patentType: String?

        public var patenteeList: String?

        public var prioDate: String?

        public var prioNum: String?

        public var publicDate: String?

        public var publicNum: String?

        public var requestDate: String?

        public var requestNum: String?

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
            if self.agency != nil {
                map["Agency"] = self.agency!
            }
            if self.agent != nil {
                map["Agent"] = self.agent!
            }
            if self.brief != nil {
                map["Brief"] = self.brief!
            }
            if self.cateNum != nil {
                map["CateNum"] = self.cateNum!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.inventorList != nil {
                map["InventorList"] = self.inventorList!
            }
            if self.mainClaim != nil {
                map["MainClaim"] = self.mainClaim!
            }
            if self.patentName != nil {
                map["PatentName"] = self.patentName!
            }
            if self.patentStatus != nil {
                map["PatentStatus"] = self.patentStatus!
            }
            if self.patentType != nil {
                map["PatentType"] = self.patentType!
            }
            if self.patenteeList != nil {
                map["PatenteeList"] = self.patenteeList!
            }
            if self.prioDate != nil {
                map["PrioDate"] = self.prioDate!
            }
            if self.prioNum != nil {
                map["PrioNum"] = self.prioNum!
            }
            if self.publicDate != nil {
                map["PublicDate"] = self.publicDate!
            }
            if self.publicNum != nil {
                map["PublicNum"] = self.publicNum!
            }
            if self.requestDate != nil {
                map["RequestDate"] = self.requestDate!
            }
            if self.requestNum != nil {
                map["RequestNum"] = self.requestNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Agency") {
                self.agency = dict["Agency"] as! String
            }
            if dict.keys.contains("Agent") {
                self.agent = dict["Agent"] as! String
            }
            if dict.keys.contains("Brief") {
                self.brief = dict["Brief"] as! String
            }
            if dict.keys.contains("CateNum") {
                self.cateNum = dict["CateNum"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("InventorList") {
                self.inventorList = dict["InventorList"] as! String
            }
            if dict.keys.contains("MainClaim") {
                self.mainClaim = dict["MainClaim"] as! String
            }
            if dict.keys.contains("PatentName") {
                self.patentName = dict["PatentName"] as! String
            }
            if dict.keys.contains("PatentStatus") {
                self.patentStatus = dict["PatentStatus"] as! String
            }
            if dict.keys.contains("PatentType") {
                self.patentType = dict["PatentType"] as! String
            }
            if dict.keys.contains("PatenteeList") {
                self.patenteeList = dict["PatenteeList"] as! String
            }
            if dict.keys.contains("PrioDate") {
                self.prioDate = dict["PrioDate"] as! String
            }
            if dict.keys.contains("PrioNum") {
                self.prioNum = dict["PrioNum"] as! String
            }
            if dict.keys.contains("PublicDate") {
                self.publicDate = dict["PublicDate"] as! String
            }
            if dict.keys.contains("PublicNum") {
                self.publicNum = dict["PublicNum"] as! String
            }
            if dict.keys.contains("RequestDate") {
                self.requestDate = dict["RequestDate"] as! String
            }
            if dict.keys.contains("RequestNum") {
                self.requestNum = dict["RequestNum"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIpPatentResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIpPatentResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIpPatentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIpPatentResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIpPatentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIpSoftwareCopyrightRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIpSoftwareCopyrightResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var approvalDate: String?

        public var copyName: String?

        public var copyNum: String?

        public var entName: String?

        public var firstDate: String?

        public var shortName: String?

        public var successDate: String?

        public var typeNum: String?

        public var version: String?

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
            if self.approvalDate != nil {
                map["ApprovalDate"] = self.approvalDate!
            }
            if self.copyName != nil {
                map["CopyName"] = self.copyName!
            }
            if self.copyNum != nil {
                map["CopyNum"] = self.copyNum!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.firstDate != nil {
                map["FirstDate"] = self.firstDate!
            }
            if self.shortName != nil {
                map["ShortName"] = self.shortName!
            }
            if self.successDate != nil {
                map["SuccessDate"] = self.successDate!
            }
            if self.typeNum != nil {
                map["TypeNum"] = self.typeNum!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalDate") {
                self.approvalDate = dict["ApprovalDate"] as! String
            }
            if dict.keys.contains("CopyName") {
                self.copyName = dict["CopyName"] as! String
            }
            if dict.keys.contains("CopyNum") {
                self.copyNum = dict["CopyNum"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("FirstDate") {
                self.firstDate = dict["FirstDate"] as! String
            }
            if dict.keys.contains("ShortName") {
                self.shortName = dict["ShortName"] as! String
            }
            if dict.keys.contains("SuccessDate") {
                self.successDate = dict["SuccessDate"] as! String
            }
            if dict.keys.contains("TypeNum") {
                self.typeNum = dict["TypeNum"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIpSoftwareCopyrightResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIpSoftwareCopyrightResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIpSoftwareCopyrightResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIpSoftwareCopyrightResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIpSoftwareCopyrightResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIpTrademarkRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIpTrademarkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agent: String?

        public var applyDate: String?

        public var entName: String?

        public var firstPubDate: String?

        public var firstPubNo: String?

        public var imageUrl: String?

        public var period: String?

        public var regNum: String?

        public var regPubDate: String?

        public var regPubNo: String?

        public var trademarkForm: String?

        public var trademarkName: String?

        public var trademarkStatus: String?

        public var trademarkType: String?

        public var typeName: String?

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
            if self.agent != nil {
                map["Agent"] = self.agent!
            }
            if self.applyDate != nil {
                map["ApplyDate"] = self.applyDate!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.firstPubDate != nil {
                map["FirstPubDate"] = self.firstPubDate!
            }
            if self.firstPubNo != nil {
                map["FirstPubNo"] = self.firstPubNo!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.regNum != nil {
                map["RegNum"] = self.regNum!
            }
            if self.regPubDate != nil {
                map["RegPubDate"] = self.regPubDate!
            }
            if self.regPubNo != nil {
                map["RegPubNo"] = self.regPubNo!
            }
            if self.trademarkForm != nil {
                map["TrademarkForm"] = self.trademarkForm!
            }
            if self.trademarkName != nil {
                map["TrademarkName"] = self.trademarkName!
            }
            if self.trademarkStatus != nil {
                map["TrademarkStatus"] = self.trademarkStatus!
            }
            if self.trademarkType != nil {
                map["TrademarkType"] = self.trademarkType!
            }
            if self.typeName != nil {
                map["TypeName"] = self.typeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Agent") {
                self.agent = dict["Agent"] as! String
            }
            if dict.keys.contains("ApplyDate") {
                self.applyDate = dict["ApplyDate"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("FirstPubDate") {
                self.firstPubDate = dict["FirstPubDate"] as! String
            }
            if dict.keys.contains("FirstPubNo") {
                self.firstPubNo = dict["FirstPubNo"] as! String
            }
            if dict.keys.contains("ImageUrl") {
                self.imageUrl = dict["ImageUrl"] as! String
            }
            if dict.keys.contains("Period") {
                self.period = dict["Period"] as! String
            }
            if dict.keys.contains("RegNum") {
                self.regNum = dict["RegNum"] as! String
            }
            if dict.keys.contains("RegPubDate") {
                self.regPubDate = dict["RegPubDate"] as! String
            }
            if dict.keys.contains("RegPubNo") {
                self.regPubNo = dict["RegPubNo"] as! String
            }
            if dict.keys.contains("TrademarkForm") {
                self.trademarkForm = dict["TrademarkForm"] as! String
            }
            if dict.keys.contains("TrademarkName") {
                self.trademarkName = dict["TrademarkName"] as! String
            }
            if dict.keys.contains("TrademarkStatus") {
                self.trademarkStatus = dict["TrademarkStatus"] as! String
            }
            if dict.keys.contains("TrademarkType") {
                self.trademarkType = dict["TrademarkType"] as! String
            }
            if dict.keys.contains("TypeName") {
                self.typeName = dict["TypeName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIpTrademarkResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIpTrademarkResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIpTrademarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIpTrademarkResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIpTrademarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcIpWorksCopyrightRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcIpWorksCopyrightResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var approvalDate: String?

        public var copyName: String?

        public var copyNum: String?

        public var entName: String?

        public var firstDate: String?

        public var successDate: String?

        public var typeName: String?

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
            if self.approvalDate != nil {
                map["ApprovalDate"] = self.approvalDate!
            }
            if self.copyName != nil {
                map["CopyName"] = self.copyName!
            }
            if self.copyNum != nil {
                map["CopyNum"] = self.copyNum!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.firstDate != nil {
                map["FirstDate"] = self.firstDate!
            }
            if self.successDate != nil {
                map["SuccessDate"] = self.successDate!
            }
            if self.typeName != nil {
                map["TypeName"] = self.typeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalDate") {
                self.approvalDate = dict["ApprovalDate"] as! String
            }
            if dict.keys.contains("CopyName") {
                self.copyName = dict["CopyName"] as! String
            }
            if dict.keys.contains("CopyNum") {
                self.copyNum = dict["CopyNum"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("FirstDate") {
                self.firstDate = dict["FirstDate"] as! String
            }
            if dict.keys.contains("SuccessDate") {
                self.successDate = dict["SuccessDate"] as! String
            }
            if dict.keys.contains("TypeName") {
                self.typeName = dict["TypeName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcIpWorksCopyrightResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcIpWorksCopyrightResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcIpWorksCopyrightResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcIpWorksCopyrightResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcIpWorksCopyrightResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcJusticeAuctionRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcJusticeAuctionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var auctionDate: String?

        public var auctionName: String?

        public var basis: String?

        public var certificate: String?

        public var court: String?

        public var description_: String?

        public var document: String?

        public var entName: String?

        public var estPrice: String?

        public var owner: String?

        public var restrict: String?

        public var startPrice: String?

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
            if self.auctionDate != nil {
                map["AuctionDate"] = self.auctionDate!
            }
            if self.auctionName != nil {
                map["AuctionName"] = self.auctionName!
            }
            if self.basis != nil {
                map["Basis"] = self.basis!
            }
            if self.certificate != nil {
                map["Certificate"] = self.certificate!
            }
            if self.court != nil {
                map["Court"] = self.court!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.document != nil {
                map["Document"] = self.document!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.estPrice != nil {
                map["EstPrice"] = self.estPrice!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.restrict != nil {
                map["Restrict"] = self.restrict!
            }
            if self.startPrice != nil {
                map["StartPrice"] = self.startPrice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuctionDate") {
                self.auctionDate = dict["AuctionDate"] as! String
            }
            if dict.keys.contains("AuctionName") {
                self.auctionName = dict["AuctionName"] as! String
            }
            if dict.keys.contains("Basis") {
                self.basis = dict["Basis"] as! String
            }
            if dict.keys.contains("Certificate") {
                self.certificate = dict["Certificate"] as! String
            }
            if dict.keys.contains("Court") {
                self.court = dict["Court"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Document") {
                self.document = dict["Document"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("EstPrice") {
                self.estPrice = dict["EstPrice"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("Restrict") {
                self.restrict = dict["Restrict"] as! String
            }
            if dict.keys.contains("StartPrice") {
                self.startPrice = dict["StartPrice"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcJusticeAuctionResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcJusticeAuctionResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcJusticeAuctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcJusticeAuctionResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcJusticeAuctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcJusticeCaseFilingRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcJusticeCaseFilingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var assistant: String?

        public var caseNum: String?

        public var caseStatus: String?

        public var causeAction: String?

        public var endDate: String?

        public var filingDate: String?

        public var hearingDate: String?

        public var judge: String?

        public var party: String?

        public var role: String?

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
            if self.assistant != nil {
                map["Assistant"] = self.assistant!
            }
            if self.caseNum != nil {
                map["CaseNum"] = self.caseNum!
            }
            if self.caseStatus != nil {
                map["CaseStatus"] = self.caseStatus!
            }
            if self.causeAction != nil {
                map["CauseAction"] = self.causeAction!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.filingDate != nil {
                map["FilingDate"] = self.filingDate!
            }
            if self.hearingDate != nil {
                map["HearingDate"] = self.hearingDate!
            }
            if self.judge != nil {
                map["Judge"] = self.judge!
            }
            if self.party != nil {
                map["Party"] = self.party!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Assistant") {
                self.assistant = dict["Assistant"] as! String
            }
            if dict.keys.contains("CaseNum") {
                self.caseNum = dict["CaseNum"] as! String
            }
            if dict.keys.contains("CaseStatus") {
                self.caseStatus = dict["CaseStatus"] as! String
            }
            if dict.keys.contains("CauseAction") {
                self.causeAction = dict["CauseAction"] as! String
            }
            if dict.keys.contains("EndDate") {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("FilingDate") {
                self.filingDate = dict["FilingDate"] as! String
            }
            if dict.keys.contains("HearingDate") {
                self.hearingDate = dict["HearingDate"] as! String
            }
            if dict.keys.contains("Judge") {
                self.judge = dict["Judge"] as! String
            }
            if dict.keys.contains("Party") {
                self.party = dict["Party"] as! String
            }
            if dict.keys.contains("Role") {
                self.role = dict["Role"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcJusticeCaseFilingResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcJusticeCaseFilingResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcJusticeCaseFilingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcJusticeCaseFilingResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcJusticeCaseFilingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcJusticeCourtAnnouncementRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcJusticeCourtAnnouncementResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var caseNum: String?

        public var causeAction: String?

        public var court: String?

        public var department: String?

        public var hearingDate: String?

        public var judge: String?

        public var party: String?

        public var title: String?

        public var tribunal: String?

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
            if self.caseNum != nil {
                map["CaseNum"] = self.caseNum!
            }
            if self.causeAction != nil {
                map["CauseAction"] = self.causeAction!
            }
            if self.court != nil {
                map["Court"] = self.court!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.hearingDate != nil {
                map["HearingDate"] = self.hearingDate!
            }
            if self.judge != nil {
                map["Judge"] = self.judge!
            }
            if self.party != nil {
                map["Party"] = self.party!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.tribunal != nil {
                map["Tribunal"] = self.tribunal!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CaseNum") {
                self.caseNum = dict["CaseNum"] as! String
            }
            if dict.keys.contains("CauseAction") {
                self.causeAction = dict["CauseAction"] as! String
            }
            if dict.keys.contains("Court") {
                self.court = dict["Court"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("HearingDate") {
                self.hearingDate = dict["HearingDate"] as! String
            }
            if dict.keys.contains("Judge") {
                self.judge = dict["Judge"] as! String
            }
            if dict.keys.contains("Party") {
                self.party = dict["Party"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Tribunal") {
                self.tribunal = dict["Tribunal"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcJusticeCourtAnnouncementResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcJusticeCourtAnnouncementResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcJusticeCourtAnnouncementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcJusticeCourtAnnouncementResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcJusticeCourtAnnouncementResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcJusticeCourtNoticeRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcJusticeCourtNoticeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var court: String?

        public var party: String?

        public var publicDate: String?

        public var type: String?

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
            if self.court != nil {
                map["Court"] = self.court!
            }
            if self.party != nil {
                map["Party"] = self.party!
            }
            if self.publicDate != nil {
                map["PublicDate"] = self.publicDate!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Court") {
                self.court = dict["Court"] as! String
            }
            if dict.keys.contains("Party") {
                self.party = dict["Party"] as! String
            }
            if dict.keys.contains("PublicDate") {
                self.publicDate = dict["PublicDate"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcJusticeCourtNoticeResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcJusticeCourtNoticeResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcJusticeCourtNoticeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcJusticeCourtNoticeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcJusticeCourtNoticeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcJusticeDishonestyRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcJusticeDishonestyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var amount: String?

        public var caseNum: String?

        public var court: String?

        public var entName: String?

        public var executeDepartment: String?

        public var executionDesc: String?

        public var executionStatus: String?

        public var filingDate: String?

        public var finalDuty: String?

        public var fromCaseNum: String?

        public var legalName: String?

        public var province: String?

        public var publishDate: String?

        public var socialCreditCode: String?

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
            if self.caseNum != nil {
                map["CaseNum"] = self.caseNum!
            }
            if self.court != nil {
                map["Court"] = self.court!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.executeDepartment != nil {
                map["ExecuteDepartment"] = self.executeDepartment!
            }
            if self.executionDesc != nil {
                map["ExecutionDesc"] = self.executionDesc!
            }
            if self.executionStatus != nil {
                map["ExecutionStatus"] = self.executionStatus!
            }
            if self.filingDate != nil {
                map["FilingDate"] = self.filingDate!
            }
            if self.finalDuty != nil {
                map["FinalDuty"] = self.finalDuty!
            }
            if self.fromCaseNum != nil {
                map["FromCaseNum"] = self.fromCaseNum!
            }
            if self.legalName != nil {
                map["LegalName"] = self.legalName!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.publishDate != nil {
                map["PublishDate"] = self.publishDate!
            }
            if self.socialCreditCode != nil {
                map["SocialCreditCode"] = self.socialCreditCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") {
                self.amount = dict["Amount"] as! String
            }
            if dict.keys.contains("CaseNum") {
                self.caseNum = dict["CaseNum"] as! String
            }
            if dict.keys.contains("Court") {
                self.court = dict["Court"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("ExecuteDepartment") {
                self.executeDepartment = dict["ExecuteDepartment"] as! String
            }
            if dict.keys.contains("ExecutionDesc") {
                self.executionDesc = dict["ExecutionDesc"] as! String
            }
            if dict.keys.contains("ExecutionStatus") {
                self.executionStatus = dict["ExecutionStatus"] as! String
            }
            if dict.keys.contains("FilingDate") {
                self.filingDate = dict["FilingDate"] as! String
            }
            if dict.keys.contains("FinalDuty") {
                self.finalDuty = dict["FinalDuty"] as! String
            }
            if dict.keys.contains("FromCaseNum") {
                self.fromCaseNum = dict["FromCaseNum"] as! String
            }
            if dict.keys.contains("LegalName") {
                self.legalName = dict["LegalName"] as! String
            }
            if dict.keys.contains("Province") {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("PublishDate") {
                self.publishDate = dict["PublishDate"] as! String
            }
            if dict.keys.contains("SocialCreditCode") {
                self.socialCreditCode = dict["SocialCreditCode"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcJusticeDishonestyResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcJusticeDishonestyResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcJusticeDishonestyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcJusticeDishonestyResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcJusticeDishonestyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcJusticeExecutedRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcJusticeExecutedResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var amount: String?

        public var caseNum: String?

        public var court: String?

        public var filingDate: String?

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
            if self.caseNum != nil {
                map["CaseNum"] = self.caseNum!
            }
            if self.court != nil {
                map["Court"] = self.court!
            }
            if self.filingDate != nil {
                map["FilingDate"] = self.filingDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") {
                self.amount = dict["Amount"] as! String
            }
            if dict.keys.contains("CaseNum") {
                self.caseNum = dict["CaseNum"] as! String
            }
            if dict.keys.contains("Court") {
                self.court = dict["Court"] as! String
            }
            if dict.keys.contains("FilingDate") {
                self.filingDate = dict["FilingDate"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcJusticeExecutedResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcJusticeExecutedResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcJusticeExecutedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcJusticeExecutedResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcJusticeExecutedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcJusticeJudgementDocRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcJusticeJudgementDocResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var caseFlow: String?

        public var caseNum: String?

        public var caseType: String?

        public var causeAction: String?

        public var court: String?

        public var defendant: String?

        public var judgeDate: String?

        public var judgeResult: String?

        public var judgeType: String?

        public var party: String?

        public var plaintiff: String?

        public var publicDate: String?

        public var role: String?

        public var subAmount: String?

        public var title: String?

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
            if self.caseFlow != nil {
                map["CaseFlow"] = self.caseFlow!
            }
            if self.caseNum != nil {
                map["CaseNum"] = self.caseNum!
            }
            if self.caseType != nil {
                map["CaseType"] = self.caseType!
            }
            if self.causeAction != nil {
                map["CauseAction"] = self.causeAction!
            }
            if self.court != nil {
                map["Court"] = self.court!
            }
            if self.defendant != nil {
                map["Defendant"] = self.defendant!
            }
            if self.judgeDate != nil {
                map["JudgeDate"] = self.judgeDate!
            }
            if self.judgeResult != nil {
                map["JudgeResult"] = self.judgeResult!
            }
            if self.judgeType != nil {
                map["JudgeType"] = self.judgeType!
            }
            if self.party != nil {
                map["Party"] = self.party!
            }
            if self.plaintiff != nil {
                map["Plaintiff"] = self.plaintiff!
            }
            if self.publicDate != nil {
                map["PublicDate"] = self.publicDate!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.subAmount != nil {
                map["SubAmount"] = self.subAmount!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CaseFlow") {
                self.caseFlow = dict["CaseFlow"] as! String
            }
            if dict.keys.contains("CaseNum") {
                self.caseNum = dict["CaseNum"] as! String
            }
            if dict.keys.contains("CaseType") {
                self.caseType = dict["CaseType"] as! String
            }
            if dict.keys.contains("CauseAction") {
                self.causeAction = dict["CauseAction"] as! String
            }
            if dict.keys.contains("Court") {
                self.court = dict["Court"] as! String
            }
            if dict.keys.contains("Defendant") {
                self.defendant = dict["Defendant"] as! String
            }
            if dict.keys.contains("JudgeDate") {
                self.judgeDate = dict["JudgeDate"] as! String
            }
            if dict.keys.contains("JudgeResult") {
                self.judgeResult = dict["JudgeResult"] as! String
            }
            if dict.keys.contains("JudgeType") {
                self.judgeType = dict["JudgeType"] as! String
            }
            if dict.keys.contains("Party") {
                self.party = dict["Party"] as! String
            }
            if dict.keys.contains("Plaintiff") {
                self.plaintiff = dict["Plaintiff"] as! String
            }
            if dict.keys.contains("PublicDate") {
                self.publicDate = dict["PublicDate"] as! String
            }
            if dict.keys.contains("Role") {
                self.role = dict["Role"] as! String
            }
            if dict.keys.contains("SubAmount") {
                self.subAmount = dict["SubAmount"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcJusticeJudgementDocResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcJusticeJudgementDocResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcJusticeJudgementDocResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcJusticeJudgementDocResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcJusticeJudgementDocResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcJusticeLimitHighConsumeRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcJusticeLimitHighConsumeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var caseNum: String?

        public var causeAction: String?

        public var companyName: String?

        public var court: String?

        public var executionApplicant: String?

        public var filingDate: String?

        public var name: String?

        public var publishDate: String?

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
            if self.caseNum != nil {
                map["CaseNum"] = self.caseNum!
            }
            if self.causeAction != nil {
                map["CauseAction"] = self.causeAction!
            }
            if self.companyName != nil {
                map["CompanyName"] = self.companyName!
            }
            if self.court != nil {
                map["Court"] = self.court!
            }
            if self.executionApplicant != nil {
                map["ExecutionApplicant"] = self.executionApplicant!
            }
            if self.filingDate != nil {
                map["FilingDate"] = self.filingDate!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.publishDate != nil {
                map["PublishDate"] = self.publishDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CaseNum") {
                self.caseNum = dict["CaseNum"] as! String
            }
            if dict.keys.contains("CauseAction") {
                self.causeAction = dict["CauseAction"] as! String
            }
            if dict.keys.contains("CompanyName") {
                self.companyName = dict["CompanyName"] as! String
            }
            if dict.keys.contains("Court") {
                self.court = dict["Court"] as! String
            }
            if dict.keys.contains("ExecutionApplicant") {
                self.executionApplicant = dict["ExecutionApplicant"] as! String
            }
            if dict.keys.contains("FilingDate") {
                self.filingDate = dict["FilingDate"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PublishDate") {
                self.publishDate = dict["PublishDate"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcJusticeLimitHighConsumeResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcJusticeLimitHighConsumeResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcJusticeLimitHighConsumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcJusticeLimitHighConsumeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcJusticeLimitHighConsumeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcJusticeTerminalCaseRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcJusticeTerminalCaseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var caseNum: String?

        public var court: String?

        public var entName: String?

        public var execAmount: String?

        public var failPerformAmount: String?

        public var filingDate: String?

        public var name: String?

        public var terminalNum: String?

        public var terminateDate: String?

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
            if self.caseNum != nil {
                map["CaseNum"] = self.caseNum!
            }
            if self.court != nil {
                map["Court"] = self.court!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.execAmount != nil {
                map["ExecAmount"] = self.execAmount!
            }
            if self.failPerformAmount != nil {
                map["FailPerformAmount"] = self.failPerformAmount!
            }
            if self.filingDate != nil {
                map["FilingDate"] = self.filingDate!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.terminalNum != nil {
                map["TerminalNum"] = self.terminalNum!
            }
            if self.terminateDate != nil {
                map["TerminateDate"] = self.terminateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CaseNum") {
                self.caseNum = dict["CaseNum"] as! String
            }
            if dict.keys.contains("Court") {
                self.court = dict["Court"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("ExecAmount") {
                self.execAmount = dict["ExecAmount"] as! String
            }
            if dict.keys.contains("FailPerformAmount") {
                self.failPerformAmount = dict["FailPerformAmount"] as! String
            }
            if dict.keys.contains("FilingDate") {
                self.filingDate = dict["FilingDate"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("TerminalNum") {
                self.terminalNum = dict["TerminalNum"] as! String
            }
            if dict.keys.contains("TerminateDate") {
                self.terminateDate = dict["TerminateDate"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcJusticeTerminalCaseResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcJusticeTerminalCaseResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcJusticeTerminalCaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcJusticeTerminalCaseResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcJusticeTerminalCaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcListedCompanyRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcListedCompanyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var circulationMarketValue: String?

        public var entName: String?

        public var entNameEng: String?

        public var listDate: String?

        public var securitiesCode: String?

        public var securitiesMarket: String?

        public var securitiesName: String?

        public var totalFlowShares: String?

        public var totalShares: String?

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
            if self.circulationMarketValue != nil {
                map["CirculationMarketValue"] = self.circulationMarketValue!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.entNameEng != nil {
                map["EntNameEng"] = self.entNameEng!
            }
            if self.listDate != nil {
                map["ListDate"] = self.listDate!
            }
            if self.securitiesCode != nil {
                map["SecuritiesCode"] = self.securitiesCode!
            }
            if self.securitiesMarket != nil {
                map["SecuritiesMarket"] = self.securitiesMarket!
            }
            if self.securitiesName != nil {
                map["SecuritiesName"] = self.securitiesName!
            }
            if self.totalFlowShares != nil {
                map["TotalFlowShares"] = self.totalFlowShares!
            }
            if self.totalShares != nil {
                map["TotalShares"] = self.totalShares!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CirculationMarketValue") {
                self.circulationMarketValue = dict["CirculationMarketValue"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("EntNameEng") {
                self.entNameEng = dict["EntNameEng"] as! String
            }
            if dict.keys.contains("ListDate") {
                self.listDate = dict["ListDate"] as! String
            }
            if dict.keys.contains("SecuritiesCode") {
                self.securitiesCode = dict["SecuritiesCode"] as! String
            }
            if dict.keys.contains("SecuritiesMarket") {
                self.securitiesMarket = dict["SecuritiesMarket"] as! String
            }
            if dict.keys.contains("SecuritiesName") {
                self.securitiesName = dict["SecuritiesName"] as! String
            }
            if dict.keys.contains("TotalFlowShares") {
                self.totalFlowShares = dict["TotalFlowShares"] as! String
            }
            if dict.keys.contains("TotalShares") {
                self.totalShares = dict["TotalShares"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcListedCompanyResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcListedCompanyResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcListedCompanyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcListedCompanyResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcListedCompanyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcNegativeAdminPunishmentRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcNegativeAdminPunishmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var department: String?

        public var entName: String?

        public var illegalType: String?

        public var lawBasis: String?

        public var publicDate: String?

        public var punishDate: String?

        public var punishNum: String?

        public var punishResult: String?

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
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.illegalType != nil {
                map["IllegalType"] = self.illegalType!
            }
            if self.lawBasis != nil {
                map["LawBasis"] = self.lawBasis!
            }
            if self.publicDate != nil {
                map["PublicDate"] = self.publicDate!
            }
            if self.punishDate != nil {
                map["PunishDate"] = self.punishDate!
            }
            if self.punishNum != nil {
                map["PunishNum"] = self.punishNum!
            }
            if self.punishResult != nil {
                map["PunishResult"] = self.punishResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("IllegalType") {
                self.illegalType = dict["IllegalType"] as! String
            }
            if dict.keys.contains("LawBasis") {
                self.lawBasis = dict["LawBasis"] as! String
            }
            if dict.keys.contains("PublicDate") {
                self.publicDate = dict["PublicDate"] as! String
            }
            if dict.keys.contains("PunishDate") {
                self.punishDate = dict["PunishDate"] as! String
            }
            if dict.keys.contains("PunishNum") {
                self.punishNum = dict["PunishNum"] as! String
            }
            if dict.keys.contains("PunishResult") {
                self.punishResult = dict["PunishResult"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcNegativeAdminPunishmentResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcNegativeAdminPunishmentResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcNegativeAdminPunishmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcNegativeAdminPunishmentResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcNegativeAdminPunishmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcNegativeCustomsPunishmentRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcNegativeCustomsPunishmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var basis: String?

        public var caseNo: String?

        public var customs: String?

        public var customsNo: String?

        public var legalName: String?

        public var punishDate: String?

        public var punishType: String?

        public var title: String?

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
            if self.basis != nil {
                map["Basis"] = self.basis!
            }
            if self.caseNo != nil {
                map["CaseNo"] = self.caseNo!
            }
            if self.customs != nil {
                map["Customs"] = self.customs!
            }
            if self.customsNo != nil {
                map["CustomsNo"] = self.customsNo!
            }
            if self.legalName != nil {
                map["LegalName"] = self.legalName!
            }
            if self.punishDate != nil {
                map["PunishDate"] = self.punishDate!
            }
            if self.punishType != nil {
                map["PunishType"] = self.punishType!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Basis") {
                self.basis = dict["Basis"] as! String
            }
            if dict.keys.contains("CaseNo") {
                self.caseNo = dict["CaseNo"] as! String
            }
            if dict.keys.contains("Customs") {
                self.customs = dict["Customs"] as! String
            }
            if dict.keys.contains("CustomsNo") {
                self.customsNo = dict["CustomsNo"] as! String
            }
            if dict.keys.contains("LegalName") {
                self.legalName = dict["LegalName"] as! String
            }
            if dict.keys.contains("PunishDate") {
                self.punishDate = dict["PunishDate"] as! String
            }
            if dict.keys.contains("PunishType") {
                self.punishType = dict["PunishType"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcNegativeCustomsPunishmentResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcNegativeCustomsPunishmentResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcNegativeCustomsPunishmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcNegativeCustomsPunishmentResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcNegativeCustomsPunishmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcNegativeEnvironmentPunishmentRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcNegativeEnvironmentPunishmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var department: String?

        public var entName: String?

        public var execStatus: String?

        public var punishBasis: String?

        public var punishContent: String?

        public var punishDate: String?

        public var punishLaw: String?

        public var punishNum: String?

        public var punishRes: String?

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
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.execStatus != nil {
                map["ExecStatus"] = self.execStatus!
            }
            if self.punishBasis != nil {
                map["PunishBasis"] = self.punishBasis!
            }
            if self.punishContent != nil {
                map["PunishContent"] = self.punishContent!
            }
            if self.punishDate != nil {
                map["PunishDate"] = self.punishDate!
            }
            if self.punishLaw != nil {
                map["PunishLaw"] = self.punishLaw!
            }
            if self.punishNum != nil {
                map["PunishNum"] = self.punishNum!
            }
            if self.punishRes != nil {
                map["PunishRes"] = self.punishRes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("ExecStatus") {
                self.execStatus = dict["ExecStatus"] as! String
            }
            if dict.keys.contains("PunishBasis") {
                self.punishBasis = dict["PunishBasis"] as! String
            }
            if dict.keys.contains("PunishContent") {
                self.punishContent = dict["PunishContent"] as! String
            }
            if dict.keys.contains("PunishDate") {
                self.punishDate = dict["PunishDate"] as! String
            }
            if dict.keys.contains("PunishLaw") {
                self.punishLaw = dict["PunishLaw"] as! String
            }
            if dict.keys.contains("PunishNum") {
                self.punishNum = dict["PunishNum"] as! String
            }
            if dict.keys.contains("PunishRes") {
                self.punishRes = dict["PunishRes"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcNegativeEnvironmentPunishmentResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcNegativeEnvironmentPunishmentResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcNegativeEnvironmentPunishmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcNegativeEnvironmentPunishmentResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcNegativeEnvironmentPunishmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcNegativeFoodDrugPunishmentRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcNegativeFoodDrugPunishmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var department: String?

        public var entName: String?

        public var illegalType: String?

        public var lawBasis: String?

        public var publicDate: String?

        public var punishDate: String?

        public var punishNum: String?

        public var punishResult: String?

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
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.illegalType != nil {
                map["IllegalType"] = self.illegalType!
            }
            if self.lawBasis != nil {
                map["LawBasis"] = self.lawBasis!
            }
            if self.publicDate != nil {
                map["PublicDate"] = self.publicDate!
            }
            if self.punishDate != nil {
                map["PunishDate"] = self.punishDate!
            }
            if self.punishNum != nil {
                map["PunishNum"] = self.punishNum!
            }
            if self.punishResult != nil {
                map["PunishResult"] = self.punishResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("IllegalType") {
                self.illegalType = dict["IllegalType"] as! String
            }
            if dict.keys.contains("LawBasis") {
                self.lawBasis = dict["LawBasis"] as! String
            }
            if dict.keys.contains("PublicDate") {
                self.publicDate = dict["PublicDate"] as! String
            }
            if dict.keys.contains("PunishDate") {
                self.punishDate = dict["PunishDate"] as! String
            }
            if dict.keys.contains("PunishNum") {
                self.punishNum = dict["PunishNum"] as! String
            }
            if dict.keys.contains("PunishResult") {
                self.punishResult = dict["PunishResult"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcNegativeFoodDrugPunishmentResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcNegativeFoodDrugPunishmentResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcNegativeFoodDrugPunishmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcNegativeFoodDrugPunishmentResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcNegativeFoodDrugPunishmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcNegativeQualityPunishmentRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcNegativeQualityPunishmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var department: String?

        public var entName: String?

        public var eventDate: String?

        public var eventResult: String?

        public var pubDate: String?

        public var title: String?

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
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.eventDate != nil {
                map["EventDate"] = self.eventDate!
            }
            if self.eventResult != nil {
                map["EventResult"] = self.eventResult!
            }
            if self.pubDate != nil {
                map["PubDate"] = self.pubDate!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("EventDate") {
                self.eventDate = dict["EventDate"] as! String
            }
            if dict.keys.contains("EventResult") {
                self.eventResult = dict["EventResult"] as! String
            }
            if dict.keys.contains("PubDate") {
                self.pubDate = dict["PubDate"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcNegativeQualityPunishmentResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcNegativeQualityPunishmentResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcNegativeQualityPunishmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcNegativeQualityPunishmentResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcNegativeQualityPunishmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcOperationBiddingRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcOperationBiddingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentEntName: String?

        public var bidIndustry: String?

        public var bidTitle: String?

        public var bidType: String?

        public var content: String?

        public var entName: String?

        public var infoType: String?

        public var openingTime: String?

        public var projectAmount: String?

        public var projectName: String?

        public var projectNum: String?

        public var publicDate: String?

        public var regionName: String?

        public var subType: String?

        public var tenderEntName: String?

        public var winnerEntName: String?

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
            if self.agentEntName != nil {
                map["AgentEntName"] = self.agentEntName!
            }
            if self.bidIndustry != nil {
                map["BidIndustry"] = self.bidIndustry!
            }
            if self.bidTitle != nil {
                map["BidTitle"] = self.bidTitle!
            }
            if self.bidType != nil {
                map["BidType"] = self.bidType!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.infoType != nil {
                map["InfoType"] = self.infoType!
            }
            if self.openingTime != nil {
                map["OpeningTime"] = self.openingTime!
            }
            if self.projectAmount != nil {
                map["ProjectAmount"] = self.projectAmount!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.projectNum != nil {
                map["ProjectNum"] = self.projectNum!
            }
            if self.publicDate != nil {
                map["PublicDate"] = self.publicDate!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            if self.tenderEntName != nil {
                map["TenderEntName"] = self.tenderEntName!
            }
            if self.winnerEntName != nil {
                map["WinnerEntName"] = self.winnerEntName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentEntName") {
                self.agentEntName = dict["AgentEntName"] as! String
            }
            if dict.keys.contains("BidIndustry") {
                self.bidIndustry = dict["BidIndustry"] as! String
            }
            if dict.keys.contains("BidTitle") {
                self.bidTitle = dict["BidTitle"] as! String
            }
            if dict.keys.contains("BidType") {
                self.bidType = dict["BidType"] as! String
            }
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("InfoType") {
                self.infoType = dict["InfoType"] as! String
            }
            if dict.keys.contains("OpeningTime") {
                self.openingTime = dict["OpeningTime"] as! String
            }
            if dict.keys.contains("ProjectAmount") {
                self.projectAmount = dict["ProjectAmount"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("ProjectNum") {
                self.projectNum = dict["ProjectNum"] as! String
            }
            if dict.keys.contains("PublicDate") {
                self.publicDate = dict["PublicDate"] as! String
            }
            if dict.keys.contains("RegionName") {
                self.regionName = dict["RegionName"] as! String
            }
            if dict.keys.contains("SubType") {
                self.subType = dict["SubType"] as! String
            }
            if dict.keys.contains("TenderEntName") {
                self.tenderEntName = dict["TenderEntName"] as! String
            }
            if dict.keys.contains("WinnerEntName") {
                self.winnerEntName = dict["WinnerEntName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcOperationBiddingResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcOperationBiddingResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcOperationBiddingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcOperationBiddingResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcOperationBiddingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcOperationCustomsRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcOperationCustomsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var adminRegionName: String?

        public var annualReport: String?

        public var businessCate: String?

        public var cancelFlag: String?

        public var creditLevelsNew: String?

        public var customsNum: String?

        public var customsReg: String?

        public var ecoRegionName: String?

        public var electType: String?

        public var entName: String?

        public var identCode: String?

        public var identDate: String?

        public var industryType: String?

        public var regDate: String?

        public var specialArea: String?

        public var validDate: String?

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
            if self.adminRegionName != nil {
                map["AdminRegionName"] = self.adminRegionName!
            }
            if self.annualReport != nil {
                map["AnnualReport"] = self.annualReport!
            }
            if self.businessCate != nil {
                map["BusinessCate"] = self.businessCate!
            }
            if self.cancelFlag != nil {
                map["CancelFlag"] = self.cancelFlag!
            }
            if self.creditLevelsNew != nil {
                map["CreditLevelsNew"] = self.creditLevelsNew!
            }
            if self.customsNum != nil {
                map["CustomsNum"] = self.customsNum!
            }
            if self.customsReg != nil {
                map["CustomsReg"] = self.customsReg!
            }
            if self.ecoRegionName != nil {
                map["EcoRegionName"] = self.ecoRegionName!
            }
            if self.electType != nil {
                map["ElectType"] = self.electType!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.identCode != nil {
                map["IdentCode"] = self.identCode!
            }
            if self.identDate != nil {
                map["IdentDate"] = self.identDate!
            }
            if self.industryType != nil {
                map["IndustryType"] = self.industryType!
            }
            if self.regDate != nil {
                map["RegDate"] = self.regDate!
            }
            if self.specialArea != nil {
                map["SpecialArea"] = self.specialArea!
            }
            if self.validDate != nil {
                map["ValidDate"] = self.validDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdminRegionName") {
                self.adminRegionName = dict["AdminRegionName"] as! String
            }
            if dict.keys.contains("AnnualReport") {
                self.annualReport = dict["AnnualReport"] as! String
            }
            if dict.keys.contains("BusinessCate") {
                self.businessCate = dict["BusinessCate"] as! String
            }
            if dict.keys.contains("CancelFlag") {
                self.cancelFlag = dict["CancelFlag"] as! String
            }
            if dict.keys.contains("CreditLevelsNew") {
                self.creditLevelsNew = dict["CreditLevelsNew"] as! String
            }
            if dict.keys.contains("CustomsNum") {
                self.customsNum = dict["CustomsNum"] as! String
            }
            if dict.keys.contains("CustomsReg") {
                self.customsReg = dict["CustomsReg"] as! String
            }
            if dict.keys.contains("EcoRegionName") {
                self.ecoRegionName = dict["EcoRegionName"] as! String
            }
            if dict.keys.contains("ElectType") {
                self.electType = dict["ElectType"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("IdentCode") {
                self.identCode = dict["IdentCode"] as! String
            }
            if dict.keys.contains("IdentDate") {
                self.identDate = dict["IdentDate"] as! String
            }
            if dict.keys.contains("IndustryType") {
                self.industryType = dict["IndustryType"] as! String
            }
            if dict.keys.contains("RegDate") {
                self.regDate = dict["RegDate"] as! String
            }
            if dict.keys.contains("SpecialArea") {
                self.specialArea = dict["SpecialArea"] as! String
            }
            if dict.keys.contains("ValidDate") {
                self.validDate = dict["ValidDate"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcOperationCustomsResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcOperationCustomsResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcOperationCustomsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcOperationCustomsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcOperationCustomsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcOperationPurchaseLandRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcOperationPurchaseLandResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var area: String?

        public var department: String?

        public var electronicNo: String?

        public var entName: String?

        public var industry: String?

        public var landLevel: String?

        public var landSource: String?

        public var landUse: String?

        public var location: String?

        public var price: String?

        public var projectName: String?

        public var promiseDeliveryDate: String?

        public var promiseEndDate: String?

        public var promiseStartDate: String?

        public var regionName: String?

        public var releaseDate: String?

        public var signingMode: String?

        public var useYear: String?

        public var volumeFractionLowerBound: String?

        public var volumeFractionUpperBound: String?

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
            if self.area != nil {
                map["Area"] = self.area!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.electronicNo != nil {
                map["ElectronicNo"] = self.electronicNo!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.industry != nil {
                map["Industry"] = self.industry!
            }
            if self.landLevel != nil {
                map["LandLevel"] = self.landLevel!
            }
            if self.landSource != nil {
                map["LandSource"] = self.landSource!
            }
            if self.landUse != nil {
                map["LandUse"] = self.landUse!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            if self.projectName != nil {
                map["ProjectName"] = self.projectName!
            }
            if self.promiseDeliveryDate != nil {
                map["PromiseDeliveryDate"] = self.promiseDeliveryDate!
            }
            if self.promiseEndDate != nil {
                map["PromiseEndDate"] = self.promiseEndDate!
            }
            if self.promiseStartDate != nil {
                map["PromiseStartDate"] = self.promiseStartDate!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            if self.releaseDate != nil {
                map["ReleaseDate"] = self.releaseDate!
            }
            if self.signingMode != nil {
                map["SigningMode"] = self.signingMode!
            }
            if self.useYear != nil {
                map["UseYear"] = self.useYear!
            }
            if self.volumeFractionLowerBound != nil {
                map["VolumeFractionLowerBound"] = self.volumeFractionLowerBound!
            }
            if self.volumeFractionUpperBound != nil {
                map["VolumeFractionUpperBound"] = self.volumeFractionUpperBound!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Area") {
                self.area = dict["Area"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("ElectronicNo") {
                self.electronicNo = dict["ElectronicNo"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("Industry") {
                self.industry = dict["Industry"] as! String
            }
            if dict.keys.contains("LandLevel") {
                self.landLevel = dict["LandLevel"] as! String
            }
            if dict.keys.contains("LandSource") {
                self.landSource = dict["LandSource"] as! String
            }
            if dict.keys.contains("LandUse") {
                self.landUse = dict["LandUse"] as! String
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Price") {
                self.price = dict["Price"] as! String
            }
            if dict.keys.contains("ProjectName") {
                self.projectName = dict["ProjectName"] as! String
            }
            if dict.keys.contains("PromiseDeliveryDate") {
                self.promiseDeliveryDate = dict["PromiseDeliveryDate"] as! String
            }
            if dict.keys.contains("PromiseEndDate") {
                self.promiseEndDate = dict["PromiseEndDate"] as! String
            }
            if dict.keys.contains("PromiseStartDate") {
                self.promiseStartDate = dict["PromiseStartDate"] as! String
            }
            if dict.keys.contains("RegionName") {
                self.regionName = dict["RegionName"] as! String
            }
            if dict.keys.contains("ReleaseDate") {
                self.releaseDate = dict["ReleaseDate"] as! String
            }
            if dict.keys.contains("SigningMode") {
                self.signingMode = dict["SigningMode"] as! String
            }
            if dict.keys.contains("UseYear") {
                self.useYear = dict["UseYear"] as! String
            }
            if dict.keys.contains("VolumeFractionLowerBound") {
                self.volumeFractionLowerBound = dict["VolumeFractionLowerBound"] as! String
            }
            if dict.keys.contains("VolumeFractionUpperBound") {
                self.volumeFractionUpperBound = dict["VolumeFractionUpperBound"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcOperationPurchaseLandResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcOperationPurchaseLandResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcOperationPurchaseLandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcOperationPurchaseLandResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcOperationPurchaseLandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcOperationRecruitmentRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcOperationRecruitmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var benefitList: String?

        public var description_: String?

        public var education: String?

        public var endDate: String?

        public var entName: String?

        public var experience: String?

        public var pageUrl: String?

        public var publishDate: String?

        public var recruitingAddress: String?

        public var recruitingName: String?

        public var salary: String?

        public var startDate: String?

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
            if self.benefitList != nil {
                map["BenefitList"] = self.benefitList!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.education != nil {
                map["Education"] = self.education!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.experience != nil {
                map["Experience"] = self.experience!
            }
            if self.pageUrl != nil {
                map["PageUrl"] = self.pageUrl!
            }
            if self.publishDate != nil {
                map["PublishDate"] = self.publishDate!
            }
            if self.recruitingAddress != nil {
                map["RecruitingAddress"] = self.recruitingAddress!
            }
            if self.recruitingName != nil {
                map["RecruitingName"] = self.recruitingName!
            }
            if self.salary != nil {
                map["Salary"] = self.salary!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BenefitList") {
                self.benefitList = dict["BenefitList"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Education") {
                self.education = dict["Education"] as! String
            }
            if dict.keys.contains("EndDate") {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("Experience") {
                self.experience = dict["Experience"] as! String
            }
            if dict.keys.contains("PageUrl") {
                self.pageUrl = dict["PageUrl"] as! String
            }
            if dict.keys.contains("PublishDate") {
                self.publishDate = dict["PublishDate"] as! String
            }
            if dict.keys.contains("RecruitingAddress") {
                self.recruitingAddress = dict["RecruitingAddress"] as! String
            }
            if dict.keys.contains("RecruitingName") {
                self.recruitingName = dict["RecruitingName"] as! String
            }
            if dict.keys.contains("Salary") {
                self.salary = dict["Salary"] as! String
            }
            if dict.keys.contains("StartDate") {
                self.startDate = dict["StartDate"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcOperationRecruitmentResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcOperationRecruitmentResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcOperationRecruitmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcOperationRecruitmentResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcOperationRecruitmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcProductBandRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcProductBandResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var brandIntroduction: String?

        public var device: String?

        public var entName: String?

        public var productIntroduction: String?

        public var productLogo: String?

        public var productName: String?

        public var productTag: String?

        public var productWebsite: String?

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
            if self.brandIntroduction != nil {
                map["BrandIntroduction"] = self.brandIntroduction!
            }
            if self.device != nil {
                map["Device"] = self.device!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.productIntroduction != nil {
                map["ProductIntroduction"] = self.productIntroduction!
            }
            if self.productLogo != nil {
                map["ProductLogo"] = self.productLogo!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.productTag != nil {
                map["ProductTag"] = self.productTag!
            }
            if self.productWebsite != nil {
                map["ProductWebsite"] = self.productWebsite!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BrandIntroduction") {
                self.brandIntroduction = dict["BrandIntroduction"] as! String
            }
            if dict.keys.contains("Device") {
                self.device = dict["Device"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("ProductIntroduction") {
                self.productIntroduction = dict["ProductIntroduction"] as! String
            }
            if dict.keys.contains("ProductLogo") {
                self.productLogo = dict["ProductLogo"] as! String
            }
            if dict.keys.contains("ProductName") {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("ProductTag") {
                self.productTag = dict["ProductTag"] as! String
            }
            if dict.keys.contains("ProductWebsite") {
                self.productWebsite = dict["ProductWebsite"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcProductBandResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcProductBandResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcProductBandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcProductBandResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcProductBandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcTaxAbnormalRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcTaxAbnormalResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cardNum: String?

        public var cardType: String?

        public var entName: String?

        public var judgeDate: String?

        public var judgeDepartment: String?

        public var judgeReason: String?

        public var legalName: String?

        public var overdueAmount: String?

        public var overdueType: String?

        public var status: String?

        public var taxpayerNum: String?

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
            if self.cardNum != nil {
                map["CardNum"] = self.cardNum!
            }
            if self.cardType != nil {
                map["CardType"] = self.cardType!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.judgeDate != nil {
                map["JudgeDate"] = self.judgeDate!
            }
            if self.judgeDepartment != nil {
                map["JudgeDepartment"] = self.judgeDepartment!
            }
            if self.judgeReason != nil {
                map["JudgeReason"] = self.judgeReason!
            }
            if self.legalName != nil {
                map["LegalName"] = self.legalName!
            }
            if self.overdueAmount != nil {
                map["OverdueAmount"] = self.overdueAmount!
            }
            if self.overdueType != nil {
                map["OverdueType"] = self.overdueType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taxpayerNum != nil {
                map["TaxpayerNum"] = self.taxpayerNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CardNum") {
                self.cardNum = dict["CardNum"] as! String
            }
            if dict.keys.contains("CardType") {
                self.cardType = dict["CardType"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("JudgeDate") {
                self.judgeDate = dict["JudgeDate"] as! String
            }
            if dict.keys.contains("JudgeDepartment") {
                self.judgeDepartment = dict["JudgeDepartment"] as! String
            }
            if dict.keys.contains("JudgeReason") {
                self.judgeReason = dict["JudgeReason"] as! String
            }
            if dict.keys.contains("LegalName") {
                self.legalName = dict["LegalName"] as! String
            }
            if dict.keys.contains("OverdueAmount") {
                self.overdueAmount = dict["OverdueAmount"] as! String
            }
            if dict.keys.contains("OverdueType") {
                self.overdueType = dict["OverdueType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaxpayerNum") {
                self.taxpayerNum = dict["TaxpayerNum"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcTaxAbnormalResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcTaxAbnormalResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcTaxAbnormalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcTaxAbnormalResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcTaxAbnormalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcTaxClassARequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcTaxClassAResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var entName: String?

        public var taxLevel: String?

        public var taxpayerNum: String?

        public var year: String?

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
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.taxLevel != nil {
                map["TaxLevel"] = self.taxLevel!
            }
            if self.taxpayerNum != nil {
                map["TaxpayerNum"] = self.taxpayerNum!
            }
            if self.year != nil {
                map["Year"] = self.year!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("TaxLevel") {
                self.taxLevel = dict["TaxLevel"] as! String
            }
            if dict.keys.contains("TaxpayerNum") {
                self.taxpayerNum = dict["TaxpayerNum"] as! String
            }
            if dict.keys.contains("Year") {
                self.year = dict["Year"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcTaxClassAResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcTaxClassAResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcTaxClassAResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcTaxClassAResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcTaxClassAResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcTaxGeneralTaxpayerRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcTaxGeneralTaxpayerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var department: String?

        public var endDate: String?

        public var entName: String?

        public var judgeDate: String?

        public var qualification: String?

        public var startDate: String?

        public var taxpayerNum: String?

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
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.judgeDate != nil {
                map["JudgeDate"] = self.judgeDate!
            }
            if self.qualification != nil {
                map["Qualification"] = self.qualification!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.taxpayerNum != nil {
                map["TaxpayerNum"] = self.taxpayerNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("EndDate") {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("JudgeDate") {
                self.judgeDate = dict["JudgeDate"] as! String
            }
            if dict.keys.contains("Qualification") {
                self.qualification = dict["Qualification"] as! String
            }
            if dict.keys.contains("StartDate") {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("TaxpayerNum") {
                self.taxpayerNum = dict["TaxpayerNum"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcTaxGeneralTaxpayerResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcTaxGeneralTaxpayerResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcTaxGeneralTaxpayerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcTaxGeneralTaxpayerResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcTaxGeneralTaxpayerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcTaxIllegalRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcTaxIllegalResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agencyCardNum: String?

        public var agencyCardType: String?

        public var agencyEnt: String?

        public var agencyName: String?

        public var agencySex: String?

        public var caseType: String?

        public var department: String?

        public var entAddress: String?

        public var entName: String?

        public var financialCardNum: String?

        public var financialCardType: String?

        public var financialName: String?

        public var financialSex: String?

        public var illegalTruth: String?

        public var lawBasis: String?

        public var legalCardNum: String?

        public var legalCardType: String?

        public var legalName: String?

        public var legalSex: String?

        public var orgCode: String?

        public var publishDate: String?

        public var taxpayerNum: String?

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
            if self.agencyCardNum != nil {
                map["AgencyCardNum"] = self.agencyCardNum!
            }
            if self.agencyCardType != nil {
                map["AgencyCardType"] = self.agencyCardType!
            }
            if self.agencyEnt != nil {
                map["AgencyEnt"] = self.agencyEnt!
            }
            if self.agencyName != nil {
                map["AgencyName"] = self.agencyName!
            }
            if self.agencySex != nil {
                map["AgencySex"] = self.agencySex!
            }
            if self.caseType != nil {
                map["CaseType"] = self.caseType!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.entAddress != nil {
                map["EntAddress"] = self.entAddress!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.financialCardNum != nil {
                map["FinancialCardNum"] = self.financialCardNum!
            }
            if self.financialCardType != nil {
                map["FinancialCardType"] = self.financialCardType!
            }
            if self.financialName != nil {
                map["FinancialName"] = self.financialName!
            }
            if self.financialSex != nil {
                map["FinancialSex"] = self.financialSex!
            }
            if self.illegalTruth != nil {
                map["IllegalTruth"] = self.illegalTruth!
            }
            if self.lawBasis != nil {
                map["LawBasis"] = self.lawBasis!
            }
            if self.legalCardNum != nil {
                map["LegalCardNum"] = self.legalCardNum!
            }
            if self.legalCardType != nil {
                map["LegalCardType"] = self.legalCardType!
            }
            if self.legalName != nil {
                map["LegalName"] = self.legalName!
            }
            if self.legalSex != nil {
                map["LegalSex"] = self.legalSex!
            }
            if self.orgCode != nil {
                map["OrgCode"] = self.orgCode!
            }
            if self.publishDate != nil {
                map["PublishDate"] = self.publishDate!
            }
            if self.taxpayerNum != nil {
                map["TaxpayerNum"] = self.taxpayerNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgencyCardNum") {
                self.agencyCardNum = dict["AgencyCardNum"] as! String
            }
            if dict.keys.contains("AgencyCardType") {
                self.agencyCardType = dict["AgencyCardType"] as! String
            }
            if dict.keys.contains("AgencyEnt") {
                self.agencyEnt = dict["AgencyEnt"] as! String
            }
            if dict.keys.contains("AgencyName") {
                self.agencyName = dict["AgencyName"] as! String
            }
            if dict.keys.contains("AgencySex") {
                self.agencySex = dict["AgencySex"] as! String
            }
            if dict.keys.contains("CaseType") {
                self.caseType = dict["CaseType"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("EntAddress") {
                self.entAddress = dict["EntAddress"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("FinancialCardNum") {
                self.financialCardNum = dict["FinancialCardNum"] as! String
            }
            if dict.keys.contains("FinancialCardType") {
                self.financialCardType = dict["FinancialCardType"] as! String
            }
            if dict.keys.contains("FinancialName") {
                self.financialName = dict["FinancialName"] as! String
            }
            if dict.keys.contains("FinancialSex") {
                self.financialSex = dict["FinancialSex"] as! String
            }
            if dict.keys.contains("IllegalTruth") {
                self.illegalTruth = dict["IllegalTruth"] as! String
            }
            if dict.keys.contains("LawBasis") {
                self.lawBasis = dict["LawBasis"] as! String
            }
            if dict.keys.contains("LegalCardNum") {
                self.legalCardNum = dict["LegalCardNum"] as! String
            }
            if dict.keys.contains("LegalCardType") {
                self.legalCardType = dict["LegalCardType"] as! String
            }
            if dict.keys.contains("LegalName") {
                self.legalName = dict["LegalName"] as! String
            }
            if dict.keys.contains("LegalSex") {
                self.legalSex = dict["LegalSex"] as! String
            }
            if dict.keys.contains("OrgCode") {
                self.orgCode = dict["OrgCode"] as! String
            }
            if dict.keys.contains("PublishDate") {
                self.publishDate = dict["PublishDate"] as! String
            }
            if dict.keys.contains("TaxpayerNum") {
                self.taxpayerNum = dict["TaxpayerNum"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcTaxIllegalResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcTaxIllegalResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcTaxIllegalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcTaxIllegalResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcTaxIllegalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcTaxOverdueRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcTaxOverdueResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var currOverdueAmount: String?

        public var department: String?

        public var entAddress: String?

        public var entName: String?

        public var legalName: String?

        public var overdueAmount: String?

        public var overdueType: String?

        public var publishDate: String?

        public var taxpayerNum: String?

        public var taxpayerType: String?

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
            if self.currOverdueAmount != nil {
                map["CurrOverdueAmount"] = self.currOverdueAmount!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.entAddress != nil {
                map["EntAddress"] = self.entAddress!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.legalName != nil {
                map["LegalName"] = self.legalName!
            }
            if self.overdueAmount != nil {
                map["OverdueAmount"] = self.overdueAmount!
            }
            if self.overdueType != nil {
                map["OverdueType"] = self.overdueType!
            }
            if self.publishDate != nil {
                map["PublishDate"] = self.publishDate!
            }
            if self.taxpayerNum != nil {
                map["TaxpayerNum"] = self.taxpayerNum!
            }
            if self.taxpayerType != nil {
                map["TaxpayerType"] = self.taxpayerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrOverdueAmount") {
                self.currOverdueAmount = dict["CurrOverdueAmount"] as! String
            }
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("EntAddress") {
                self.entAddress = dict["EntAddress"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("LegalName") {
                self.legalName = dict["LegalName"] as! String
            }
            if dict.keys.contains("OverdueAmount") {
                self.overdueAmount = dict["OverdueAmount"] as! String
            }
            if dict.keys.contains("OverdueType") {
                self.overdueType = dict["OverdueType"] as! String
            }
            if dict.keys.contains("PublishDate") {
                self.publishDate = dict["PublishDate"] as! String
            }
            if dict.keys.contains("TaxpayerNum") {
                self.taxpayerNum = dict["TaxpayerNum"] as! String
            }
            if dict.keys.contains("TaxpayerType") {
                self.taxpayerType = dict["TaxpayerType"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcTaxOverdueResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcTaxOverdueResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcTaxOverdueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcTaxOverdueResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcTaxOverdueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOcTaxPunishmentRequest : Tea.TeaModel {
    public var pageNo: Int32?

    public var pageSize: Int32?

    public var searchKey: String?

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
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetOcTaxPunishmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var department: String?

        public var entName: String?

        public var eventName: String?

        public var eventType: String?

        public var legalName: String?

        public var punishDate: String?

        public var taxpayerNum: String?

        public var title: String?

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
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.entName != nil {
                map["EntName"] = self.entName!
            }
            if self.eventName != nil {
                map["EventName"] = self.eventName!
            }
            if self.eventType != nil {
                map["EventType"] = self.eventType!
            }
            if self.legalName != nil {
                map["LegalName"] = self.legalName!
            }
            if self.punishDate != nil {
                map["PunishDate"] = self.punishDate!
            }
            if self.taxpayerNum != nil {
                map["TaxpayerNum"] = self.taxpayerNum!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Department") {
                self.department = dict["Department"] as! String
            }
            if dict.keys.contains("EntName") {
                self.entName = dict["EntName"] as! String
            }
            if dict.keys.contains("EventName") {
                self.eventName = dict["EventName"] as! String
            }
            if dict.keys.contains("EventType") {
                self.eventType = dict["EventType"] as! String
            }
            if dict.keys.contains("LegalName") {
                self.legalName = dict["LegalName"] as! String
            }
            if dict.keys.contains("PunishDate") {
                self.punishDate = dict["PunishDate"] as! String
            }
            if dict.keys.contains("TaxpayerNum") {
                self.taxpayerNum = dict["TaxpayerNum"] as! String
            }
            if dict.keys.contains("Title") {
                self.title = dict["Title"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetOcTaxPunishmentResponseBody.Data]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetOcTaxPunishmentResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetOcTaxPunishmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOcTaxPunishmentResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOcTaxPunishmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetQccCertificationDetailByIdRequest : Tea.TeaModel {
    public var certId: String?

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
        if self.certId != nil {
            map["CertId"] = self.certId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertId") {
            self.certId = dict["CertId"] as! String
        }
    }
}

public class GetQccCertificationDetailByIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [String: Any]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetQccCertificationDetailByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQccCertificationDetailByIdResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetQccCertificationDetailByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetQccSearchCertificationRequest : Tea.TeaModel {
    public var certCategory: String?

    public var entName: String?

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
        if self.certCategory != nil {
            map["CertCategory"] = self.certCategory!
        }
        if self.entName != nil {
            map["EntName"] = self.entName!
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
        if dict.keys.contains("CertCategory") {
            self.certCategory = dict["CertCategory"] as! String
        }
        if dict.keys.contains("EntName") {
            self.entName = dict["EntName"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class GetQccSearchCertificationResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [[String: Any]]?

    public var message: String?

    public var pageIndex: Int32?

    public var pageNum: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalNum: Int32?

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
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalNum != nil {
            map["TotalNum"] = self.totalNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [[String: Any]]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalNum") {
            self.totalNum = dict["TotalNum"] as! Int32
        }
    }
}

public class GetQccSearchCertificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQccSearchCertificationResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetQccSearchCertificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
