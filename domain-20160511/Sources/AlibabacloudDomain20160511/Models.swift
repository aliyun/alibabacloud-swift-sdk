import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CheckDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class CheckDomainResponseBody : Tea.TeaModel {
    public var avail: Int32?

    public var feeCommand: String?

    public var feeCurrency: String?

    public var feeFee: String?

    public var feePeriod: Int32?

    public var name: String?

    public var reason: String?

    public var requestId: String?

    public var rmbFee: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.avail != nil {
            map["Avail"] = self.avail!
        }
        if self.feeCommand != nil {
            map["FeeCommand"] = self.feeCommand!
        }
        if self.feeCurrency != nil {
            map["FeeCurrency"] = self.feeCurrency!
        }
        if self.feeFee != nil {
            map["FeeFee"] = self.feeFee!
        }
        if self.feePeriod != nil {
            map["FeePeriod"] = self.feePeriod!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rmbFee != nil {
            map["RmbFee"] = self.rmbFee!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Avail"] as? Int32 {
            self.avail = value
        }
        if let value = dict["FeeCommand"] as? String {
            self.feeCommand = value
        }
        if let value = dict["FeeCurrency"] as? String {
            self.feeCurrency = value
        }
        if let value = dict["FeeFee"] as? String {
            self.feeFee = value
        }
        if let value = dict["FeePeriod"] as? Int32 {
            self.feePeriod = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RmbFee"] as? String {
            self.rmbFee = value
        }
    }
}

public class CheckDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDomainResponseBody?

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
            var model = CheckDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteContactTemplateRequest : Tea.TeaModel {
    public var contactTemplateId: Int64?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactTemplateId != nil {
            map["ContactTemplateId"] = self.contactTemplateId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactTemplateId"] as? Int64 {
            self.contactTemplateId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class DeleteContactTemplateResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteContactTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteContactTemplateResponseBody?

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
            var model = DeleteContactTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryBatchTaskDetailListRequest : Tea.TeaModel {
    public var domainName: String?

    public var lang: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var saleId: String?

    public var taskNo: String?

    public var taskStatus: Int32?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.saleId != nil {
            map["SaleId"] = self.saleId!
        }
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SaleId"] as? String {
            self.saleId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
        if let value = dict["TaskStatus"] as? Int32 {
            self.taskStatus = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryBatchTaskDetailListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskDetail : Tea.TeaModel {
            public var domainName: String?

            public var errorMsg: String?

            public var taskNo: String?

            public var taskStatus: String?

            public var taskType: String?

            public var tryCount: Int32?

            public var updateTime: String?

            public override init() {
                super.init()
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
                if self.errorMsg != nil {
                    map["ErrorMsg"] = self.errorMsg!
                }
                if self.taskNo != nil {
                    map["TaskNo"] = self.taskNo!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.taskType != nil {
                    map["TaskType"] = self.taskType!
                }
                if self.tryCount != nil {
                    map["TryCount"] = self.tryCount!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["ErrorMsg"] as? String {
                    self.errorMsg = value
                }
                if let value = dict["TaskNo"] as? String {
                    self.taskNo = value
                }
                if let value = dict["TaskStatus"] as? String {
                    self.taskStatus = value
                }
                if let value = dict["TaskType"] as? String {
                    self.taskType = value
                }
                if let value = dict["TryCount"] as? Int32 {
                    self.tryCount = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var taskDetail: [QueryBatchTaskDetailListResponseBody.Data.TaskDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskDetail != nil {
                var tmp : [Any] = []
                for k in self.taskDetail! {
                    tmp.append(k.toMap())
                }
                map["TaskDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskDetail"] as? [Any?] {
                var tmp : [QueryBatchTaskDetailListResponseBody.Data.TaskDetail] = []
                for v in value {
                    if v != nil {
                        var model = QueryBatchTaskDetailListResponseBody.Data.TaskDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskDetail = tmp
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: QueryBatchTaskDetailListResponseBody.Data?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

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
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
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
            var model = QueryBatchTaskDetailListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
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

public class QueryBatchTaskDetailListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBatchTaskDetailListResponseBody?

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
            var model = QueryBatchTaskDetailListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryBatchTaskListRequest : Tea.TeaModel {
    public var beginCreateTime: String?

    public var endCreateTime: String?

    public var lang: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginCreateTime != nil {
            map["BeginCreateTime"] = self.beginCreateTime!
        }
        if self.endCreateTime != nil {
            map["EndCreateTime"] = self.endCreateTime!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginCreateTime"] as? String {
            self.beginCreateTime = value
        }
        if let value = dict["EndCreateTime"] as? String {
            self.endCreateTime = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryBatchTaskListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskInfo : Tea.TeaModel {
            public var clientip: String?

            public var createTime: String?

            public var taskNo: String?

            public var taskNum: Int32?

            public var taskStatus: String?

            public var taskType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clientip != nil {
                    map["Clientip"] = self.clientip!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.taskNo != nil {
                    map["TaskNo"] = self.taskNo!
                }
                if self.taskNum != nil {
                    map["TaskNum"] = self.taskNum!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.taskType != nil {
                    map["TaskType"] = self.taskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Clientip"] as? String {
                    self.clientip = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["TaskNo"] as? String {
                    self.taskNo = value
                }
                if let value = dict["TaskNum"] as? Int32 {
                    self.taskNum = value
                }
                if let value = dict["TaskStatus"] as? String {
                    self.taskStatus = value
                }
                if let value = dict["TaskType"] as? String {
                    self.taskType = value
                }
            }
        }
        public var taskInfo: [QueryBatchTaskListResponseBody.Data.TaskInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskInfo != nil {
                var tmp : [Any] = []
                for k in self.taskInfo! {
                    tmp.append(k.toMap())
                }
                map["TaskInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskInfo"] as? [Any?] {
                var tmp : [QueryBatchTaskListResponseBody.Data.TaskInfo] = []
                for v in value {
                    if v != nil {
                        var model = QueryBatchTaskListResponseBody.Data.TaskInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskInfo = tmp
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: QueryBatchTaskListResponseBody.Data?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

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
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
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
            var model = QueryBatchTaskListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
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

public class QueryBatchTaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBatchTaskListResponseBody?

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
            var model = QueryBatchTaskListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryContactRequest : Tea.TeaModel {
    public var contactType: String?

    public var domainName: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactType != nil {
            map["ContactType"] = self.contactType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactType"] as? String {
            self.contactType = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryContactResponseBody : Tea.TeaModel {
    public var CCity: String?

    public var CCompany: String?

    public var CCountry: String?

    public var CName: String?

    public var CProvince: String?

    public var CVenu: String?

    public var createDate: String?

    public var ECity: String?

    public var ECompany: String?

    public var EName: String?

    public var EProvince: String?

    public var EVenu: String?

    public var email: String?

    public var postalCode: String?

    public var regType: String?

    public var requestId: String?

    public var telArea: String?

    public var telExt: String?

    public var telMain: String?

    public var updateDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CCity != nil {
            map["CCity"] = self.CCity!
        }
        if self.CCompany != nil {
            map["CCompany"] = self.CCompany!
        }
        if self.CCountry != nil {
            map["CCountry"] = self.CCountry!
        }
        if self.CName != nil {
            map["CName"] = self.CName!
        }
        if self.CProvince != nil {
            map["CProvince"] = self.CProvince!
        }
        if self.CVenu != nil {
            map["CVenu"] = self.CVenu!
        }
        if self.createDate != nil {
            map["CreateDate"] = self.createDate!
        }
        if self.ECity != nil {
            map["ECity"] = self.ECity!
        }
        if self.ECompany != nil {
            map["ECompany"] = self.ECompany!
        }
        if self.EName != nil {
            map["EName"] = self.EName!
        }
        if self.EProvince != nil {
            map["EProvince"] = self.EProvince!
        }
        if self.EVenu != nil {
            map["EVenu"] = self.EVenu!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.postalCode != nil {
            map["PostalCode"] = self.postalCode!
        }
        if self.regType != nil {
            map["RegType"] = self.regType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.telArea != nil {
            map["TelArea"] = self.telArea!
        }
        if self.telExt != nil {
            map["TelExt"] = self.telExt!
        }
        if self.telMain != nil {
            map["TelMain"] = self.telMain!
        }
        if self.updateDate != nil {
            map["UpdateDate"] = self.updateDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CCity"] as? String {
            self.CCity = value
        }
        if let value = dict["CCompany"] as? String {
            self.CCompany = value
        }
        if let value = dict["CCountry"] as? String {
            self.CCountry = value
        }
        if let value = dict["CName"] as? String {
            self.CName = value
        }
        if let value = dict["CProvince"] as? String {
            self.CProvince = value
        }
        if let value = dict["CVenu"] as? String {
            self.CVenu = value
        }
        if let value = dict["CreateDate"] as? String {
            self.createDate = value
        }
        if let value = dict["ECity"] as? String {
            self.ECity = value
        }
        if let value = dict["ECompany"] as? String {
            self.ECompany = value
        }
        if let value = dict["EName"] as? String {
            self.EName = value
        }
        if let value = dict["EProvince"] as? String {
            self.EProvince = value
        }
        if let value = dict["EVenu"] as? String {
            self.EVenu = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["PostalCode"] as? String {
            self.postalCode = value
        }
        if let value = dict["RegType"] as? String {
            self.regType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TelArea"] as? String {
            self.telArea = value
        }
        if let value = dict["TelExt"] as? String {
            self.telExt = value
        }
        if let value = dict["TelMain"] as? String {
            self.telMain = value
        }
        if let value = dict["UpdateDate"] as? String {
            self.updateDate = value
        }
    }
}

public class QueryContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryContactResponseBody?

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
            var model = QueryContactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryContactTemplateRequest : Tea.TeaModel {
    public var auditStatus: String?

    public var CCompany: String?

    public var contactTemplateId: Int64?

    public var defaultTemplate: Bool?

    public var ECompany: String?

    public var lang: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var regType: String?

    public var userClientIp: String?

    public override init() {
        super.init()
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
        if self.CCompany != nil {
            map["CCompany"] = self.CCompany!
        }
        if self.contactTemplateId != nil {
            map["ContactTemplateId"] = self.contactTemplateId!
        }
        if self.defaultTemplate != nil {
            map["DefaultTemplate"] = self.defaultTemplate!
        }
        if self.ECompany != nil {
            map["ECompany"] = self.ECompany!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regType != nil {
            map["RegType"] = self.regType!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditStatus"] as? String {
            self.auditStatus = value
        }
        if let value = dict["CCompany"] as? String {
            self.CCompany = value
        }
        if let value = dict["ContactTemplateId"] as? Int64 {
            self.contactTemplateId = value
        }
        if let value = dict["DefaultTemplate"] as? Bool {
            self.defaultTemplate = value
        }
        if let value = dict["ECompany"] as? String {
            self.ECompany = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegType"] as? String {
            self.regType = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryContactTemplateResponseBody : Tea.TeaModel {
    public class ContactTemplates : Tea.TeaModel {
        public class ContactTemplate : Tea.TeaModel {
            public var auditStatus: String?

            public var CCity: String?

            public var CCompany: String?

            public var CCountry: String?

            public var CName: String?

            public var CProvince: String?

            public var CVenu: String?

            public var contactTemplateId: Int64?

            public var createTime: String?

            public var defaultTemplate: Bool?

            public var ECity: String?

            public var ECompany: String?

            public var EName: String?

            public var EProvince: String?

            public var EVenu: String?

            public var email: String?

            public var emailVerificationStatus: Int32?

            public var postalCode: String?

            public var regType: String?

            public var telArea: String?

            public var telExt: String?

            public var telMain: String?

            public var updateTime: String?

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
                if self.auditStatus != nil {
                    map["AuditStatus"] = self.auditStatus!
                }
                if self.CCity != nil {
                    map["CCity"] = self.CCity!
                }
                if self.CCompany != nil {
                    map["CCompany"] = self.CCompany!
                }
                if self.CCountry != nil {
                    map["CCountry"] = self.CCountry!
                }
                if self.CName != nil {
                    map["CName"] = self.CName!
                }
                if self.CProvince != nil {
                    map["CProvince"] = self.CProvince!
                }
                if self.CVenu != nil {
                    map["CVenu"] = self.CVenu!
                }
                if self.contactTemplateId != nil {
                    map["ContactTemplateId"] = self.contactTemplateId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.defaultTemplate != nil {
                    map["DefaultTemplate"] = self.defaultTemplate!
                }
                if self.ECity != nil {
                    map["ECity"] = self.ECity!
                }
                if self.ECompany != nil {
                    map["ECompany"] = self.ECompany!
                }
                if self.EName != nil {
                    map["EName"] = self.EName!
                }
                if self.EProvince != nil {
                    map["EProvince"] = self.EProvince!
                }
                if self.EVenu != nil {
                    map["EVenu"] = self.EVenu!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.emailVerificationStatus != nil {
                    map["EmailVerificationStatus"] = self.emailVerificationStatus!
                }
                if self.postalCode != nil {
                    map["PostalCode"] = self.postalCode!
                }
                if self.regType != nil {
                    map["RegType"] = self.regType!
                }
                if self.telArea != nil {
                    map["TelArea"] = self.telArea!
                }
                if self.telExt != nil {
                    map["TelExt"] = self.telExt!
                }
                if self.telMain != nil {
                    map["TelMain"] = self.telMain!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuditStatus"] as? String {
                    self.auditStatus = value
                }
                if let value = dict["CCity"] as? String {
                    self.CCity = value
                }
                if let value = dict["CCompany"] as? String {
                    self.CCompany = value
                }
                if let value = dict["CCountry"] as? String {
                    self.CCountry = value
                }
                if let value = dict["CName"] as? String {
                    self.CName = value
                }
                if let value = dict["CProvince"] as? String {
                    self.CProvince = value
                }
                if let value = dict["CVenu"] as? String {
                    self.CVenu = value
                }
                if let value = dict["ContactTemplateId"] as? Int64 {
                    self.contactTemplateId = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DefaultTemplate"] as? Bool {
                    self.defaultTemplate = value
                }
                if let value = dict["ECity"] as? String {
                    self.ECity = value
                }
                if let value = dict["ECompany"] as? String {
                    self.ECompany = value
                }
                if let value = dict["EName"] as? String {
                    self.EName = value
                }
                if let value = dict["EProvince"] as? String {
                    self.EProvince = value
                }
                if let value = dict["EVenu"] as? String {
                    self.EVenu = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["EmailVerificationStatus"] as? Int32 {
                    self.emailVerificationStatus = value
                }
                if let value = dict["PostalCode"] as? String {
                    self.postalCode = value
                }
                if let value = dict["RegType"] as? String {
                    self.regType = value
                }
                if let value = dict["TelArea"] as? String {
                    self.telArea = value
                }
                if let value = dict["TelExt"] as? String {
                    self.telExt = value
                }
                if let value = dict["TelMain"] as? String {
                    self.telMain = value
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public var contactTemplate: [QueryContactTemplateResponseBody.ContactTemplates.ContactTemplate]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactTemplate != nil {
                var tmp : [Any] = []
                for k in self.contactTemplate! {
                    tmp.append(k.toMap())
                }
                map["ContactTemplate"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactTemplate"] as? [Any?] {
                var tmp : [QueryContactTemplateResponseBody.ContactTemplates.ContactTemplate] = []
                for v in value {
                    if v != nil {
                        var model = QueryContactTemplateResponseBody.ContactTemplates.ContactTemplate()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.contactTemplate = tmp
            }
        }
    }
    public var contactTemplates: QueryContactTemplateResponseBody.ContactTemplates?

    public var currentPageNum: Int32?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

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
        try self.contactTemplates?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactTemplates != nil {
            map["ContactTemplates"] = self.contactTemplates?.toMap()
        }
        if self.currentPageNum != nil {
            map["CurrentPageNum"] = self.currentPageNum!
        }
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
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
        if let value = dict["ContactTemplates"] as? [String: Any?] {
            var model = QueryContactTemplateResponseBody.ContactTemplates()
            model.fromMap(value)
            self.contactTemplates = model
        }
        if let value = dict["CurrentPageNum"] as? Int32 {
            self.currentPageNum = value
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
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

public class QueryContactTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryContactTemplateResponseBody?

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
            var model = QueryContactTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDomainBySaleIdRequest : Tea.TeaModel {
    public var lang: String?

    public var saleId: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.saleId != nil {
            map["SaleId"] = self.saleId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SaleId"] as? String {
            self.saleId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDomainBySaleIdResponseBody : Tea.TeaModel {
    public class DnsList : Tea.TeaModel {
        public var dns: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dns != nil {
                map["Dns"] = self.dns!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Dns"] as? [String] {
                self.dns = value
            }
        }
    }
    public var chineseContactPerson: String?

    public var chineseHolder: String?

    public var creationDate: String?

    public var dnsList: QueryDomainBySaleIdResponseBody.DnsList?

    public var domainName: String?

    public var domainRegType: String?

    public var emailVerificationClientHold: Bool?

    public var emailVerificationStatus: Int32?

    public var englishContactPerson: String?

    public var englishHolder: String?

    public var expirationDate: String?

    public var holderEmail: String?

    public var premium: Bool?

    public var remark: String?

    public var safetyLock: String?

    public var saleId: String?

    public var transferLock: String?

    public var transferOutStatus: String?

    public var userId: String?

    public var whoisProtected: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dnsList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chineseContactPerson != nil {
            map["ChineseContactPerson"] = self.chineseContactPerson!
        }
        if self.chineseHolder != nil {
            map["ChineseHolder"] = self.chineseHolder!
        }
        if self.creationDate != nil {
            map["CreationDate"] = self.creationDate!
        }
        if self.dnsList != nil {
            map["DnsList"] = self.dnsList?.toMap()
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainRegType != nil {
            map["DomainRegType"] = self.domainRegType!
        }
        if self.emailVerificationClientHold != nil {
            map["EmailVerificationClientHold"] = self.emailVerificationClientHold!
        }
        if self.emailVerificationStatus != nil {
            map["EmailVerificationStatus"] = self.emailVerificationStatus!
        }
        if self.englishContactPerson != nil {
            map["EnglishContactPerson"] = self.englishContactPerson!
        }
        if self.englishHolder != nil {
            map["EnglishHolder"] = self.englishHolder!
        }
        if self.expirationDate != nil {
            map["ExpirationDate"] = self.expirationDate!
        }
        if self.holderEmail != nil {
            map["HolderEmail"] = self.holderEmail!
        }
        if self.premium != nil {
            map["Premium"] = self.premium!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.safetyLock != nil {
            map["SafetyLock"] = self.safetyLock!
        }
        if self.saleId != nil {
            map["SaleId"] = self.saleId!
        }
        if self.transferLock != nil {
            map["TransferLock"] = self.transferLock!
        }
        if self.transferOutStatus != nil {
            map["TransferOutStatus"] = self.transferOutStatus!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.whoisProtected != nil {
            map["WhoisProtected"] = self.whoisProtected!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChineseContactPerson"] as? String {
            self.chineseContactPerson = value
        }
        if let value = dict["ChineseHolder"] as? String {
            self.chineseHolder = value
        }
        if let value = dict["CreationDate"] as? String {
            self.creationDate = value
        }
        if let value = dict["DnsList"] as? [String: Any?] {
            var model = QueryDomainBySaleIdResponseBody.DnsList()
            model.fromMap(value)
            self.dnsList = model
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["DomainRegType"] as? String {
            self.domainRegType = value
        }
        if let value = dict["EmailVerificationClientHold"] as? Bool {
            self.emailVerificationClientHold = value
        }
        if let value = dict["EmailVerificationStatus"] as? Int32 {
            self.emailVerificationStatus = value
        }
        if let value = dict["EnglishContactPerson"] as? String {
            self.englishContactPerson = value
        }
        if let value = dict["EnglishHolder"] as? String {
            self.englishHolder = value
        }
        if let value = dict["ExpirationDate"] as? String {
            self.expirationDate = value
        }
        if let value = dict["HolderEmail"] as? String {
            self.holderEmail = value
        }
        if let value = dict["Premium"] as? Bool {
            self.premium = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SafetyLock"] as? String {
            self.safetyLock = value
        }
        if let value = dict["SaleId"] as? String {
            self.saleId = value
        }
        if let value = dict["TransferLock"] as? String {
            self.transferLock = value
        }
        if let value = dict["TransferOutStatus"] as? String {
            self.transferOutStatus = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WhoisProtected"] as? Bool {
            self.whoisProtected = value
        }
    }
}

public class QueryDomainBySaleIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainBySaleIdResponseBody?

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
            var model = QueryDomainBySaleIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDomainListRequest : Tea.TeaModel {
    public var deadEndDate: Int64?

    public var deadStartDate: Int64?

    public var domainName: String?

    public var domainType: String?

    public var endDate: String?

    public var groupId: String?

    public var lang: String?

    public var orderByType: String?

    public var orderKeyType: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productDomainType: String?

    public var queryType: String?

    public var regEndDate: Int64?

    public var regStartDate: Int64?

    public var startDate: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deadEndDate != nil {
            map["DeadEndDate"] = self.deadEndDate!
        }
        if self.deadStartDate != nil {
            map["DeadStartDate"] = self.deadStartDate!
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.orderByType != nil {
            map["OrderByType"] = self.orderByType!
        }
        if self.orderKeyType != nil {
            map["OrderKeyType"] = self.orderKeyType!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productDomainType != nil {
            map["ProductDomainType"] = self.productDomainType!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.regEndDate != nil {
            map["RegEndDate"] = self.regEndDate!
        }
        if self.regStartDate != nil {
            map["RegStartDate"] = self.regStartDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeadEndDate"] as? Int64 {
            self.deadEndDate = value
        }
        if let value = dict["DeadStartDate"] as? Int64 {
            self.deadStartDate = value
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
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OrderByType"] as? String {
            self.orderByType = value
        }
        if let value = dict["OrderKeyType"] as? String {
            self.orderKeyType = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductDomainType"] as? String {
            self.productDomainType = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["RegEndDate"] as? Int64 {
            self.regEndDate = value
        }
        if let value = dict["RegStartDate"] as? Int64 {
            self.regStartDate = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryDomainListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Domain : Tea.TeaModel {
            public var deadDate: String?

            public var deadDateLong: Int64?

            public var deadDateStatus: String?

            public var domainAuditStatus: String?

            public var domainName: String?

            public var domainRegType: String?

            public var domainStatus: String?

            public var domainType: String?

            public var groupId: String?

            public var premium: Bool?

            public var productId: String?

            public var regDate: String?

            public var regDateLong: Int64?

            public var remark: String?

            public var saleId: String?

            public override init() {
                super.init()
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
                if self.deadDateLong != nil {
                    map["DeadDateLong"] = self.deadDateLong!
                }
                if self.deadDateStatus != nil {
                    map["DeadDateStatus"] = self.deadDateStatus!
                }
                if self.domainAuditStatus != nil {
                    map["DomainAuditStatus"] = self.domainAuditStatus!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.domainRegType != nil {
                    map["DomainRegType"] = self.domainRegType!
                }
                if self.domainStatus != nil {
                    map["DomainStatus"] = self.domainStatus!
                }
                if self.domainType != nil {
                    map["DomainType"] = self.domainType!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.premium != nil {
                    map["Premium"] = self.premium!
                }
                if self.productId != nil {
                    map["ProductId"] = self.productId!
                }
                if self.regDate != nil {
                    map["RegDate"] = self.regDate!
                }
                if self.regDateLong != nil {
                    map["RegDateLong"] = self.regDateLong!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                if self.saleId != nil {
                    map["SaleId"] = self.saleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeadDate"] as? String {
                    self.deadDate = value
                }
                if let value = dict["DeadDateLong"] as? Int64 {
                    self.deadDateLong = value
                }
                if let value = dict["DeadDateStatus"] as? String {
                    self.deadDateStatus = value
                }
                if let value = dict["DomainAuditStatus"] as? String {
                    self.domainAuditStatus = value
                }
                if let value = dict["DomainName"] as? String {
                    self.domainName = value
                }
                if let value = dict["DomainRegType"] as? String {
                    self.domainRegType = value
                }
                if let value = dict["DomainStatus"] as? String {
                    self.domainStatus = value
                }
                if let value = dict["DomainType"] as? String {
                    self.domainType = value
                }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["Premium"] as? Bool {
                    self.premium = value
                }
                if let value = dict["ProductId"] as? String {
                    self.productId = value
                }
                if let value = dict["RegDate"] as? String {
                    self.regDate = value
                }
                if let value = dict["RegDateLong"] as? Int64 {
                    self.regDateLong = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
                if let value = dict["SaleId"] as? String {
                    self.saleId = value
                }
            }
        }
        public var domain: [QueryDomainListResponseBody.Data.Domain]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.domain! {
                    tmp.append(k.toMap())
                }
                map["Domain"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? [Any?] {
                var tmp : [QueryDomainListResponseBody.Data.Domain] = []
                for v in value {
                    if v != nil {
                        var model = QueryDomainListResponseBody.Data.Domain()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.domain = tmp
            }
        }
    }
    public var currentPageNum: Int32?

    public var data: QueryDomainListResponseBody.Data?

    public var nextPage: Bool?

    public var pageSize: Int32?

    public var prePage: Bool?

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
        if self.nextPage != nil {
            map["NextPage"] = self.nextPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prePage != nil {
            map["PrePage"] = self.prePage!
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
            var model = QueryDomainListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["NextPage"] as? Bool {
            self.nextPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrePage"] as? Bool {
            self.prePage = value
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

public class QueryDomainListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainListResponseBody?

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
            var model = QueryDomainListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFailReasonListRequest : Tea.TeaModel {
    public var contactTemplateId: Int64?

    public var domainName: String?

    public var lang: String?

    public var saleId: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactTemplateId != nil {
            map["ContactTemplateId"] = self.contactTemplateId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.saleId != nil {
            map["SaleId"] = self.saleId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactTemplateId"] as? Int64 {
            self.contactTemplateId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SaleId"] as? String {
            self.saleId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class QueryFailReasonListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FailRecord : Tea.TeaModel {
            public var date: String?

            public var failReason: String?

            public override init() {
                super.init()
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
                if self.failReason != nil {
                    map["FailReason"] = self.failReason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Date"] as? String {
                    self.date = value
                }
                if let value = dict["FailReason"] as? String {
                    self.failReason = value
                }
            }
        }
        public var failRecord: [QueryFailReasonListResponseBody.Data.FailRecord]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failRecord != nil {
                var tmp : [Any] = []
                for k in self.failRecord! {
                    tmp.append(k.toMap())
                }
                map["FailRecord"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailRecord"] as? [Any?] {
                var tmp : [QueryFailReasonListResponseBody.Data.FailRecord] = []
                for v in value {
                    if v != nil {
                        var model = QueryFailReasonListResponseBody.Data.FailRecord()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.failRecord = tmp
            }
        }
    }
    public var data: QueryFailReasonListResponseBody.Data?

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
            var model = QueryFailReasonListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryFailReasonListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFailReasonListResponseBody?

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
            var model = QueryFailReasonListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveContactTemplateRequest : Tea.TeaModel {
    public var CCity: String?

    public var CCompany: String?

    public var CCountry: String?

    public var CName: String?

    public var CProvince: String?

    public var CVenu: String?

    public var contactTemplateId: Int64?

    public var defaultTemplate: Bool?

    public var ECity: String?

    public var ECompany: String?

    public var EName: String?

    public var EProvince: String?

    public var EVenu: String?

    public var email: String?

    public var lang: String?

    public var postalCode: String?

    public var regType: String?

    public var telArea: String?

    public var telExt: String?

    public var telMain: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CCity != nil {
            map["CCity"] = self.CCity!
        }
        if self.CCompany != nil {
            map["CCompany"] = self.CCompany!
        }
        if self.CCountry != nil {
            map["CCountry"] = self.CCountry!
        }
        if self.CName != nil {
            map["CName"] = self.CName!
        }
        if self.CProvince != nil {
            map["CProvince"] = self.CProvince!
        }
        if self.CVenu != nil {
            map["CVenu"] = self.CVenu!
        }
        if self.contactTemplateId != nil {
            map["ContactTemplateId"] = self.contactTemplateId!
        }
        if self.defaultTemplate != nil {
            map["DefaultTemplate"] = self.defaultTemplate!
        }
        if self.ECity != nil {
            map["ECity"] = self.ECity!
        }
        if self.ECompany != nil {
            map["ECompany"] = self.ECompany!
        }
        if self.EName != nil {
            map["EName"] = self.EName!
        }
        if self.EProvince != nil {
            map["EProvince"] = self.EProvince!
        }
        if self.EVenu != nil {
            map["EVenu"] = self.EVenu!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.postalCode != nil {
            map["PostalCode"] = self.postalCode!
        }
        if self.regType != nil {
            map["RegType"] = self.regType!
        }
        if self.telArea != nil {
            map["TelArea"] = self.telArea!
        }
        if self.telExt != nil {
            map["TelExt"] = self.telExt!
        }
        if self.telMain != nil {
            map["TelMain"] = self.telMain!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CCity"] as? String {
            self.CCity = value
        }
        if let value = dict["CCompany"] as? String {
            self.CCompany = value
        }
        if let value = dict["CCountry"] as? String {
            self.CCountry = value
        }
        if let value = dict["CName"] as? String {
            self.CName = value
        }
        if let value = dict["CProvince"] as? String {
            self.CProvince = value
        }
        if let value = dict["CVenu"] as? String {
            self.CVenu = value
        }
        if let value = dict["ContactTemplateId"] as? Int64 {
            self.contactTemplateId = value
        }
        if let value = dict["DefaultTemplate"] as? Bool {
            self.defaultTemplate = value
        }
        if let value = dict["ECity"] as? String {
            self.ECity = value
        }
        if let value = dict["ECompany"] as? String {
            self.ECompany = value
        }
        if let value = dict["EName"] as? String {
            self.EName = value
        }
        if let value = dict["EProvince"] as? String {
            self.EProvince = value
        }
        if let value = dict["EVenu"] as? String {
            self.EVenu = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PostalCode"] as? String {
            self.postalCode = value
        }
        if let value = dict["RegType"] as? String {
            self.regType = value
        }
        if let value = dict["TelArea"] as? String {
            self.telArea = value
        }
        if let value = dict["TelExt"] as? String {
            self.telExt = value
        }
        if let value = dict["TelMain"] as? String {
            self.telMain = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveContactTemplateResponseBody : Tea.TeaModel {
    public var contactTemplateId: Int64?

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
        if self.contactTemplateId != nil {
            map["ContactTemplateId"] = self.contactTemplateId!
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
        if let value = dict["ContactTemplateId"] as? Int64 {
            self.contactTemplateId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SaveContactTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveContactTemplateResponseBody?

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
            var model = SaveContactTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveContactTemplateCredentialRequest : Tea.TeaModel {
    public var contactTemplateId: Int64?

    public var credential: String?

    public var credentialNo: String?

    public var lang: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactTemplateId != nil {
            map["ContactTemplateId"] = self.contactTemplateId!
        }
        if self.credential != nil {
            map["Credential"] = self.credential!
        }
        if self.credentialNo != nil {
            map["CredentialNo"] = self.credentialNo!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactTemplateId"] as? Int64 {
            self.contactTemplateId = value
        }
        if let value = dict["Credential"] as? String {
            self.credential = value
        }
        if let value = dict["CredentialNo"] as? String {
            self.credentialNo = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveContactTemplateCredentialResponseBody : Tea.TeaModel {
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

public class SaveContactTemplateCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveContactTemplateCredentialResponseBody?

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
            var model = SaveContactTemplateCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveTaskForModifyingDomainDnsRequest : Tea.TeaModel {
    public var aliyunDns: Bool?

    public var dnsList: [String]?

    public var domainName: String?

    public var lang: String?

    public var saleId: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunDns != nil {
            map["AliyunDns"] = self.aliyunDns!
        }
        if self.dnsList != nil {
            map["DnsList"] = self.dnsList!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.saleId != nil {
            map["SaleId"] = self.saleId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunDns"] as? Bool {
            self.aliyunDns = value
        }
        if let value = dict["DnsList"] as? [String] {
            self.dnsList = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SaleId"] as? String {
            self.saleId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveTaskForModifyingDomainDnsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveTaskForModifyingDomainDnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveTaskForModifyingDomainDnsResponseBody?

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
            var model = SaveTaskForModifyingDomainDnsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveTaskForSubmittingDomainNameCredentialRequest : Tea.TeaModel {
    public var credential: String?

    public var credentialNo: String?

    public var credentialType: String?

    public var domainName: String?

    public var lang: String?

    public var saleId: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credential != nil {
            map["Credential"] = self.credential!
        }
        if self.credentialNo != nil {
            map["CredentialNo"] = self.credentialNo!
        }
        if self.credentialType != nil {
            map["CredentialType"] = self.credentialType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.saleId != nil {
            map["SaleId"] = self.saleId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Credential"] as? String {
            self.credential = value
        }
        if let value = dict["CredentialNo"] as? String {
            self.credentialNo = value
        }
        if let value = dict["CredentialType"] as? String {
            self.credentialType = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SaleId"] as? String {
            self.saleId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveTaskForSubmittingDomainNameCredentialResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveTaskForSubmittingDomainNameCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveTaskForSubmittingDomainNameCredentialResponseBody?

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
            var model = SaveTaskForSubmittingDomainNameCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveTaskForSubmittingDomainNameCredentialByTemplateIdRequest : Tea.TeaModel {
    public var contactTemplateId: Int64?

    public var domainName: String?

    public var lang: String?

    public var saleId: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactTemplateId != nil {
            map["ContactTemplateId"] = self.contactTemplateId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.saleId != nil {
            map["SaleId"] = self.saleId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactTemplateId"] as? Int64 {
            self.contactTemplateId = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SaleId"] as? String {
            self.saleId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveTaskForSubmittingDomainNameCredentialByTemplateIdResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: Bool?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveTaskForSubmittingDomainNameCredentialByTemplateIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveTaskForSubmittingDomainNameCredentialByTemplateIdResponseBody?

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
            var model = SaveTaskForSubmittingDomainNameCredentialByTemplateIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveTaskForUpdatingContactByTempateIdRequest : Tea.TeaModel {
    public var addTransferLock: Bool?

    public var contactTemplateId: Int64?

    public var contactType: String?

    public var domainName: String?

    public var lang: String?

    public var saleId: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addTransferLock != nil {
            map["AddTransferLock"] = self.addTransferLock!
        }
        if self.contactTemplateId != nil {
            map["ContactTemplateId"] = self.contactTemplateId!
        }
        if self.contactType != nil {
            map["ContactType"] = self.contactType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.saleId != nil {
            map["SaleId"] = self.saleId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddTransferLock"] as? Bool {
            self.addTransferLock = value
        }
        if let value = dict["ContactTemplateId"] as? Int64 {
            self.contactTemplateId = value
        }
        if let value = dict["ContactType"] as? String {
            self.contactType = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SaleId"] as? String {
            self.saleId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveTaskForUpdatingContactByTempateIdResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: Bool?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveTaskForUpdatingContactByTempateIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveTaskForUpdatingContactByTempateIdResponseBody?

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
            var model = SaveTaskForUpdatingContactByTempateIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveTaskForUpdatingContactByTemplateIdRequest : Tea.TeaModel {
    public var addTransferLock: Bool?

    public var contactTemplateId: Int64?

    public var contactType: String?

    public var domainName: String?

    public var lang: String?

    public var saleId: String?

    public var userClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addTransferLock != nil {
            map["AddTransferLock"] = self.addTransferLock!
        }
        if self.contactTemplateId != nil {
            map["ContactTemplateId"] = self.contactTemplateId!
        }
        if self.contactType != nil {
            map["ContactType"] = self.contactType!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.saleId != nil {
            map["SaleId"] = self.saleId!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddTransferLock"] as? Bool {
            self.addTransferLock = value
        }
        if let value = dict["ContactTemplateId"] as? Int64 {
            self.contactTemplateId = value
        }
        if let value = dict["ContactType"] as? String {
            self.contactType = value
        }
        if let value = dict["DomainName"] as? String {
            self.domainName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["SaleId"] as? String {
            self.saleId = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
    }
}

public class SaveTaskForUpdatingContactByTemplateIdResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: Bool?

    public var taskNo: String?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskNo != nil {
            map["TaskNo"] = self.taskNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskNo"] as? String {
            self.taskNo = value
        }
    }
}

public class SaveTaskForUpdatingContactByTemplateIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveTaskForUpdatingContactByTemplateIdResponseBody?

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
            var model = SaveTaskForUpdatingContactByTemplateIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class WhoisProtectionRequest : Tea.TeaModel {
    public var dataContent: String?

    public var dataSource: Int32?

    public var lang: String?

    public var userClientIp: String?

    public var whoisProtect: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataContent != nil {
            map["DataContent"] = self.dataContent!
        }
        if self.dataSource != nil {
            map["DataSource"] = self.dataSource!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.userClientIp != nil {
            map["UserClientIp"] = self.userClientIp!
        }
        if self.whoisProtect != nil {
            map["WhoisProtect"] = self.whoisProtect!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataContent"] as? String {
            self.dataContent = value
        }
        if let value = dict["DataSource"] as? Int32 {
            self.dataSource = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["UserClientIp"] as? String {
            self.userClientIp = value
        }
        if let value = dict["WhoisProtect"] as? Bool {
            self.whoisProtect = value
        }
    }
}

public class WhoisProtectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Int32?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Int32 {
            self.result = value
        }
    }
}

public class WhoisProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: WhoisProtectionResponseBody?

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
            var model = WhoisProtectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
