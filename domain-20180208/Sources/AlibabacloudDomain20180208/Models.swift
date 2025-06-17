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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindUrl"] as? String {
            self.bindUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AcceptDemandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchIntrudeDomainsRequest : Tea.TeaModel {
    public var domainNames: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainNames != nil {
            map["DomainNames"] = self.domainNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainNames"] as? [String] {
            self.domainNames = value
        }
    }
}

public class BatchIntrudeDomainsShrinkRequest : Tea.TeaModel {
    public var domainNamesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainNamesShrink != nil {
            map["DomainNames"] = self.domainNamesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainNames"] as? String {
            self.domainNamesShrink = value
        }
    }
}

public class BatchIntrudeDomainsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FailureList : Tea.TeaModel {
            public var domainName: String?

            public var errorCode: String?

            public var errorMsg: String?

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
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorMsg"] as? String {
                    self.errorMsg = value
                }
                if let value = dict["Success"] as? Bool {
                    self.success = value
                }
            }
        }
        public class SuccessList : Tea.TeaModel {
            public var domainName: String?

            public var errorCode: String?

            public var errorMsg: String?

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
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorMsg"] as? String {
                    self.errorMsg = value
                }
                if let value = dict["Success"] as? Bool {
                    self.success = value
                }
            }
        }
        public var failureCount: Int32?

        public var failureList: [BatchIntrudeDomainsResponseBody.Data.FailureList]?

        public var successCount: Int32?

        public var successList: [BatchIntrudeDomainsResponseBody.Data.SuccessList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failureCount != nil {
                map["FailureCount"] = self.failureCount!
            }
            if self.failureList != nil {
                var tmp : [Any] = []
                for k in self.failureList! {
                    tmp.append(k.toMap())
                }
                map["FailureList"] = tmp
            }
            if self.successCount != nil {
                map["SuccessCount"] = self.successCount!
            }
            if self.successList != nil {
                var tmp : [Any] = []
                for k in self.successList! {
                    tmp.append(k.toMap())
                }
                map["SuccessList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailureCount"] as? Int32 {
                self.failureCount = value
            }
            if let value = dict["FailureList"] as? [Any?] {
                var tmp : [BatchIntrudeDomainsResponseBody.Data.FailureList] = []
                for v in value {
                    if v != nil {
                        var model = BatchIntrudeDomainsResponseBody.Data.FailureList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.failureList = tmp
            }
            if let value = dict["SuccessCount"] as? Int32 {
                self.successCount = value
            }
            if let value = dict["SuccessList"] as? [Any?] {
                var tmp : [BatchIntrudeDomainsResponseBody.Data.SuccessList] = []
                for v in value {
                    if v != nil {
                        var model = BatchIntrudeDomainsResponseBody.Data.SuccessList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.successList = tmp
            }
        }
    }
    public var data: BatchIntrudeDomainsResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = BatchIntrudeDomainsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BatchIntrudeDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchIntrudeDomainsResponseBody?

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
            var model = BatchIntrudeDomainsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuctionId"] as? String {
            self.auctionId = value
        }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["MaxBid"] as? Double {
            self.maxBid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuctionId"] as? String {
            self.auctionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BidDomainResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Price"] as? Double {
                    self.price = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BidRecords"] as? [Any?] {
                var tmp : [ChangeAuctionRequest.AuctionList.BidRecords] = []
                for v in value {
                    if v != nil {
                        var model = ChangeAuctionRequest.AuctionList.BidRecords()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bidRecords = tmp
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["IsReserve"] as? Int32 {
                self.isReserve = value
            }
            if let value = dict["ReservePrice"] as? Double {
                self.reservePrice = value
            }
            if let value = dict["ReserveRange"] as? String {
                self.reserveRange = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TimeLeft"] as? Int64 {
                self.timeLeft = value
            }
            if let value = dict["Winner"] as? String {
                self.winner = value
            }
            if let value = dict["WinnerPrice"] as? Double {
                self.winnerPrice = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuctionList"] as? [Any?] {
            var tmp : [ChangeAuctionRequest.AuctionList] = []
            for v in value {
                if v != nil {
                    var model = ChangeAuctionRequest.AuctionList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangeAuctionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeadDate"] as? Int64 {
                self.deadDate = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["Price"] as? Double {
                self.price = value
            }
            if let value = dict["RegDate"] as? Int64 {
                self.regDate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CheckDomainStatusResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckDomainStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeadDate"] as? Int64 {
                self.deadDate = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["Premium"] as? Bool {
                self.premium = value
            }
            if let value = dict["Price"] as? Double {
                self.price = value
            }
            if let value = dict["RegDate"] as? Int64 {
                self.regDate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CheckSelectedDomainStatusResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckSelectedDomainStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["OrderNo"] as? String {
                self.orderNo = value
            }
            if let value = dict["Price"] as? Int64 {
                self.price = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CreateFixedPriceDemandOrderResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFixedPriceDemandOrderResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["ExpectedPrice"] as? Double {
            self.expectedPrice = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["DomainBlockTrade"] as? [String] {
                self.domainBlockTrade = value
            }
            if let value = dict["OrderNo"] as? String {
                self.orderNo = value
            }
            if let value = dict["Price"] as? Int64 {
                self.price = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = CreateFixedPriceSelectedOrderResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFixedPriceSelectedOrderResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FailDemandResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FinishDemandResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetIntlDomainDownloadUrlResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetReserveDomainUrlResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuctionId"] as? String {
            self.auctionId = value
        }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["Price"] as? Double {
            self.price = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AuctionId"] as? String {
            self.auctionId = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PurchaseIntlDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuctionId"] as? String {
            self.auctionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuctionEndTime"] as? Int64 {
            self.auctionEndTime = value
        }
        if let value = dict["AuctionId"] as? String {
            self.auctionId = value
        }
        if let value = dict["BookEndTime"] as? Int64 {
            self.bookEndTime = value
        }
        if let value = dict["BookedPartner"] as? String {
            self.bookedPartner = value
        }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["DeliveryTime"] as? Int64 {
            self.deliveryTime = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["DomainType"] as? String {
            self.domainType = value
        }
        if let value = dict["FailCode"] as? String {
            self.failCode = value
        }
        if let value = dict["HighBid"] as? Double {
            self.highBid = value
        }
        if let value = dict["HighBidder"] as? String {
            self.highBidder = value
        }
        if let value = dict["NextValidBid"] as? Double {
            self.nextValidBid = value
        }
        if let value = dict["PartnerType"] as? String {
            self.partnerType = value
        }
        if let value = dict["PayEndTime"] as? Int64 {
            self.payEndTime = value
        }
        if let value = dict["PayPrice"] as? Double {
            self.payPrice = value
        }
        if let value = dict["PayStatus"] as? String {
            self.payStatus = value
        }
        if let value = dict["ProduceStatus"] as? String {
            self.produceStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ReserveMet"] as? Bool {
            self.reserveMet = value
        }
        if let value = dict["ReservePrice"] as? Double {
            self.reservePrice = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TransferInPrice"] as? Double {
            self.transferInPrice = value
        }
        if let value = dict["YourCurrentBid"] as? Double {
            self.yourCurrentBid = value
        }
        if let value = dict["YourMaxBid"] as? Double {
            self.yourMaxBid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryAuctionDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuctionEndTimeOrder"] as? String {
            self.auctionEndTimeOrder = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Statuses"] as? String {
            self.statuses = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuctionEndTime"] as? Int64 {
                self.auctionEndTime = value
            }
            if let value = dict["AuctionId"] as? String {
                self.auctionId = value
            }
            if let value = dict["BookEndTime"] as? Int64 {
                self.bookEndTime = value
            }
            if let value = dict["BookedPartner"] as? String {
                self.bookedPartner = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DeliveryTime"] as? Int64 {
                self.deliveryTime = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["DomainType"] as? String {
                self.domainType = value
            }
            if let value = dict["FailCode"] as? String {
                self.failCode = value
            }
            if let value = dict["HighBid"] as? Double {
                self.highBid = value
            }
            if let value = dict["HighBidder"] as? String {
                self.highBidder = value
            }
            if let value = dict["NextValidBid"] as? Double {
                self.nextValidBid = value
            }
            if let value = dict["PartnerType"] as? String {
                self.partnerType = value
            }
            if let value = dict["PayEndTime"] as? Int64 {
                self.payEndTime = value
            }
            if let value = dict["PayPrice"] as? Double {
                self.payPrice = value
            }
            if let value = dict["PayStatus"] as? String {
                self.payStatus = value
            }
            if let value = dict["ProduceStatus"] as? String {
                self.produceStatus = value
            }
            if let value = dict["ReserveMax"] as? Int64 {
                self.reserveMax = value
            }
            if let value = dict["ReserveMet"] as? Bool {
                self.reserveMet = value
            }
            if let value = dict["ReserveMin"] as? Int64 {
                self.reserveMin = value
            }
            if let value = dict["ReservePrice"] as? Int64 {
                self.reservePrice = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TransferInPrice"] as? Double {
                self.transferInPrice = value
            }
            if let value = dict["YourCurrentBid"] as? Double {
                self.yourCurrentBid = value
            }
            if let value = dict["YourMaxBid"] as? Double {
                self.yourMaxBid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryAuctionsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryAuctionsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryAuctionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuctionId"] as? String {
            self.auctionId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bid"] as? Double {
                self.bid = value
            }
            if let value = dict["BidTime"] as? Int64 {
                self.bidTime = value
            }
            if let value = dict["Bidder"] as? String {
                self.bidder = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryBidRecordsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryBidRecordsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryBidRecordsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuctionId"] as? Int32 {
            self.auctionId = value
        }
        if let value = dict["BookEndTime"] as? Int64 {
            self.bookEndTime = value
        }
        if let value = dict["Currency"] as? String {
            self.currency = value
        }
        if let value = dict["MaxBid"] as? Double {
            self.maxBid = value
        }
        if let value = dict["PartnerType"] as? String {
            self.partnerType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SnatchNo"] as? String {
            self.snatchNo = value
        }
        if let value = dict["TransferInPrice"] as? Double {
            self.transferInPrice = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryBookingDomainInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditStatus"] as? Int32 {
                self.auditStatus = value
            }
            if let value = dict["BargainSellerMobile"] as? String {
                self.bargainSellerMobile = value
            }
            if let value = dict["BargainSellerPrice"] as? Double {
                self.bargainSellerPrice = value
            }
            if let value = dict["BizId"] as? String {
                self.bizId = value
            }
            if let value = dict["DemandDomain"] as? String {
                self.demandDomain = value
            }
            if let value = dict["DemandPrice"] as? Double {
                self.demandPrice = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Mobile"] as? String {
                self.mobile = value
            }
            if let value = dict["OrderType"] as? Int32 {
                self.orderType = value
            }
            if let value = dict["PartnerDomain"] as? String {
                self.partnerDomain = value
            }
            if let value = dict["PayDomain"] as? String {
                self.payDomain = value
            }
            if let value = dict["PayPrice"] as? Double {
                self.payPrice = value
            }
            if let value = dict["PayTime"] as? Int64 {
                self.payTime = value
            }
            if let value = dict["ProduceType"] as? Int32 {
                self.produceType = value
            }
            if let value = dict["PublishTime"] as? Int64 {
                self.publishTime = value
            }
            if let value = dict["PurchaseStatus"] as? Int32 {
                self.purchaseStatus = value
            }
            if let value = dict["ServicePayPrice"] as? Double {
                self.servicePayPrice = value
            }
            if let value = dict["SettleBasePrice"] as? Double {
                self.settleBasePrice = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryBrokerDemandResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryBrokerDemandResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryBrokerDemandResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BizId"] as? String {
                    self.bizId = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BrokerDemandRecord"] as? [Any?] {
                var tmp : [QueryBrokerDemandRecordResponseBody.Data.BrokerDemandRecord] = []
                for v in value {
                    if v != nil {
                        var model = QueryBrokerDemandRecordResponseBody.Data.BrokerDemandRecord()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryBrokerDemandRecordResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryBrokerDemandRecordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["DomainStatusDescription"] as? String {
                self.domainStatusDescription = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainTransferStatus"] as? [Any?] {
            var tmp : [QueryDomainTransferStatusResponseBody.DomainTransferStatus] = []
            for v in value {
                if v != nil {
                    var model = QueryDomainTransferStatusResponseBody.DomainTransferStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.domainTransferStatus = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryDomainTransferStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FromCurrency"] as? String {
            self.fromCurrency = value
        }
        if let value = dict["ToCurrency"] as? String {
            self.toCurrency = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExchangeRate"] as? Double {
            self.exchangeRate = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryExchangeRateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryExportAuctionDetailRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuctionId"] as? String {
            self.auctionId = value
        }
    }
}

public class QueryExportAuctionDetailResponseBody : Tea.TeaModel {
    public var auctionEndTime: String?

    public var auctionId: String?

    public var auctionStatus: String?

    public var bookEndTime: String?

    public var buyerStatus: String?

    public var currentPrice: Double?

    public var increasePrice: Double?

    public var myPrice: Double?

    public var myProxyPrice: Double?

    public var othersMaxProxyPrice: Double?

    public var proxyPrice: Double?

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
        if self.auctionEndTime != nil {
            map["AuctionEndTime"] = self.auctionEndTime!
        }
        if self.auctionId != nil {
            map["AuctionId"] = self.auctionId!
        }
        if self.auctionStatus != nil {
            map["AuctionStatus"] = self.auctionStatus!
        }
        if self.bookEndTime != nil {
            map["BookEndTime"] = self.bookEndTime!
        }
        if self.buyerStatus != nil {
            map["BuyerStatus"] = self.buyerStatus!
        }
        if self.currentPrice != nil {
            map["CurrentPrice"] = self.currentPrice!
        }
        if self.increasePrice != nil {
            map["IncreasePrice"] = self.increasePrice!
        }
        if self.myPrice != nil {
            map["MyPrice"] = self.myPrice!
        }
        if self.myProxyPrice != nil {
            map["MyProxyPrice"] = self.myProxyPrice!
        }
        if self.othersMaxProxyPrice != nil {
            map["OthersMaxProxyPrice"] = self.othersMaxProxyPrice!
        }
        if self.proxyPrice != nil {
            map["ProxyPrice"] = self.proxyPrice!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuctionEndTime"] as? String {
            self.auctionEndTime = value
        }
        if let value = dict["AuctionId"] as? String {
            self.auctionId = value
        }
        if let value = dict["AuctionStatus"] as? String {
            self.auctionStatus = value
        }
        if let value = dict["BookEndTime"] as? String {
            self.bookEndTime = value
        }
        if let value = dict["BuyerStatus"] as? String {
            self.buyerStatus = value
        }
        if let value = dict["CurrentPrice"] as? Double {
            self.currentPrice = value
        }
        if let value = dict["IncreasePrice"] as? Double {
            self.increasePrice = value
        }
        if let value = dict["MyPrice"] as? Double {
            self.myPrice = value
        }
        if let value = dict["MyProxyPrice"] as? Double {
            self.myProxyPrice = value
        }
        if let value = dict["OthersMaxProxyPrice"] as? Double {
            self.othersMaxProxyPrice = value
        }
        if let value = dict["ProxyPrice"] as? Double {
            self.proxyPrice = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryExportAuctionDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryExportAuctionDetailResponseBody?

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
            var model = QueryExportAuctionDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryExportDomainExpireSnatchsRequest : Tea.TeaModel {
    public var currentId: Int64?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.currentId != nil {
            map["CurrentId"] = self.currentId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentId"] as? Int64 {
            self.currentId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryExportDomainExpireSnatchsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var auctionEndTime: String?

        public var auctionRemainingSeconds: Int64?

        public var baiduAntiLink: Int32?

        public var baiduExLink: Int32?

        public var baiduIndex: Int32?

        public var baiduWeight: Int32?

        public var bookEndTime: String?

        public var bookRemainingSeconds: Int64?

        public var bookedNum: Int32?

        public var bookedPartners: String?

        public var constitute: String?

        public var currencyType: String?

        public var deliveryTime: String?

        public var domainId: String?

        public var domainLen: Int32?

        public var domainName: String?

        public var domainType: String?

        public var endDate: String?

        public var expireDate: String?

        public var extend: String?

        public var freezeAmount: Double?

        public var introduction: String?

        public var isPremium: Bool?

        public var partnerTypes: String?

        public var price: Double?

        public var productId: String?

        public var publishTime: String?

        public var regDate: String?

        public var renewPrice: Double?

        public var reserved: Bool?

        public var rmbPrice: Double?

        public var s360Weight: Int32?

        public var seoAttributes: String?

        public var shortName: String?

        public var snatchNo: String?

        public var snatchTypeDesc: String?

        public var sougouAntiLink: Int32?

        public var sougouIndex: Int32?

        public var sougouWeight: Int32?

        public var suffix: String?

        public var weight: Int32?

        public override init() {
            super.init()
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
            if self.auctionRemainingSeconds != nil {
                map["AuctionRemainingSeconds"] = self.auctionRemainingSeconds!
            }
            if self.baiduAntiLink != nil {
                map["BaiduAntiLink"] = self.baiduAntiLink!
            }
            if self.baiduExLink != nil {
                map["BaiduExLink"] = self.baiduExLink!
            }
            if self.baiduIndex != nil {
                map["BaiduIndex"] = self.baiduIndex!
            }
            if self.baiduWeight != nil {
                map["BaiduWeight"] = self.baiduWeight!
            }
            if self.bookEndTime != nil {
                map["BookEndTime"] = self.bookEndTime!
            }
            if self.bookRemainingSeconds != nil {
                map["BookRemainingSeconds"] = self.bookRemainingSeconds!
            }
            if self.bookedNum != nil {
                map["BookedNum"] = self.bookedNum!
            }
            if self.bookedPartners != nil {
                map["BookedPartners"] = self.bookedPartners!
            }
            if self.constitute != nil {
                map["Constitute"] = self.constitute!
            }
            if self.currencyType != nil {
                map["CurrencyType"] = self.currencyType!
            }
            if self.deliveryTime != nil {
                map["DeliveryTime"] = self.deliveryTime!
            }
            if self.domainId != nil {
                map["DomainId"] = self.domainId!
            }
            if self.domainLen != nil {
                map["DomainLen"] = self.domainLen!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.domainType != nil {
                map["DomainType"] = self.domainType!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.expireDate != nil {
                map["ExpireDate"] = self.expireDate!
            }
            if self.extend != nil {
                map["Extend"] = self.extend!
            }
            if self.freezeAmount != nil {
                map["FreezeAmount"] = self.freezeAmount!
            }
            if self.introduction != nil {
                map["Introduction"] = self.introduction!
            }
            if self.isPremium != nil {
                map["IsPremium"] = self.isPremium!
            }
            if self.partnerTypes != nil {
                map["PartnerTypes"] = self.partnerTypes!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.publishTime != nil {
                map["PublishTime"] = self.publishTime!
            }
            if self.regDate != nil {
                map["RegDate"] = self.regDate!
            }
            if self.renewPrice != nil {
                map["RenewPrice"] = self.renewPrice!
            }
            if self.reserved != nil {
                map["Reserved"] = self.reserved!
            }
            if self.rmbPrice != nil {
                map["RmbPrice"] = self.rmbPrice!
            }
            if self.s360Weight != nil {
                map["S360Weight"] = self.s360Weight!
            }
            if self.seoAttributes != nil {
                map["SeoAttributes"] = self.seoAttributes!
            }
            if self.shortName != nil {
                map["ShortName"] = self.shortName!
            }
            if self.snatchNo != nil {
                map["SnatchNo"] = self.snatchNo!
            }
            if self.snatchTypeDesc != nil {
                map["SnatchTypeDesc"] = self.snatchTypeDesc!
            }
            if self.sougouAntiLink != nil {
                map["SougouAntiLink"] = self.sougouAntiLink!
            }
            if self.sougouIndex != nil {
                map["SougouIndex"] = self.sougouIndex!
            }
            if self.sougouWeight != nil {
                map["SougouWeight"] = self.sougouWeight!
            }
            if self.suffix != nil {
                map["Suffix"] = self.suffix!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuctionEndTime"] as? String {
                self.auctionEndTime = value
            }
            if let value = dict["AuctionRemainingSeconds"] as? Int64 {
                self.auctionRemainingSeconds = value
            }
            if let value = dict["BaiduAntiLink"] as? Int32 {
                self.baiduAntiLink = value
            }
            if let value = dict["BaiduExLink"] as? Int32 {
                self.baiduExLink = value
            }
            if let value = dict["BaiduIndex"] as? Int32 {
                self.baiduIndex = value
            }
            if let value = dict["BaiduWeight"] as? Int32 {
                self.baiduWeight = value
            }
            if let value = dict["BookEndTime"] as? String {
                self.bookEndTime = value
            }
            if let value = dict["BookRemainingSeconds"] as? Int64 {
                self.bookRemainingSeconds = value
            }
            if let value = dict["BookedNum"] as? Int32 {
                self.bookedNum = value
            }
            if let value = dict["BookedPartners"] as? String {
                self.bookedPartners = value
            }
            if let value = dict["Constitute"] as? String {
                self.constitute = value
            }
            if let value = dict["CurrencyType"] as? String {
                self.currencyType = value
            }
            if let value = dict["DeliveryTime"] as? String {
                self.deliveryTime = value
            }
            if let value = dict["DomainId"] as? String {
                self.domainId = value
            }
            if let value = dict["DomainLen"] as? Int32 {
                self.domainLen = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["DomainType"] as? String {
                self.domainType = value
            }
            if let value = dict["EndDate"] as? String {
                self.endDate = value
            }
            if let value = dict["ExpireDate"] as? String {
                self.expireDate = value
            }
            if let value = dict["Extend"] as? String {
                self.extend = value
            }
            if let value = dict["FreezeAmount"] as? Double {
                self.freezeAmount = value
            }
            if let value = dict["Introduction"] as? String {
                self.introduction = value
            }
            if let value = dict["IsPremium"] as? Bool {
                self.isPremium = value
            }
            if let value = dict["PartnerTypes"] as? String {
                self.partnerTypes = value
            }
            if let value = dict["Price"] as? Double {
                self.price = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["PublishTime"] as? String {
                self.publishTime = value
            }
            if let value = dict["RegDate"] as? String {
                self.regDate = value
            }
            if let value = dict["RenewPrice"] as? Double {
                self.renewPrice = value
            }
            if let value = dict["Reserved"] as? Bool {
                self.reserved = value
            }
            if let value = dict["RmbPrice"] as? Double {
                self.rmbPrice = value
            }
            if let value = dict["S360Weight"] as? Int32 {
                self.s360Weight = value
            }
            if let value = dict["SeoAttributes"] as? String {
                self.seoAttributes = value
            }
            if let value = dict["ShortName"] as? String {
                self.shortName = value
            }
            if let value = dict["SnatchNo"] as? String {
                self.snatchNo = value
            }
            if let value = dict["SnatchTypeDesc"] as? String {
                self.snatchTypeDesc = value
            }
            if let value = dict["SougouAntiLink"] as? Int32 {
                self.sougouAntiLink = value
            }
            if let value = dict["SougouIndex"] as? Int32 {
                self.sougouIndex = value
            }
            if let value = dict["SougouWeight"] as? Int32 {
                self.sougouWeight = value
            }
            if let value = dict["Suffix"] as? String {
                self.suffix = value
            }
            if let value = dict["Weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public var data: [QueryExportDomainExpireSnatchsResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryExportDomainExpireSnatchsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryExportDomainExpireSnatchsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryExportDomainExpireSnatchsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryExportDomainExpireSnatchsResponseBody?

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
            var model = QueryExportDomainExpireSnatchsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["EndOperationTime"] as? String {
            self.endOperationTime = value
        }
        if let value = dict["OpTimeOrder"] as? Bool {
            self.opTimeOrder = value
        }
        if let value = dict["OperationStatus"] as? Int32 {
            self.operationStatus = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductType"] as? Int32 {
            self.productType = value
        }
        if let value = dict["StartOperationTime"] as? String {
            self.startOperationTime = value
        }
        if let value = dict["UpdateTimeOrder"] as? Bool {
            self.updateTimeOrder = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeliveryTime"] as? String {
                self.deliveryTime = value
            }
            if let value = dict["DomainName"] as? String {
                self.domainName = value
            }
            if let value = dict["OperationStatus"] as? String {
                self.operationStatus = value
            }
            if let value = dict["OperationTime"] as? String {
                self.operationTime = value
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["TradeMoney"] as? Double {
                self.tradeMoney = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryPurchasedDomainsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryPurchasedDomainsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalItemNum"] as? Int32 {
            self.totalItemNum = value
        }
        if let value = dict["TotalPageNum"] as? Int32 {
            self.totalPageNum = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryPurchasedDomainsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RecordDemandResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RefuseDemandResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Price"] as? Double {
            self.price = value
        }
        if let value = dict["ProduceType"] as? Int32 {
            self.produceType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RequestPayDemandResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Channels"] as? [String] {
            self.channels = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuctionId"] as? String {
            self.auctionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReserveDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AuctionId"] as? String {
            self.auctionId = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReserveIntlDomainResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListDate"] as? String {
            self.listDate = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Module"] as? [String: Any?] {
            var model = SelectedDomainListResponseBody.Module()
            model.fromMap(value)
            self.module = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SelectedDomainListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["PurchaseCurrency"] as? String {
            self.purchaseCurrency = value
        }
        if let value = dict["PurchasePrice"] as? Double {
            self.purchasePrice = value
        }
        if let value = dict["PurchaseProofs"] as? [String] {
            self.purchaseProofs = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowRetry"] as? Bool {
            self.allowRetry = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DynamicCode"] as? String {
            self.dynamicCode = value
        }
        if let value = dict["DynamicMessage"] as? String {
            self.dynamicMessage = value
        }
        if let value = dict["ErrorArgs"] as? [Any] {
            self.errorArgs = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Module"] as? Any {
            self.module = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SubmitPurchaseInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BiddingId"] as? Int32 {
            self.biddingId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["PartnerType"] as? String {
            self.partnerType = value
        }
        if let value = dict["ReservePrice"] as? Double {
            self.reservePrice = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePartnerReservePriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
