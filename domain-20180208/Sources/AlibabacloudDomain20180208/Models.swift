import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AcceptDemandRequest : Tea.TeaModel {
    public var bizId: String?

    public var message: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
    }
}

public class AcceptDemandResponseBody : Tea.TeaModel {
    public var bindUrl: String?

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
        if self.bindUrl != nil {
            map["BindUrl"] = self.bindUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BindUrl") && dict["BindUrl"] != nil {
            self.bindUrl = dict["BindUrl"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AcceptDemandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AcceptDemandResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AcceptDemandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BidDomainRequest : Tea.TeaModel {
    public var auctionId: String?

    public var currency: String?

    public var maxBid: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auctionId != nil {
            map["AuctionId"] = self.auctionId!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.maxBid != nil {
            map["MaxBid"] = self.maxBid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuctionId") && dict["AuctionId"] != nil {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("Currency") && dict["Currency"] != nil {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("MaxBid") && dict["MaxBid"] != nil {
            self.maxBid = dict["MaxBid"] as! Double
        }
    }
}

public class BidDomainResponseBody : Tea.TeaModel {
    public var auctionId: String?

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
        if self.auctionId != nil {
            map["AuctionId"] = self.auctionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuctionId") && dict["AuctionId"] != nil {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BidDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BidDomainResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BidDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeAuctionRequest : Tea.TeaModel {
    public class AuctionList : Tea.TeaModel {
        public class BidRecords : Tea.TeaModel {
            public var createTime: String?

            public var price: Double?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.price != nil {
                    map["Price"] = self.price!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Price") && dict["Price"] != nil {
                    self.price = dict["Price"] as! Double
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var bidRecords: [ChangeAuctionRequest.AuctionList.BidRecords]?

        public var domainName: String?

        public var endTime: String?

        public var isReserve: Int32?

        public var reservePrice: Double?

        public var reserveRange: String?

        public var status: String?

        public var timeLeft: Int64?

        public var winner: String?

        public var winnerPrice: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bidRecords != nil {
                var tmp : [Any] = []
                for k in self.bidRecords! {
                    tmp.append(k.toMap())
                }
                map["BidRecords"] = tmp
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.isReserve != nil {
                map["IsReserve"] = self.isReserve!
            }
            if self.reservePrice != nil {
                map["ReservePrice"] = self.reservePrice!
            }
            if self.reserveRange != nil {
                map["ReserveRange"] = self.reserveRange!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.timeLeft != nil {
                map["TimeLeft"] = self.timeLeft!
            }
            if self.winner != nil {
                map["Winner"] = self.winner!
            }
            if self.winnerPrice != nil {
                map["WinnerPrice"] = self.winnerPrice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BidRecords") && dict["BidRecords"] != nil {
                var tmp : [ChangeAuctionRequest.AuctionList.BidRecords] = []
                for v in dict["BidRecords"] as! [Any] {
                    var model = ChangeAuctionRequest.AuctionList.BidRecords()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.bidRecords = tmp
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("IsReserve") && dict["IsReserve"] != nil {
                self.isReserve = dict["IsReserve"] as! Int32
            }
            if dict.keys.contains("ReservePrice") && dict["ReservePrice"] != nil {
                self.reservePrice = dict["ReservePrice"] as! Double
            }
            if dict.keys.contains("ReserveRange") && dict["ReserveRange"] != nil {
                self.reserveRange = dict["ReserveRange"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TimeLeft") && dict["TimeLeft"] != nil {
                self.timeLeft = dict["TimeLeft"] as! Int64
            }
            if dict.keys.contains("Winner") && dict["Winner"] != nil {
                self.winner = dict["Winner"] as! String
            }
            if dict.keys.contains("WinnerPrice") && dict["WinnerPrice"] != nil {
                self.winnerPrice = dict["WinnerPrice"] as! Double
            }
        }
    }
    public var auctionList: [ChangeAuctionRequest.AuctionList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auctionList != nil {
            var tmp : [Any] = []
            for k in self.auctionList! {
                tmp.append(k.toMap())
            }
            map["AuctionList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuctionList") && dict["AuctionList"] != nil {
            var tmp : [ChangeAuctionRequest.AuctionList] = []
            for v in dict["AuctionList"] as! [Any] {
                var model = ChangeAuctionRequest.AuctionList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.auctionList = tmp
        }
    }
}

public class ChangeAuctionResponseBody : Tea.TeaModel {
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

public class ChangeAuctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeAuctionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ChangeAuctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckDomainStatusRequest : Tea.TeaModel {
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
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
    }
}

public class CheckDomainStatusResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var deadDate: Int64?

        public var domain: String?

        public var endTime: Int64?

        public var price: Double?

        public var regDate: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deadDate != nil {
                map["DeadDate"] = self.deadDate!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            if self.regDate != nil {
                map["RegDate"] = self.regDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeadDate") && dict["DeadDate"] != nil {
                self.deadDate = dict["DeadDate"] as! Int64
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Price") && dict["Price"] != nil {
                self.price = dict["Price"] as! Double
            }
            if dict.keys.contains("RegDate") && dict["RegDate"] != nil {
                self.regDate = dict["RegDate"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var httpStatusCode: Int32?

    public var module: CheckDomainStatusResponseBody.Module?

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
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
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
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            var model = CheckDomainStatusResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckDomainStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDomainStatusResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckDomainStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckSelectedDomainStatusRequest : Tea.TeaModel {
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
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
    }
}

public class CheckSelectedDomainStatusResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var deadDate: Int64?

        public var domain: String?

        public var endTime: Int64?

        public var premium: Bool?

        public var price: Double?

        public var regDate: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deadDate != nil {
                map["DeadDate"] = self.deadDate!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.premium != nil {
                map["Premium"] = self.premium!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            if self.regDate != nil {
                map["RegDate"] = self.regDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeadDate") && dict["DeadDate"] != nil {
                self.deadDate = dict["DeadDate"] as! Int64
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Premium") && dict["Premium"] != nil {
                self.premium = dict["Premium"] as! Bool
            }
            if dict.keys.contains("Price") && dict["Price"] != nil {
                self.price = dict["Price"] as! Double
            }
            if dict.keys.contains("RegDate") && dict["RegDate"] != nil {
                self.regDate = dict["RegDate"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var httpStatusCode: Int32?

    public var module: CheckSelectedDomainStatusResponseBody.Module?

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
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
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
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            var model = CheckSelectedDomainStatusResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckSelectedDomainStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckSelectedDomainStatusResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckSelectedDomainStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFixedPriceDemandOrderRequest : Tea.TeaModel {
    public var code: String?

    public var contactId: String?

    public var domain: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class CreateFixedPriceDemandOrderResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var domain: String?

        public var orderNo: String?

        public var price: Int64?

        public override init() {
            super.init()
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
            if self.orderNo != nil {
                map["OrderNo"] = self.orderNo!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("OrderNo") && dict["OrderNo"] != nil {
                self.orderNo = dict["OrderNo"] as! String
            }
            if dict.keys.contains("Price") && dict["Price"] != nil {
                self.price = dict["Price"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var httpStatusCode: Int32?

    public var module: CreateFixedPriceDemandOrderResponseBody.Module?

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
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
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
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            var model = CreateFixedPriceDemandOrderResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateFixedPriceDemandOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFixedPriceDemandOrderResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateFixedPriceDemandOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFixedPriceSelectedOrderRequest : Tea.TeaModel {
    public var code: String?

    public var contactId: String?

    public var domainName: String?

    public var expectedPrice: Double?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.expectedPrice != nil {
            map["ExpectedPrice"] = self.expectedPrice!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("ExpectedPrice") && dict["ExpectedPrice"] != nil {
            self.expectedPrice = dict["ExpectedPrice"] as! Double
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
    }
}

public class CreateFixedPriceSelectedOrderResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var domain: String?

        public var orderNo: String?

        public var price: Int64?

        public override init() {
            super.init()
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
            if self.orderNo != nil {
                map["OrderNo"] = self.orderNo!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("OrderNo") && dict["OrderNo"] != nil {
                self.orderNo = dict["OrderNo"] as! String
            }
            if dict.keys.contains("Price") && dict["Price"] != nil {
                self.price = dict["Price"] as! Int64
            }
        }
    }
    public var errorCode: String?

    public var httpStatusCode: Int32?

    public var module: CreateFixedPriceSelectedOrderResponseBody.Module?

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
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
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
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            var model = CreateFixedPriceSelectedOrderResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateFixedPriceSelectedOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFixedPriceSelectedOrderResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateFixedPriceSelectedOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FailDemandRequest : Tea.TeaModel {
    public var bizId: String?

    public var message: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
    }
}

public class FailDemandResponseBody : Tea.TeaModel {
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

public class FailDemandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FailDemandResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = FailDemandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FinishDemandRequest : Tea.TeaModel {
    public var bizId: String?

    public var message: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
    }
}

public class FinishDemandResponseBody : Tea.TeaModel {
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

public class FinishDemandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FinishDemandResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = FinishDemandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIntlDomainDownloadUrlResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var requestId: String?

    public var success: Bool?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowRetry") && dict["AllowRetry"] != nil {
            self.allowRetry = dict["AllowRetry"] as! Bool
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorArgs") && dict["ErrorArgs"] != nil {
            self.errorArgs = dict["ErrorArgs"] as! [Any]
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class GetIntlDomainDownloadUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIntlDomainDownloadUrlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetIntlDomainDownloadUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetReserveDomainUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class GetReserveDomainUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetReserveDomainUrlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetReserveDomainUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PurchaseIntlDomainRequest : Tea.TeaModel {
    public var auctionId: String?

    public var currency: String?

    public var price: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auctionId != nil {
            map["AuctionId"] = self.auctionId!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.price != nil {
            map["Price"] = self.price!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuctionId") && dict["AuctionId"] != nil {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("Currency") && dict["Currency"] != nil {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("Price") && dict["Price"] != nil {
            self.price = dict["Price"] as! Double
        }
    }
}

public class PurchaseIntlDomainResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var auctionId: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.auctionId != nil {
            map["AuctionId"] = self.auctionId!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("AllowRetry") && dict["AllowRetry"] != nil {
            self.allowRetry = dict["AllowRetry"] as! Bool
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AuctionId") && dict["AuctionId"] != nil {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorArgs") && dict["ErrorArgs"] != nil {
            self.errorArgs = dict["ErrorArgs"] as! [Any]
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class PurchaseIntlDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PurchaseIntlDomainResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PurchaseIntlDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAuctionDetailRequest : Tea.TeaModel {
    public var auctionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auctionId != nil {
            map["AuctionId"] = self.auctionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuctionId") && dict["AuctionId"] != nil {
            self.auctionId = dict["AuctionId"] as! String
        }
    }
}

public class QueryAuctionDetailResponseBody : Tea.TeaModel {
    public var auctionEndTime: Int64?

    public var auctionId: String?

    public var bookEndTime: Int64?

    public var bookedPartner: String?

    public var currency: String?

    public var deliveryTime: Int64?

    public var domainName: String?

    public var domainType: String?

    public var failCode: String?

    public var highBid: Double?

    public var highBidder: String?

    public var nextValidBid: Double?

    public var partnerType: String?

    public var payEndTime: Int64?

    public var payPrice: Double?

    public var payStatus: String?

    public var produceStatus: String?

    public var requestId: String?

    public var reserveMet: Bool?

    public var reservePrice: Double?

    public var status: String?

    public var transferInPrice: Double?

    public var yourCurrentBid: Double?

    public var yourMaxBid: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auctionEndTime != nil {
            map["AuctionEndTime"] = self.auctionEndTime!
        }
        if self.auctionId != nil {
            map["AuctionId"] = self.auctionId!
        }
        if self.bookEndTime != nil {
            map["BookEndTime"] = self.bookEndTime!
        }
        if self.bookedPartner != nil {
            map["BookedPartner"] = self.bookedPartner!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.deliveryTime != nil {
            map["DeliveryTime"] = self.deliveryTime!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainType != nil {
            map["DomainType"] = self.domainType!
        }
        if self.failCode != nil {
            map["FailCode"] = self.failCode!
        }
        if self.highBid != nil {
            map["HighBid"] = self.highBid!
        }
        if self.highBidder != nil {
            map["HighBidder"] = self.highBidder!
        }
        if self.nextValidBid != nil {
            map["NextValidBid"] = self.nextValidBid!
        }
        if self.partnerType != nil {
            map["PartnerType"] = self.partnerType!
        }
        if self.payEndTime != nil {
            map["PayEndTime"] = self.payEndTime!
        }
        if self.payPrice != nil {
            map["PayPrice"] = self.payPrice!
        }
        if self.payStatus != nil {
            map["PayStatus"] = self.payStatus!
        }
        if self.produceStatus != nil {
            map["ProduceStatus"] = self.produceStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.reserveMet != nil {
            map["ReserveMet"] = self.reserveMet!
        }
        if self.reservePrice != nil {
            map["ReservePrice"] = self.reservePrice!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.transferInPrice != nil {
            map["TransferInPrice"] = self.transferInPrice!
        }
        if self.yourCurrentBid != nil {
            map["YourCurrentBid"] = self.yourCurrentBid!
        }
        if self.yourMaxBid != nil {
            map["YourMaxBid"] = self.yourMaxBid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuctionEndTime") && dict["AuctionEndTime"] != nil {
            self.auctionEndTime = dict["AuctionEndTime"] as! Int64
        }
        if dict.keys.contains("AuctionId") && dict["AuctionId"] != nil {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("BookEndTime") && dict["BookEndTime"] != nil {
            self.bookEndTime = dict["BookEndTime"] as! Int64
        }
        if dict.keys.contains("BookedPartner") && dict["BookedPartner"] != nil {
            self.bookedPartner = dict["BookedPartner"] as! String
        }
        if dict.keys.contains("Currency") && dict["Currency"] != nil {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("DeliveryTime") && dict["DeliveryTime"] != nil {
            self.deliveryTime = dict["DeliveryTime"] as! Int64
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
            self.domainType = dict["DomainType"] as! String
        }
        if dict.keys.contains("FailCode") && dict["FailCode"] != nil {
            self.failCode = dict["FailCode"] as! String
        }
        if dict.keys.contains("HighBid") && dict["HighBid"] != nil {
            self.highBid = dict["HighBid"] as! Double
        }
        if dict.keys.contains("HighBidder") && dict["HighBidder"] != nil {
            self.highBidder = dict["HighBidder"] as! String
        }
        if dict.keys.contains("NextValidBid") && dict["NextValidBid"] != nil {
            self.nextValidBid = dict["NextValidBid"] as! Double
        }
        if dict.keys.contains("PartnerType") && dict["PartnerType"] != nil {
            self.partnerType = dict["PartnerType"] as! String
        }
        if dict.keys.contains("PayEndTime") && dict["PayEndTime"] != nil {
            self.payEndTime = dict["PayEndTime"] as! Int64
        }
        if dict.keys.contains("PayPrice") && dict["PayPrice"] != nil {
            self.payPrice = dict["PayPrice"] as! Double
        }
        if dict.keys.contains("PayStatus") && dict["PayStatus"] != nil {
            self.payStatus = dict["PayStatus"] as! String
        }
        if dict.keys.contains("ProduceStatus") && dict["ProduceStatus"] != nil {
            self.produceStatus = dict["ProduceStatus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ReserveMet") && dict["ReserveMet"] != nil {
            self.reserveMet = dict["ReserveMet"] as! Bool
        }
        if dict.keys.contains("ReservePrice") && dict["ReservePrice"] != nil {
            self.reservePrice = dict["ReservePrice"] as! Double
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TransferInPrice") && dict["TransferInPrice"] != nil {
            self.transferInPrice = dict["TransferInPrice"] as! Double
        }
        if dict.keys.contains("YourCurrentBid") && dict["YourCurrentBid"] != nil {
            self.yourCurrentBid = dict["YourCurrentBid"] as! Double
        }
        if dict.keys.contains("YourMaxBid") && dict["YourMaxBid"] != nil {
            self.yourMaxBid = dict["YourMaxBid"] as! Double
        }
    }
}

public class QueryAuctionDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAuctionDetailResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryAuctionDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAuctionsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var pageSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class QueryAuctionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var auctionEndTime: Int64?

        public var auctionId: String?

        public var bookEndTime: Int64?

        public var bookedPartner: String?

        public var currency: String?

        public var deliveryTime: Int64?

        public var domainName: String?

        public var domainType: String?

        public var failCode: String?

        public var highBid: Double?

        public var highBidder: String?

        public var nextValidBid: Double?

        public var partnerType: String?

        public var payEndTime: Int64?

        public var payPrice: Double?

        public var payStatus: String?

        public var produceStatus: String?

        public var reserveMax: Int64?

        public var reserveMet: Bool?

        public var reserveMin: Int64?

        public var reservePrice: Int64?

        public var status: String?

        public var transferInPrice: Double?

        public var yourCurrentBid: Double?

        public var yourMaxBid: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auctionEndTime != nil {
                map["AuctionEndTime"] = self.auctionEndTime!
            }
            if self.auctionId != nil {
                map["AuctionId"] = self.auctionId!
            }
            if self.bookEndTime != nil {
                map["BookEndTime"] = self.bookEndTime!
            }
            if self.bookedPartner != nil {
                map["BookedPartner"] = self.bookedPartner!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.deliveryTime != nil {
                map["DeliveryTime"] = self.deliveryTime!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.domainType != nil {
                map["DomainType"] = self.domainType!
            }
            if self.failCode != nil {
                map["FailCode"] = self.failCode!
            }
            if self.highBid != nil {
                map["HighBid"] = self.highBid!
            }
            if self.highBidder != nil {
                map["HighBidder"] = self.highBidder!
            }
            if self.nextValidBid != nil {
                map["NextValidBid"] = self.nextValidBid!
            }
            if self.partnerType != nil {
                map["PartnerType"] = self.partnerType!
            }
            if self.payEndTime != nil {
                map["PayEndTime"] = self.payEndTime!
            }
            if self.payPrice != nil {
                map["PayPrice"] = self.payPrice!
            }
            if self.payStatus != nil {
                map["PayStatus"] = self.payStatus!
            }
            if self.produceStatus != nil {
                map["ProduceStatus"] = self.produceStatus!
            }
            if self.reserveMax != nil {
                map["ReserveMax"] = self.reserveMax!
            }
            if self.reserveMet != nil {
                map["ReserveMet"] = self.reserveMet!
            }
            if self.reserveMin != nil {
                map["ReserveMin"] = self.reserveMin!
            }
            if self.reservePrice != nil {
                map["ReservePrice"] = self.reservePrice!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.transferInPrice != nil {
                map["TransferInPrice"] = self.transferInPrice!
            }
            if self.yourCurrentBid != nil {
                map["YourCurrentBid"] = self.yourCurrentBid!
            }
            if self.yourMaxBid != nil {
                map["YourMaxBid"] = self.yourMaxBid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuctionEndTime") && dict["AuctionEndTime"] != nil {
                self.auctionEndTime = dict["AuctionEndTime"] as! Int64
            }
            if dict.keys.contains("AuctionId") && dict["AuctionId"] != nil {
                self.auctionId = dict["AuctionId"] as! String
            }
            if dict.keys.contains("BookEndTime") && dict["BookEndTime"] != nil {
                self.bookEndTime = dict["BookEndTime"] as! Int64
            }
            if dict.keys.contains("BookedPartner") && dict["BookedPartner"] != nil {
                self.bookedPartner = dict["BookedPartner"] as! String
            }
            if dict.keys.contains("Currency") && dict["Currency"] != nil {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("DeliveryTime") && dict["DeliveryTime"] != nil {
                self.deliveryTime = dict["DeliveryTime"] as! Int64
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
                self.domainType = dict["DomainType"] as! String
            }
            if dict.keys.contains("FailCode") && dict["FailCode"] != nil {
                self.failCode = dict["FailCode"] as! String
            }
            if dict.keys.contains("HighBid") && dict["HighBid"] != nil {
                self.highBid = dict["HighBid"] as! Double
            }
            if dict.keys.contains("HighBidder") && dict["HighBidder"] != nil {
                self.highBidder = dict["HighBidder"] as! String
            }
            if dict.keys.contains("NextValidBid") && dict["NextValidBid"] != nil {
                self.nextValidBid = dict["NextValidBid"] as! Double
            }
            if dict.keys.contains("PartnerType") && dict["PartnerType"] != nil {
                self.partnerType = dict["PartnerType"] as! String
            }
            if dict.keys.contains("PayEndTime") && dict["PayEndTime"] != nil {
                self.payEndTime = dict["PayEndTime"] as! Int64
            }
            if dict.keys.contains("PayPrice") && dict["PayPrice"] != nil {
                self.payPrice = dict["PayPrice"] as! Double
            }
            if dict.keys.contains("PayStatus") && dict["PayStatus"] != nil {
                self.payStatus = dict["PayStatus"] as! String
            }
            if dict.keys.contains("ProduceStatus") && dict["ProduceStatus"] != nil {
                self.produceStatus = dict["ProduceStatus"] as! String
            }
            if dict.keys.contains("ReserveMax") && dict["ReserveMax"] != nil {
                self.reserveMax = dict["ReserveMax"] as! Int64
            }
            if dict.keys.contains("ReserveMet") && dict["ReserveMet"] != nil {
                self.reserveMet = dict["ReserveMet"] as! Bool
            }
            if dict.keys.contains("ReserveMin") && dict["ReserveMin"] != nil {
                self.reserveMin = dict["ReserveMin"] as! Int64
            }
            if dict.keys.contains("ReservePrice") && dict["ReservePrice"] != nil {
                self.reservePrice = dict["ReservePrice"] as! Int64
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TransferInPrice") && dict["TransferInPrice"] != nil {
                self.transferInPrice = dict["TransferInPrice"] as! Double
            }
            if dict.keys.contains("YourCurrentBid") && dict["YourCurrentBid"] != nil {
                self.yourCurrentBid = dict["YourCurrentBid"] as! Double
            }
            if dict.keys.contains("YourMaxBid") && dict["YourMaxBid"] != nil {
                self.yourMaxBid = dict["YourMaxBid"] as! Double
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: [QueryAuctionsResponseBody.Data]?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryAuctionsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryAuctionsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
        }
    }
}

public class QueryAuctionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAuctionsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryAuctionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBidRecordsRequest : Tea.TeaModel {
    public var auctionId: String?

    public var currentPage: Int32?

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
        if self.auctionId != nil {
            map["AuctionId"] = self.auctionId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuctionId") && dict["AuctionId"] != nil {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class QueryBidRecordsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bid: Double?

        public var bidTime: Int64?

        public var bidder: String?

        public var currency: String?

        public var domainName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bid != nil {
                map["Bid"] = self.bid!
            }
            if self.bidTime != nil {
                map["BidTime"] = self.bidTime!
            }
            if self.bidder != nil {
                map["Bidder"] = self.bidder!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bid") && dict["Bid"] != nil {
                self.bid = dict["Bid"] as! Double
            }
            if dict.keys.contains("BidTime") && dict["BidTime"] != nil {
                self.bidTime = dict["BidTime"] as! Int64
            }
            if dict.keys.contains("Bidder") && dict["Bidder"] != nil {
                self.bidder = dict["Bidder"] as! String
            }
            if dict.keys.contains("Currency") && dict["Currency"] != nil {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: [QueryBidRecordsResponseBody.Data]?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryBidRecordsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryBidRecordsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
        }
    }
}

public class QueryBidRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBidRecordsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryBidRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBookingDomainInfoRequest : Tea.TeaModel {
    public var domainName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
    }
}

public class QueryBookingDomainInfoResponseBody : Tea.TeaModel {
    public var auctionId: Int32?

    public var bookEndTime: Int64?

    public var currency: String?

    public var maxBid: Double?

    public var partnerType: String?

    public var requestId: String?

    public var snatchNo: String?

    public var transferInPrice: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auctionId != nil {
            map["AuctionId"] = self.auctionId!
        }
        if self.bookEndTime != nil {
            map["BookEndTime"] = self.bookEndTime!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.maxBid != nil {
            map["MaxBid"] = self.maxBid!
        }
        if self.partnerType != nil {
            map["PartnerType"] = self.partnerType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.snatchNo != nil {
            map["SnatchNo"] = self.snatchNo!
        }
        if self.transferInPrice != nil {
            map["TransferInPrice"] = self.transferInPrice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuctionId") && dict["AuctionId"] != nil {
            self.auctionId = dict["AuctionId"] as! Int32
        }
        if dict.keys.contains("BookEndTime") && dict["BookEndTime"] != nil {
            self.bookEndTime = dict["BookEndTime"] as! Int64
        }
        if dict.keys.contains("Currency") && dict["Currency"] != nil {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("MaxBid") && dict["MaxBid"] != nil {
            self.maxBid = dict["MaxBid"] as! Double
        }
        if dict.keys.contains("PartnerType") && dict["PartnerType"] != nil {
            self.partnerType = dict["PartnerType"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SnatchNo") && dict["SnatchNo"] != nil {
            self.snatchNo = dict["SnatchNo"] as! String
        }
        if dict.keys.contains("TransferInPrice") && dict["TransferInPrice"] != nil {
            self.transferInPrice = dict["TransferInPrice"] as! Double
        }
    }
}

public class QueryBookingDomainInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBookingDomainInfoResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryBookingDomainInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBrokerDemandRequest : Tea.TeaModel {
    public var bizId: String?

    public var currentPage: Int32?

    public var pageSize: Int32?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class QueryBrokerDemandResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var auditStatus: Int32?

        public var bargainSellerMobile: String?

        public var bargainSellerPrice: Double?

        public var bizId: String?

        public var demandDomain: String?

        public var demandPrice: Double?

        public var description_: String?

        public var email: String?

        public var mobile: String?

        public var orderType: Int32?

        public var partnerDomain: String?

        public var payDomain: String?

        public var payPrice: Double?

        public var payTime: Int64?

        public var produceType: Int32?

        public var publishTime: Int64?

        public var purchaseStatus: Int32?

        public var servicePayPrice: Double?

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
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.bargainSellerMobile != nil {
                map["BargainSellerMobile"] = self.bargainSellerMobile!
            }
            if self.bargainSellerPrice != nil {
                map["BargainSellerPrice"] = self.bargainSellerPrice!
            }
            if self.bizId != nil {
                map["BizId"] = self.bizId!
            }
            if self.demandDomain != nil {
                map["DemandDomain"] = self.demandDomain!
            }
            if self.demandPrice != nil {
                map["DemandPrice"] = self.demandPrice!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.orderType != nil {
                map["OrderType"] = self.orderType!
            }
            if self.partnerDomain != nil {
                map["PartnerDomain"] = self.partnerDomain!
            }
            if self.payDomain != nil {
                map["PayDomain"] = self.payDomain!
            }
            if self.payPrice != nil {
                map["PayPrice"] = self.payPrice!
            }
            if self.payTime != nil {
                map["PayTime"] = self.payTime!
            }
            if self.produceType != nil {
                map["ProduceType"] = self.produceType!
            }
            if self.publishTime != nil {
                map["PublishTime"] = self.publishTime!
            }
            if self.purchaseStatus != nil {
                map["PurchaseStatus"] = self.purchaseStatus!
            }
            if self.servicePayPrice != nil {
                map["ServicePayPrice"] = self.servicePayPrice!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                self.auditStatus = dict["AuditStatus"] as! Int32
            }
            if dict.keys.contains("BargainSellerMobile") && dict["BargainSellerMobile"] != nil {
                self.bargainSellerMobile = dict["BargainSellerMobile"] as! String
            }
            if dict.keys.contains("BargainSellerPrice") && dict["BargainSellerPrice"] != nil {
                self.bargainSellerPrice = dict["BargainSellerPrice"] as! Double
            }
            if dict.keys.contains("BizId") && dict["BizId"] != nil {
                self.bizId = dict["BizId"] as! String
            }
            if dict.keys.contains("DemandDomain") && dict["DemandDomain"] != nil {
                self.demandDomain = dict["DemandDomain"] as! String
            }
            if dict.keys.contains("DemandPrice") && dict["DemandPrice"] != nil {
                self.demandPrice = dict["DemandPrice"] as! Double
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
                self.orderType = dict["OrderType"] as! Int32
            }
            if dict.keys.contains("PartnerDomain") && dict["PartnerDomain"] != nil {
                self.partnerDomain = dict["PartnerDomain"] as! String
            }
            if dict.keys.contains("PayDomain") && dict["PayDomain"] != nil {
                self.payDomain = dict["PayDomain"] as! String
            }
            if dict.keys.contains("PayPrice") && dict["PayPrice"] != nil {
                self.payPrice = dict["PayPrice"] as! Double
            }
            if dict.keys.contains("PayTime") && dict["PayTime"] != nil {
                self.payTime = dict["PayTime"] as! Int64
            }
            if dict.keys.contains("ProduceType") && dict["ProduceType"] != nil {
                self.produceType = dict["ProduceType"] as! Int32
            }
            if dict.keys.contains("PublishTime") && dict["PublishTime"] != nil {
                self.publishTime = dict["PublishTime"] as! Int64
            }
            if dict.keys.contains("PurchaseStatus") && dict["PurchaseStatus"] != nil {
                self.purchaseStatus = dict["PurchaseStatus"] as! Int32
            }
            if dict.keys.contains("ServicePayPrice") && dict["ServicePayPrice"] != nil {
                self.servicePayPrice = dict["ServicePayPrice"] as! Double
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: [QueryBrokerDemandResponseBody.Data]?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryBrokerDemandResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryBrokerDemandResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
        }
    }
}

public class QueryBrokerDemandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBrokerDemandResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryBrokerDemandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryBrokerDemandRecordRequest : Tea.TeaModel {
    public var bizId: String?

    public var currentPage: Int32?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class QueryBrokerDemandRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BrokerDemandRecord : Tea.TeaModel {
            public var bizId: String?

            public var createTime: Int64?

            public var description_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizId != nil {
                    map["BizId"] = self.bizId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizId") && dict["BizId"] != nil {
                    self.bizId = dict["BizId"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
            }
        }
        public var brokerDemandRecord: [QueryBrokerDemandRecordResponseBody.Data.BrokerDemandRecord]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.brokerDemandRecord != nil {
                var tmp : [Any] = []
                for k in self.brokerDemandRecord! {
                    tmp.append(k.toMap())
                }
                map["BrokerDemandRecord"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BrokerDemandRecord") && dict["BrokerDemandRecord"] != nil {
                var tmp : [QueryBrokerDemandRecordResponseBody.Data.BrokerDemandRecord] = []
                for v in dict["BrokerDemandRecord"] as! [Any] {
                    var model = QueryBrokerDemandRecordResponseBody.Data.BrokerDemandRecord()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.brokerDemandRecord = tmp
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: QueryBrokerDemandRecordResponseBody.Data?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

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
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryBrokerDemandRecordResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
        }
    }
}

public class QueryBrokerDemandRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBrokerDemandRecordResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryBrokerDemandRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDomainTransferStatusRequest : Tea.TeaModel {
    public var domainName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
    }
}

public class QueryDomainTransferStatusResponseBody : Tea.TeaModel {
    public class DomainTransferStatus : Tea.TeaModel {
        public var domainName: String?

        public var domainStatusDescription: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.domainStatusDescription != nil {
                map["DomainStatusDescription"] = self.domainStatusDescription!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("DomainStatusDescription") && dict["DomainStatusDescription"] != nil {
                self.domainStatusDescription = dict["DomainStatusDescription"] as! String
            }
        }
    }
    public var domainTransferStatus: [QueryDomainTransferStatusResponseBody.DomainTransferStatus]?

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
        if self.domainTransferStatus != nil {
            var tmp : [Any] = []
            for k in self.domainTransferStatus! {
                tmp.append(k.toMap())
            }
            map["DomainTransferStatus"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainTransferStatus") && dict["DomainTransferStatus"] != nil {
            var tmp : [QueryDomainTransferStatusResponseBody.DomainTransferStatus] = []
            for v in dict["DomainTransferStatus"] as! [Any] {
                var model = QueryDomainTransferStatusResponseBody.DomainTransferStatus()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domainTransferStatus = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryDomainTransferStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainTransferStatusResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryDomainTransferStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryPurchasedDomainsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var domainName: String?

    public var endOperationTime: String?

    public var opTimeOrder: Bool?

    public var operationStatus: Int32?

    public var pageSize: Int32?

    public var productType: Int32?

    public var startOperationTime: String?

    public var updateTimeOrder: Bool?

    public override init() {
        super.init()
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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endOperationTime != nil {
            map["EndOperationTime"] = self.endOperationTime!
        }
        if self.opTimeOrder != nil {
            map["OpTimeOrder"] = self.opTimeOrder!
        }
        if self.operationStatus != nil {
            map["OperationStatus"] = self.operationStatus!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.startOperationTime != nil {
            map["StartOperationTime"] = self.startOperationTime!
        }
        if self.updateTimeOrder != nil {
            map["UpdateTimeOrder"] = self.updateTimeOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndOperationTime") && dict["EndOperationTime"] != nil {
            self.endOperationTime = dict["EndOperationTime"] as! String
        }
        if dict.keys.contains("OpTimeOrder") && dict["OpTimeOrder"] != nil {
            self.opTimeOrder = dict["OpTimeOrder"] as! Bool
        }
        if dict.keys.contains("OperationStatus") && dict["OperationStatus"] != nil {
            self.operationStatus = dict["OperationStatus"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! Int32
        }
        if dict.keys.contains("StartOperationTime") && dict["StartOperationTime"] != nil {
            self.startOperationTime = dict["StartOperationTime"] as! String
        }
        if dict.keys.contains("UpdateTimeOrder") && dict["UpdateTimeOrder"] != nil {
            self.updateTimeOrder = dict["UpdateTimeOrder"] as! Bool
        }
    }
}

public class QueryPurchasedDomainsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deliveryTime: String?

        public var domainName: String?

        public var operationStatus: String?

        public var operationTime: String?

        public var productType: String?

        public var tradeMoney: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deliveryTime != nil {
                map["DeliveryTime"] = self.deliveryTime!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.operationStatus != nil {
                map["OperationStatus"] = self.operationStatus!
            }
            if self.operationTime != nil {
                map["OperationTime"] = self.operationTime!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.tradeMoney != nil {
                map["TradeMoney"] = self.tradeMoney!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeliveryTime") && dict["DeliveryTime"] != nil {
                self.deliveryTime = dict["DeliveryTime"] as! String
            }
            if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("OperationStatus") && dict["OperationStatus"] != nil {
                self.operationStatus = dict["OperationStatus"] as! String
            }
            if dict.keys.contains("OperationTime") && dict["OperationTime"] != nil {
                self.operationTime = dict["OperationTime"] as! String
            }
            if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("TradeMoney") && dict["TradeMoney"] != nil {
                self.tradeMoney = dict["TradeMoney"] as! Double
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: [QueryPurchasedDomainsResponseBody.Data]?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalItemNum: Int32?

    public var totalPageNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalItemNum != nil {
            map["TotalItemNum"] = self.totalItemNum!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryPurchasedDomainsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryPurchasedDomainsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
            self.totalPageNum = dict["TotalPageNum"] as! Int32
        }
    }
}

public class QueryPurchasedDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPurchasedDomainsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryPurchasedDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecordDemandRequest : Tea.TeaModel {
    public var bizId: String?

    public var message: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
    }
}

public class RecordDemandResponseBody : Tea.TeaModel {
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

public class RecordDemandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecordDemandResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RecordDemandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefuseDemandRequest : Tea.TeaModel {
    public var bizId: String?

    public var message: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
    }
}

public class RefuseDemandResponseBody : Tea.TeaModel {
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

public class RefuseDemandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefuseDemandResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RefuseDemandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RequestPayDemandRequest : Tea.TeaModel {
    public var bizId: String?

    public var domainName: String?

    public var message: String?

    public var price: Double?

    public var produceType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.price != nil {
            map["Price"] = self.price!
        }
        if self.produceType != nil {
            map["ProduceType"] = self.produceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Price") && dict["Price"] != nil {
            self.price = dict["Price"] as! Double
        }
        if dict.keys.contains("ProduceType") && dict["ProduceType"] != nil {
            self.produceType = dict["ProduceType"] as! Int32
        }
    }
}

public class RequestPayDemandResponseBody : Tea.TeaModel {
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

public class RequestPayDemandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RequestPayDemandResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RequestPayDemandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReserveDomainRequest : Tea.TeaModel {
    public var channels: [String]?

    public var domainName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channels != nil {
            map["Channels"] = self.channels!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Channels") && dict["Channels"] != nil {
            self.channels = dict["Channels"] as! [String]
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
    }
}

public class ReserveDomainResponseBody : Tea.TeaModel {
    public var auctionId: String?

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
        if self.auctionId != nil {
            map["AuctionId"] = self.auctionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuctionId") && dict["AuctionId"] != nil {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ReserveDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReserveDomainResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ReserveDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReserveIntlDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
    }
}

public class ReserveIntlDomainResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var auctionId: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.auctionId != nil {
            map["AuctionId"] = self.auctionId!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if dict.keys.contains("AllowRetry") && dict["AllowRetry"] != nil {
            self.allowRetry = dict["AllowRetry"] as! Bool
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AuctionId") && dict["AuctionId"] != nil {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorArgs") && dict["ErrorArgs"] != nil {
            self.errorArgs = dict["ErrorArgs"] as! [Any]
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ReserveIntlDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReserveIntlDomainResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ReserveIntlDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SelectedDomainListRequest : Tea.TeaModel {
    public var listDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listDate != nil {
            map["ListDate"] = self.listDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListDate") && dict["ListDate"] != nil {
            self.listDate = dict["ListDate"] as! String
        }
    }
}

public class SelectedDomainListResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var downloadUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downloadUrl != nil {
                map["DownloadUrl"] = self.downloadUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DownloadUrl") && dict["DownloadUrl"] != nil {
                self.downloadUrl = dict["DownloadUrl"] as! String
            }
        }
    }
    public var errorCode: String?

    public var module: SelectedDomainListResponseBody.Module?

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
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.module != nil {
            map["Module"] = self.module?.toMap()
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
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            var model = SelectedDomainListResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SelectedDomainListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SelectedDomainListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SelectedDomainListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitPurchaseInfoRequest : Tea.TeaModel {
    public var bizId: String?

    public var purchaseCurrency: String?

    public var purchasePrice: Double?

    public var purchaseProofs: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.purchaseCurrency != nil {
            map["PurchaseCurrency"] = self.purchaseCurrency!
        }
        if self.purchasePrice != nil {
            map["PurchasePrice"] = self.purchasePrice!
        }
        if self.purchaseProofs != nil {
            map["PurchaseProofs"] = self.purchaseProofs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("PurchaseCurrency") && dict["PurchaseCurrency"] != nil {
            self.purchaseCurrency = dict["PurchaseCurrency"] as! String
        }
        if dict.keys.contains("PurchasePrice") && dict["PurchasePrice"] != nil {
            self.purchasePrice = dict["PurchasePrice"] as! Double
        }
        if dict.keys.contains("PurchaseProofs") && dict["PurchaseProofs"] != nil {
            self.purchaseProofs = dict["PurchaseProofs"] as! [String]
        }
    }
}

public class SubmitPurchaseInfoResponseBody : Tea.TeaModel {
    public var allowRetry: Bool?

    public var appName: String?

    public var dynamicCode: String?

    public var dynamicMessage: String?

    public var errorArgs: [Any]?

    public var errorCode: String?

    public var errorMsg: String?

    public var httpStatusCode: Int32?

    public var module: Any?

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
        if self.allowRetry != nil {
            map["AllowRetry"] = self.allowRetry!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dynamicCode != nil {
            map["DynamicCode"] = self.dynamicCode!
        }
        if self.dynamicMessage != nil {
            map["DynamicMessage"] = self.dynamicMessage!
        }
        if self.errorArgs != nil {
            map["ErrorArgs"] = self.errorArgs!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.module != nil {
            map["Module"] = self.module!
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
        if dict.keys.contains("AllowRetry") && dict["AllowRetry"] != nil {
            self.allowRetry = dict["AllowRetry"] as! Bool
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DynamicCode") && dict["DynamicCode"] != nil {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") && dict["DynamicMessage"] != nil {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorArgs") && dict["ErrorArgs"] != nil {
            self.errorArgs = dict["ErrorArgs"] as! [Any]
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") && dict["ErrorMsg"] != nil {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") && dict["Module"] != nil {
            self.module = dict["Module"] as! Any
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SubmitPurchaseInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitPurchaseInfoResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitPurchaseInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePartnerReservePriceRequest : Tea.TeaModel {
    public var biddingId: Int32?

    public var domainName: String?

    public var partnerType: String?

    public var reservePrice: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.biddingId != nil {
            map["BiddingId"] = self.biddingId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.partnerType != nil {
            map["PartnerType"] = self.partnerType!
        }
        if self.reservePrice != nil {
            map["ReservePrice"] = self.reservePrice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BiddingId") && dict["BiddingId"] != nil {
            self.biddingId = dict["BiddingId"] as! Int32
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("PartnerType") && dict["PartnerType"] != nil {
            self.partnerType = dict["PartnerType"] as! String
        }
        if dict.keys.contains("ReservePrice") && dict["ReservePrice"] != nil {
            self.reservePrice = dict["ReservePrice"] as! Double
        }
    }
}

public class UpdatePartnerReservePriceResponseBody : Tea.TeaModel {
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

public class UpdatePartnerReservePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePartnerReservePriceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdatePartnerReservePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
