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
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Message") {
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
        if dict.keys.contains("BindUrl") {
            self.bindUrl = dict["BindUrl"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("AuctionId") {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("MaxBid") {
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
        if dict.keys.contains("AuctionId") {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Price") {
                    self.price = dict["Price"] as! Double
                }
                if dict.keys.contains("UserId") {
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
            if dict.keys.contains("BidRecords") {
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
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("IsReserve") {
                self.isReserve = dict["IsReserve"] as! Int32
            }
            if dict.keys.contains("ReservePrice") {
                self.reservePrice = dict["ReservePrice"] as! Double
            }
            if dict.keys.contains("ReserveRange") {
                self.reserveRange = dict["ReserveRange"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TimeLeft") {
                self.timeLeft = dict["TimeLeft"] as! Int64
            }
            if dict.keys.contains("Winner") {
                self.winner = dict["Winner"] as! String
            }
            if dict.keys.contains("WinnerPrice") {
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
        if dict.keys.contains("AuctionList") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Domain") {
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
            if dict.keys.contains("DeadDate") {
                self.deadDate = dict["DeadDate"] as! Int64
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Price") {
                self.price = dict["Price"] as! Double
            }
            if dict.keys.contains("RegDate") {
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") {
            var model = CheckDomainStatusResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Domain") {
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
            if dict.keys.contains("DeadDate") {
                self.deadDate = dict["DeadDate"] as! Int64
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Premium") {
                self.premium = dict["Premium"] as! Bool
            }
            if dict.keys.contains("Price") {
                self.price = dict["Price"] as! Double
            }
            if dict.keys.contains("RegDate") {
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") {
            var model = CheckSelectedDomainStatusResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ContactId") {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Source") {
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
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("OrderNo") {
                self.orderNo = dict["OrderNo"] as! String
            }
            if dict.keys.contains("Price") {
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") {
            var model = CreateFixedPriceDemandOrderResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ContactId") {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("ExpectedPrice") {
            self.expectedPrice = dict["ExpectedPrice"] as! Double
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
    }
}

public class CreateFixedPriceSelectedOrderResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public var domain: String?

        public var domainBlockTrade: [String]?

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
            if self.domainBlockTrade != nil {
                map["DomainBlockTrade"] = self.domainBlockTrade!
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
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("DomainBlockTrade") {
                self.domainBlockTrade = dict["DomainBlockTrade"] as! [String]
            }
            if dict.keys.contains("OrderNo") {
                self.orderNo = dict["OrderNo"] as! String
            }
            if dict.keys.contains("Price") {
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") {
            var model = CreateFixedPriceSelectedOrderResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Message") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Message") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("AllowRetry") {
            self.allowRetry = dict["AllowRetry"] as! Bool
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorArgs") {
            self.errorArgs = dict["ErrorArgs"] as! [Any]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Url") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Url") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("AuctionId") {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("Price") {
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
        if dict.keys.contains("AllowRetry") {
            self.allowRetry = dict["AllowRetry"] as! Bool
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AuctionId") {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorArgs") {
            self.errorArgs = dict["ErrorArgs"] as! [Any]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("AuctionId") {
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
        if dict.keys.contains("AuctionEndTime") {
            self.auctionEndTime = dict["AuctionEndTime"] as! Int64
        }
        if dict.keys.contains("AuctionId") {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("BookEndTime") {
            self.bookEndTime = dict["BookEndTime"] as! Int64
        }
        if dict.keys.contains("BookedPartner") {
            self.bookedPartner = dict["BookedPartner"] as! String
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("DeliveryTime") {
            self.deliveryTime = dict["DeliveryTime"] as! Int64
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainType") {
            self.domainType = dict["DomainType"] as! String
        }
        if dict.keys.contains("FailCode") {
            self.failCode = dict["FailCode"] as! String
        }
        if dict.keys.contains("HighBid") {
            self.highBid = dict["HighBid"] as! Double
        }
        if dict.keys.contains("HighBidder") {
            self.highBidder = dict["HighBidder"] as! String
        }
        if dict.keys.contains("NextValidBid") {
            self.nextValidBid = dict["NextValidBid"] as! Double
        }
        if dict.keys.contains("PartnerType") {
            self.partnerType = dict["PartnerType"] as! String
        }
        if dict.keys.contains("PayEndTime") {
            self.payEndTime = dict["PayEndTime"] as! Int64
        }
        if dict.keys.contains("PayPrice") {
            self.payPrice = dict["PayPrice"] as! Double
        }
        if dict.keys.contains("PayStatus") {
            self.payStatus = dict["PayStatus"] as! String
        }
        if dict.keys.contains("ProduceStatus") {
            self.produceStatus = dict["ProduceStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ReserveMet") {
            self.reserveMet = dict["ReserveMet"] as! Bool
        }
        if dict.keys.contains("ReservePrice") {
            self.reservePrice = dict["ReservePrice"] as! Double
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TransferInPrice") {
            self.transferInPrice = dict["TransferInPrice"] as! Double
        }
        if dict.keys.contains("YourCurrentBid") {
            self.yourCurrentBid = dict["YourCurrentBid"] as! Double
        }
        if dict.keys.contains("YourMaxBid") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryAuctionDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAuctionsRequest : Tea.TeaModel {
    public var auctionEndTimeOrder: String?

    public var currentPage: Int32?

    public var pageSize: Int32?

    public var status: String?

    public var statuses: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auctionEndTimeOrder != nil {
            map["AuctionEndTimeOrder"] = self.auctionEndTimeOrder!
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
        if self.statuses != nil {
            map["Statuses"] = self.statuses!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuctionEndTimeOrder") {
            self.auctionEndTimeOrder = dict["AuctionEndTimeOrder"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Statuses") {
            self.statuses = dict["Statuses"] as! String
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
            if dict.keys.contains("AuctionEndTime") {
                self.auctionEndTime = dict["AuctionEndTime"] as! Int64
            }
            if dict.keys.contains("AuctionId") {
                self.auctionId = dict["AuctionId"] as! String
            }
            if dict.keys.contains("BookEndTime") {
                self.bookEndTime = dict["BookEndTime"] as! Int64
            }
            if dict.keys.contains("BookedPartner") {
                self.bookedPartner = dict["BookedPartner"] as! String
            }
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("DeliveryTime") {
                self.deliveryTime = dict["DeliveryTime"] as! Int64
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("DomainType") {
                self.domainType = dict["DomainType"] as! String
            }
            if dict.keys.contains("FailCode") {
                self.failCode = dict["FailCode"] as! String
            }
            if dict.keys.contains("HighBid") {
                self.highBid = dict["HighBid"] as! Double
            }
            if dict.keys.contains("HighBidder") {
                self.highBidder = dict["HighBidder"] as! String
            }
            if dict.keys.contains("NextValidBid") {
                self.nextValidBid = dict["NextValidBid"] as! Double
            }
            if dict.keys.contains("PartnerType") {
                self.partnerType = dict["PartnerType"] as! String
            }
            if dict.keys.contains("PayEndTime") {
                self.payEndTime = dict["PayEndTime"] as! Int64
            }
            if dict.keys.contains("PayPrice") {
                self.payPrice = dict["PayPrice"] as! Double
            }
            if dict.keys.contains("PayStatus") {
                self.payStatus = dict["PayStatus"] as! String
            }
            if dict.keys.contains("ProduceStatus") {
                self.produceStatus = dict["ProduceStatus"] as! String
            }
            if dict.keys.contains("ReserveMax") {
                self.reserveMax = dict["ReserveMax"] as! Int64
            }
            if dict.keys.contains("ReserveMet") {
                self.reserveMet = dict["ReserveMet"] as! Bool
            }
            if dict.keys.contains("ReserveMin") {
                self.reserveMin = dict["ReserveMin"] as! Int64
            }
            if dict.keys.contains("ReservePrice") {
                self.reservePrice = dict["ReservePrice"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TransferInPrice") {
                self.transferInPrice = dict["TransferInPrice"] as! Double
            }
            if dict.keys.contains("YourCurrentBid") {
                self.yourCurrentBid = dict["YourCurrentBid"] as! Double
            }
            if dict.keys.contains("YourMaxBid") {
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
        if dict.keys.contains("CurrentPageNum") {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") {
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
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("AuctionId") {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
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
            if dict.keys.contains("Bid") {
                self.bid = dict["Bid"] as! Double
            }
            if dict.keys.contains("BidTime") {
                self.bidTime = dict["BidTime"] as! Int64
            }
            if dict.keys.contains("Bidder") {
                self.bidder = dict["Bidder"] as! String
            }
            if dict.keys.contains("Currency") {
                self.currency = dict["Currency"] as! String
            }
            if dict.keys.contains("DomainName") {
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
        if dict.keys.contains("CurrentPageNum") {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") {
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
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
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
        if dict.keys.contains("AuctionId") {
            self.auctionId = dict["AuctionId"] as! Int32
        }
        if dict.keys.contains("BookEndTime") {
            self.bookEndTime = dict["BookEndTime"] as! Int64
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("MaxBid") {
            self.maxBid = dict["MaxBid"] as! Double
        }
        if dict.keys.contains("PartnerType") {
            self.partnerType = dict["PartnerType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SnatchNo") {
            self.snatchNo = dict["SnatchNo"] as! String
        }
        if dict.keys.contains("TransferInPrice") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
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

        public var settleBasePrice: Double?

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
            if self.settleBasePrice != nil {
                map["SettleBasePrice"] = self.settleBasePrice!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuditStatus") {
                self.auditStatus = dict["AuditStatus"] as! Int32
            }
            if dict.keys.contains("BargainSellerMobile") {
                self.bargainSellerMobile = dict["BargainSellerMobile"] as! String
            }
            if dict.keys.contains("BargainSellerPrice") {
                self.bargainSellerPrice = dict["BargainSellerPrice"] as! Double
            }
            if dict.keys.contains("BizId") {
                self.bizId = dict["BizId"] as! String
            }
            if dict.keys.contains("DemandDomain") {
                self.demandDomain = dict["DemandDomain"] as! String
            }
            if dict.keys.contains("DemandPrice") {
                self.demandPrice = dict["DemandPrice"] as! Double
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("OrderType") {
                self.orderType = dict["OrderType"] as! Int32
            }
            if dict.keys.contains("PartnerDomain") {
                self.partnerDomain = dict["PartnerDomain"] as! String
            }
            if dict.keys.contains("PayDomain") {
                self.payDomain = dict["PayDomain"] as! String
            }
            if dict.keys.contains("PayPrice") {
                self.payPrice = dict["PayPrice"] as! Double
            }
            if dict.keys.contains("PayTime") {
                self.payTime = dict["PayTime"] as! Int64
            }
            if dict.keys.contains("ProduceType") {
                self.produceType = dict["ProduceType"] as! Int32
            }
            if dict.keys.contains("PublishTime") {
                self.publishTime = dict["PublishTime"] as! Int64
            }
            if dict.keys.contains("PurchaseStatus") {
                self.purchaseStatus = dict["PurchaseStatus"] as! Int32
            }
            if dict.keys.contains("ServicePayPrice") {
                self.servicePayPrice = dict["ServicePayPrice"] as! Double
            }
            if dict.keys.contains("SettleBasePrice") {
                self.settleBasePrice = dict["SettleBasePrice"] as! Double
            }
            if dict.keys.contains("Status") {
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
        if dict.keys.contains("CurrentPageNum") {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") {
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
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
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
                if dict.keys.contains("BizId") {
                    self.bizId = dict["BizId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Description") {
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
            if dict.keys.contains("BrokerDemandRecord") {
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
        if dict.keys.contains("CurrentPageNum") {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = QueryBrokerDemandRecordResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
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
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("DomainStatusDescription") {
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
        if dict.keys.contains("DomainTransferStatus") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDomainTransferStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryExchangeRateRequest : Tea.TeaModel {
    public var fromCurrency: String?

    public var toCurrency: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromCurrency != nil {
            map["FromCurrency"] = self.fromCurrency!
        }
        if self.toCurrency != nil {
            map["ToCurrency"] = self.toCurrency!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FromCurrency") {
            self.fromCurrency = dict["FromCurrency"] as! String
        }
        if dict.keys.contains("ToCurrency") {
            self.toCurrency = dict["ToCurrency"] as! String
        }
    }
}

public class QueryExchangeRateResponseBody : Tea.TeaModel {
    public var exchangeRate: Double?

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
        if self.exchangeRate != nil {
            map["ExchangeRate"] = self.exchangeRate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExchangeRate") {
            self.exchangeRate = dict["ExchangeRate"] as! Double
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryExchangeRateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryExchangeRateResponseBody?

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
            var model = QueryExchangeRateResponseBody()
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
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndOperationTime") {
            self.endOperationTime = dict["EndOperationTime"] as! String
        }
        if dict.keys.contains("OpTimeOrder") {
            self.opTimeOrder = dict["OpTimeOrder"] as! Bool
        }
        if dict.keys.contains("OperationStatus") {
            self.operationStatus = dict["OperationStatus"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! Int32
        }
        if dict.keys.contains("StartOperationTime") {
            self.startOperationTime = dict["StartOperationTime"] as! String
        }
        if dict.keys.contains("UpdateTimeOrder") {
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
            if dict.keys.contains("DeliveryTime") {
                self.deliveryTime = dict["DeliveryTime"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("OperationStatus") {
                self.operationStatus = dict["OperationStatus"] as! String
            }
            if dict.keys.contains("OperationTime") {
                self.operationTime = dict["OperationTime"] as! String
            }
            if dict.keys.contains("ProductType") {
                self.productType = dict["ProductType"] as! String
            }
            if dict.keys.contains("TradeMoney") {
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
        if dict.keys.contains("CurrentPageNum") {
            self.currentPageNum = dict["CurrentPageNum"] as! Int32
        }
        if dict.keys.contains("Data") {
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
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalItemNum") {
            self.totalItemNum = dict["TotalItemNum"] as! Int32
        }
        if dict.keys.contains("TotalPageNum") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Message") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Message") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Price") {
            self.price = dict["Price"] as! Double
        }
        if dict.keys.contains("ProduceType") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("Channels") {
            self.channels = dict["Channels"] as! [String]
        }
        if dict.keys.contains("DomainName") {
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
        if dict.keys.contains("AuctionId") {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DomainName") {
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
        if dict.keys.contains("AllowRetry") {
            self.allowRetry = dict["AllowRetry"] as! Bool
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AuctionId") {
            self.auctionId = dict["AuctionId"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorArgs") {
            self.errorArgs = dict["ErrorArgs"] as! [Any]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("ListDate") {
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
            if dict.keys.contains("DownloadUrl") {
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
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("Module") {
            var model = SelectedDomainListResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("PurchaseCurrency") {
            self.purchaseCurrency = dict["PurchaseCurrency"] as! String
        }
        if dict.keys.contains("PurchasePrice") {
            self.purchasePrice = dict["PurchasePrice"] as! Double
        }
        if dict.keys.contains("PurchaseProofs") {
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
        if dict.keys.contains("AllowRetry") {
            self.allowRetry = dict["AllowRetry"] as! Bool
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("DynamicCode") {
            self.dynamicCode = dict["DynamicCode"] as! String
        }
        if dict.keys.contains("DynamicMessage") {
            self.dynamicMessage = dict["DynamicMessage"] as! String
        }
        if dict.keys.contains("ErrorArgs") {
            self.errorArgs = dict["ErrorArgs"] as! [Any]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Module") {
            self.module = dict["Module"] as! Any
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("BiddingId") {
            self.biddingId = dict["BiddingId"] as! Int32
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("PartnerType") {
            self.partnerType = dict["PartnerType"] as! String
        }
        if dict.keys.contains("ReservePrice") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdatePartnerReservePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
