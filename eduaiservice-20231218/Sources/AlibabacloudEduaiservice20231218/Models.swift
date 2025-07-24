import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class QueryOrgLabRecordListRequest : Tea.TeaModel {
    public var aliyunUid: String?

    public var labId: String?

    public var orderBy: String?

    public var orderDirection: String?

    public var pageIndex: Int32?

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
        if self.aliyunUid != nil {
            map["AliyunUid"] = self.aliyunUid!
        }
        if self.labId != nil {
            map["LabId"] = self.labId!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["OrderDirection"] = self.orderDirection!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunUid"] as? String {
            self.aliyunUid = value
        }
        if let value = dict["LabId"] as? String {
            self.labId = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OrderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryOrgLabRecordListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createdAt: Int64?

        public var labRecordId: String?

        public var status: Int32?

        public var submittedAt: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.labRecordId != nil {
                map["LabRecordId"] = self.labRecordId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.submittedAt != nil {
                map["SubmittedAt"] = self.submittedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedAt"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["LabRecordId"] as? String {
                self.labRecordId = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["SubmittedAt"] as? Int64 {
                self.submittedAt = value
            }
        }
    }
    public var data: [QueryOrgLabRecordListResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var pageIndex: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var success: Bool?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryOrgLabRecordListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryOrgLabRecordListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["PageIndex"] as? Int64 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class QueryOrgLabRecordListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOrgLabRecordListResponseBody?

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
            var model = QueryOrgLabRecordListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
