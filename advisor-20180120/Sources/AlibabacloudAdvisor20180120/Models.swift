import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeAdvicesRequest : Tea.TeaModel {
    public var adviceId: Int64?

    public var checkId: String?

    public var clientUid: Int64?

    public var excludeAdviceId: Int64?

    public var filterType: String?

    public var filterValue: String?

    public var language: String?

    public var product: String?

    public var region: String?

    public var resourceId: String?

    public var token: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adviceId != nil {
            map["AdviceId"] = self.adviceId!
        }
        if self.checkId != nil {
            map["CheckId"] = self.checkId!
        }
        if self.clientUid != nil {
            map["ClientUid"] = self.clientUid!
        }
        if self.excludeAdviceId != nil {
            map["ExcludeAdviceId"] = self.excludeAdviceId!
        }
        if self.filterType != nil {
            map["FilterType"] = self.filterType!
        }
        if self.filterValue != nil {
            map["FilterValue"] = self.filterValue!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdviceId") && dict["AdviceId"] != nil {
            self.adviceId = dict["AdviceId"] as! Int64
        }
        if dict.keys.contains("CheckId") && dict["CheckId"] != nil {
            self.checkId = dict["CheckId"] as! String
        }
        if dict.keys.contains("ClientUid") && dict["ClientUid"] != nil {
            self.clientUid = dict["ClientUid"] as! Int64
        }
        if dict.keys.contains("ExcludeAdviceId") && dict["ExcludeAdviceId"] != nil {
            self.excludeAdviceId = dict["ExcludeAdviceId"] as! Int64
        }
        if dict.keys.contains("FilterType") && dict["FilterType"] != nil {
            self.filterType = dict["FilterType"] as! String
        }
        if dict.keys.contains("FilterValue") && dict["FilterValue"] != nil {
            self.filterValue = dict["FilterValue"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Product") && dict["Product"] != nil {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
    }
}

public class DescribeAdvicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Advice : Tea.TeaModel {
            public var action: String?

            public var aliyunId: Int64?

            public var checkId: String?

            public var checkName: String?

            public var content: String?

            public var description_: String?

            public var details: String?

            public var gmtCreated: String?

            public var gmtModified: String?

            public var id: Int64?

            public var isExpired: Bool?

            public var links: String?

            public var product: String?

            public var reason: String?

            public var resource: String?

            public var resourceId: String?

            public var severity: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.aliyunId != nil {
                    map["AliyunId"] = self.aliyunId!
                }
                if self.checkId != nil {
                    map["CheckId"] = self.checkId!
                }
                if self.checkName != nil {
                    map["CheckName"] = self.checkName!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.details != nil {
                    map["Details"] = self.details!
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
                if self.isExpired != nil {
                    map["IsExpired"] = self.isExpired!
                }
                if self.links != nil {
                    map["Links"] = self.links!
                }
                if self.product != nil {
                    map["Product"] = self.product!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.resource != nil {
                    map["Resource"] = self.resource!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.severity != nil {
                    map["Severity"] = self.severity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") && dict["Action"] != nil {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("AliyunId") && dict["AliyunId"] != nil {
                    self.aliyunId = dict["AliyunId"] as! Int64
                }
                if dict.keys.contains("CheckId") && dict["CheckId"] != nil {
                    self.checkId = dict["CheckId"] as! String
                }
                if dict.keys.contains("CheckName") && dict["CheckName"] != nil {
                    self.checkName = dict["CheckName"] as! String
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Details") && dict["Details"] != nil {
                    self.details = dict["Details"] as! String
                }
                if dict.keys.contains("GmtCreated") && dict["GmtCreated"] != nil {
                    self.gmtCreated = dict["GmtCreated"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IsExpired") && dict["IsExpired"] != nil {
                    self.isExpired = dict["IsExpired"] as! Bool
                }
                if dict.keys.contains("Links") && dict["Links"] != nil {
                    self.links = dict["Links"] as! String
                }
                if dict.keys.contains("Product") && dict["Product"] != nil {
                    self.product = dict["Product"] as! String
                }
                if dict.keys.contains("Reason") && dict["Reason"] != nil {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("Resource") && dict["Resource"] != nil {
                    self.resource = dict["Resource"] as! String
                }
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("Severity") && dict["Severity"] != nil {
                    self.severity = dict["Severity"] as! Int32
                }
            }
        }
        public var advice: [DescribeAdvicesResponseBody.Data.Advice]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advice != nil {
                var tmp : [Any] = []
                for k in self.advice! {
                    tmp.append(k.toMap())
                }
                map["Advice"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Advice") && dict["Advice"] != nil {
                var tmp : [DescribeAdvicesResponseBody.Data.Advice] = []
                for v in dict["Advice"] as! [Any] {
                    var model = DescribeAdvicesResponseBody.Data.Advice()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.advice = tmp
            }
        }
    }
    public var data: DescribeAdvicesResponseBody.Data?

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
            var model = DescribeAdvicesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAdvicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAdvicesResponseBody?

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
            var model = DescribeAdvicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAdvicesPageRequest : Tea.TeaModel {
    public var adviceId: Int64?

    public var associateUid: Int64?

    public var checkId: String?

    public var excludeAdviceId: String?

    public var language: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var product: String?

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
        if self.adviceId != nil {
            map["AdviceId"] = self.adviceId!
        }
        if self.associateUid != nil {
            map["AssociateUid"] = self.associateUid!
        }
        if self.checkId != nil {
            map["CheckId"] = self.checkId!
        }
        if self.excludeAdviceId != nil {
            map["ExcludeAdviceId"] = self.excludeAdviceId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdviceId") && dict["AdviceId"] != nil {
            self.adviceId = dict["AdviceId"] as! Int64
        }
        if dict.keys.contains("AssociateUid") && dict["AssociateUid"] != nil {
            self.associateUid = dict["AssociateUid"] as! Int64
        }
        if dict.keys.contains("CheckId") && dict["CheckId"] != nil {
            self.checkId = dict["CheckId"] as! String
        }
        if dict.keys.contains("ExcludeAdviceId") && dict["ExcludeAdviceId"] != nil {
            self.excludeAdviceId = dict["ExcludeAdviceId"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Product") && dict["Product"] != nil {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class DescribeAdvicesPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var action: String?

            public var aliyunId: Int64?

            public var checkId: String?

            public var checkName: String?

            public var content: String?

            public var description_: String?

            public var details: String?

            public var gmtCreated: String?

            public var gmtModified: String?

            public var id: Int64?

            public var isExpired: Bool?

            public var links: String?

            public var product: String?

            public var reason: String?

            public var resource: String?

            public var resourceId: String?

            public var severity: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.action != nil {
                    map["Action"] = self.action!
                }
                if self.aliyunId != nil {
                    map["AliyunId"] = self.aliyunId!
                }
                if self.checkId != nil {
                    map["CheckId"] = self.checkId!
                }
                if self.checkName != nil {
                    map["CheckName"] = self.checkName!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.details != nil {
                    map["Details"] = self.details!
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
                if self.isExpired != nil {
                    map["IsExpired"] = self.isExpired!
                }
                if self.links != nil {
                    map["Links"] = self.links!
                }
                if self.product != nil {
                    map["Product"] = self.product!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.resource != nil {
                    map["Resource"] = self.resource!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.severity != nil {
                    map["Severity"] = self.severity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Action") && dict["Action"] != nil {
                    self.action = dict["Action"] as! String
                }
                if dict.keys.contains("AliyunId") && dict["AliyunId"] != nil {
                    self.aliyunId = dict["AliyunId"] as! Int64
                }
                if dict.keys.contains("CheckId") && dict["CheckId"] != nil {
                    self.checkId = dict["CheckId"] as! String
                }
                if dict.keys.contains("CheckName") && dict["CheckName"] != nil {
                    self.checkName = dict["CheckName"] as! String
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Details") && dict["Details"] != nil {
                    self.details = dict["Details"] as! String
                }
                if dict.keys.contains("GmtCreated") && dict["GmtCreated"] != nil {
                    self.gmtCreated = dict["GmtCreated"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IsExpired") && dict["IsExpired"] != nil {
                    self.isExpired = dict["IsExpired"] as! Bool
                }
                if dict.keys.contains("Links") && dict["Links"] != nil {
                    self.links = dict["Links"] as! String
                }
                if dict.keys.contains("Product") && dict["Product"] != nil {
                    self.product = dict["Product"] as! String
                }
                if dict.keys.contains("Reason") && dict["Reason"] != nil {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("Resource") && dict["Resource"] != nil {
                    self.resource = dict["Resource"] as! String
                }
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("Severity") && dict["Severity"] != nil {
                    self.severity = dict["Severity"] as! Int64
                }
            }
        }
        public var pageNo: Int64?

        public var pageSize: Int64?

        public var result: [DescribeAdvicesPageResponseBody.Data.Result]?

        public var total: Int64?

        public override init() {
            super.init()
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
            if self.result != nil {
                var tmp : [Any] = []
                for k in self.result! {
                    tmp.append(k.toMap())
                }
                map["Result"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Result") && dict["Result"] != nil {
                var tmp : [DescribeAdvicesPageResponseBody.Data.Result] = []
                for v in dict["Result"] as! [Any] {
                    var model = DescribeAdvicesPageResponseBody.Data.Result()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.result = tmp
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var data: DescribeAdvicesPageResponseBody.Data?

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
            var model = DescribeAdvicesPageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAdvicesPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAdvicesPageResponseBody?

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
            var model = DescribeAdvicesPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAdvisorChecksRequest : Tea.TeaModel {
    public var checkId: String?

    public var language: String?

    public var product: String?

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
        if self.checkId != nil {
            map["CheckId"] = self.checkId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckId") && dict["CheckId"] != nil {
            self.checkId = dict["CheckId"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Product") && dict["Product"] != nil {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class DescribeAdvisorChecksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AdvisorCheck : Tea.TeaModel {
            public var category: String?

            public var code: String?

            public var description_: String?

            public var gmtCreated: String?

            public var gmtModified: String?

            public var id: Int64?

            public var name: String?

            public var operateColumn: String?

            public var product: String?

            public var status: String?

            public var suppResources: String?

            public var tips: String?

            public var viewColumn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.operateColumn != nil {
                    map["OperateColumn"] = self.operateColumn!
                }
                if self.product != nil {
                    map["Product"] = self.product!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.suppResources != nil {
                    map["SuppResources"] = self.suppResources!
                }
                if self.tips != nil {
                    map["Tips"] = self.tips!
                }
                if self.viewColumn != nil {
                    map["ViewColumn"] = self.viewColumn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Category") && dict["Category"] != nil {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GmtCreated") && dict["GmtCreated"] != nil {
                    self.gmtCreated = dict["GmtCreated"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OperateColumn") && dict["OperateColumn"] != nil {
                    self.operateColumn = dict["OperateColumn"] as! String
                }
                if dict.keys.contains("Product") && dict["Product"] != nil {
                    self.product = dict["Product"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SuppResources") && dict["SuppResources"] != nil {
                    self.suppResources = dict["SuppResources"] as! String
                }
                if dict.keys.contains("Tips") && dict["Tips"] != nil {
                    self.tips = dict["Tips"] as! String
                }
                if dict.keys.contains("ViewColumn") && dict["ViewColumn"] != nil {
                    self.viewColumn = dict["ViewColumn"] as! String
                }
            }
        }
        public var advisorCheck: [DescribeAdvisorChecksResponseBody.Data.AdvisorCheck]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advisorCheck != nil {
                var tmp : [Any] = []
                for k in self.advisorCheck! {
                    tmp.append(k.toMap())
                }
                map["AdvisorCheck"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdvisorCheck") && dict["AdvisorCheck"] != nil {
                var tmp : [DescribeAdvisorChecksResponseBody.Data.AdvisorCheck] = []
                for v in dict["AdvisorCheck"] as! [Any] {
                    var model = DescribeAdvisorChecksResponseBody.Data.AdvisorCheck()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.advisorCheck = tmp
            }
        }
    }
    public var code: String?

    public var data: DescribeAdvisorChecksResponseBody.Data?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeAdvisorChecksResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAdvisorChecksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAdvisorChecksResponseBody?

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
            var model = DescribeAdvisorChecksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHistoryAdvicesRequest : Tea.TeaModel {
    public var associateUid: Int64?

    public var checkId: String?

    public var clientUid: Int64?

    public var endDate: String?

    public var filterType: String?

    public var filterValue: String?

    public var isExpired: Bool?

    public var language: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var product: String?

    public var region: String?

    public var resourceId: String?

    public var reverse: Bool?

    public var severity: String?

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
        if self.associateUid != nil {
            map["AssociateUid"] = self.associateUid!
        }
        if self.checkId != nil {
            map["CheckId"] = self.checkId!
        }
        if self.clientUid != nil {
            map["ClientUid"] = self.clientUid!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.filterType != nil {
            map["FilterType"] = self.filterType!
        }
        if self.filterValue != nil {
            map["FilterValue"] = self.filterValue!
        }
        if self.isExpired != nil {
            map["IsExpired"] = self.isExpired!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssociateUid") && dict["AssociateUid"] != nil {
            self.associateUid = dict["AssociateUid"] as! Int64
        }
        if dict.keys.contains("CheckId") && dict["CheckId"] != nil {
            self.checkId = dict["CheckId"] as! String
        }
        if dict.keys.contains("ClientUid") && dict["ClientUid"] != nil {
            self.clientUid = dict["ClientUid"] as! Int64
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("FilterType") && dict["FilterType"] != nil {
            self.filterType = dict["FilterType"] as! String
        }
        if dict.keys.contains("FilterValue") && dict["FilterValue"] != nil {
            self.filterValue = dict["FilterValue"] as! String
        }
        if dict.keys.contains("IsExpired") && dict["IsExpired"] != nil {
            self.isExpired = dict["IsExpired"] as! Bool
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Product") && dict["Product"] != nil {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Reverse") && dict["Reverse"] != nil {
            self.reverse = dict["Reverse"] as! Bool
        }
        if dict.keys.contains("Severity") && dict["Severity"] != nil {
            self.severity = dict["Severity"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class GetHistoryAdvicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var checkId: String?

            public var checkName: String?

            public var description_: String?

            public var gmtCreated: String?

            public var product: String?

            public var resourceId: String?

            public var severity: Int32?

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
                if self.checkId != nil {
                    map["CheckId"] = self.checkId!
                }
                if self.checkName != nil {
                    map["CheckName"] = self.checkName!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.gmtCreated != nil {
                    map["GmtCreated"] = self.gmtCreated!
                }
                if self.product != nil {
                    map["Product"] = self.product!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.severity != nil {
                    map["Severity"] = self.severity!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckId") && dict["CheckId"] != nil {
                    self.checkId = dict["CheckId"] as! String
                }
                if dict.keys.contains("CheckName") && dict["CheckName"] != nil {
                    self.checkName = dict["CheckName"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GmtCreated") && dict["GmtCreated"] != nil {
                    self.gmtCreated = dict["GmtCreated"] as! String
                }
                if dict.keys.contains("Product") && dict["Product"] != nil {
                    self.product = dict["Product"] as! String
                }
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("Severity") && dict["Severity"] != nil {
                    self.severity = dict["Severity"] as! Int32
                }
                if dict.keys.contains("Url") && dict["Url"] != nil {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var pageNo: Int32?

        public var result: [GetHistoryAdvicesResponseBody.Data.Result]?

        public var total: Int32?

        public override init() {
            super.init()
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
            if self.result != nil {
                var tmp : [Any] = []
                for k in self.result! {
                    tmp.append(k.toMap())
                }
                map["Result"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("Result") && dict["Result"] != nil {
                var tmp : [GetHistoryAdvicesResponseBody.Data.Result] = []
                for v in dict["Result"] as! [Any] {
                    var model = GetHistoryAdvicesResponseBody.Data.Result()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.result = tmp
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var data: GetHistoryAdvicesResponseBody.Data?

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
            var model = GetHistoryAdvicesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetHistoryAdvicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHistoryAdvicesResponseBody?

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
            var model = GetHistoryAdvicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshAdvisorCheckRequest : Tea.TeaModel {
    public var checkId: String?

    public var language: String?

    public var product: String?

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
        if self.checkId != nil {
            map["CheckId"] = self.checkId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CheckId") && dict["CheckId"] != nil {
            self.checkId = dict["CheckId"] as! String
        }
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Product") && dict["Product"] != nil {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class RefreshAdvisorCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var success: Bool?

        public var taskId: Int64?

        public var traceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Bool
            }
            if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
                self.taskId = dict["TaskId"] as! Int64
            }
            if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                self.traceId = dict["TraceId"] as! String
            }
        }
    }
    public var data: RefreshAdvisorCheckResponseBody.Data?

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
            var model = RefreshAdvisorCheckResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefreshAdvisorCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshAdvisorCheckResponseBody?

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
            var model = RefreshAdvisorCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshAdvisorResourceRequest : Tea.TeaModel {
    public var product: String?

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
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Product") && dict["Product"] != nil {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class RefreshAdvisorResourceResponseBody : Tea.TeaModel {
    public var data: Int64?

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
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefreshAdvisorResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshAdvisorResourceResponseBody?

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
            var model = RefreshAdvisorResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
