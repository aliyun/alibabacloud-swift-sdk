import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class RdAccountDTO : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") {
                self.tagValue = dict["TagValue"] as! String
            }
        }
    }
    public var accountType: String?

    public var checked: Bool?

    public var displayName: String?

    public var id: Int64?

    public var name: String?

    public var tags: [RdAccountDTO.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.checked != nil {
            map["Checked"] = self.checked!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("Checked") {
            self.checked = dict["Checked"] as! Bool
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [RdAccountDTO.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = RdAccountDTO.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class RdAccountFolderDTO : Tea.TeaModel {
    public var accountCount: Int32?

    public var accountList: [RdAccountDTO]?

    public var folderId: String?

    public var folderList: [RdAccountFolderDTO]?

    public var folderName: String?

    public var resourceDirectoryId: String?

    public var resourceDirectoryPath: String?

    public var resourceDirectoryPathName: String?

    public var selectedCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountCount != nil {
            map["AccountCount"] = self.accountCount!
        }
        if self.accountList != nil {
            var tmp : [Any] = []
            for k in self.accountList! {
                tmp.append(k.toMap())
            }
            map["AccountList"] = tmp
        }
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        if self.folderList != nil {
            var tmp : [Any] = []
            for k in self.folderList! {
                tmp.append(k.toMap())
            }
            map["FolderList"] = tmp
        }
        if self.folderName != nil {
            map["FolderName"] = self.folderName!
        }
        if self.resourceDirectoryId != nil {
            map["ResourceDirectoryId"] = self.resourceDirectoryId!
        }
        if self.resourceDirectoryPath != nil {
            map["ResourceDirectoryPath"] = self.resourceDirectoryPath!
        }
        if self.resourceDirectoryPathName != nil {
            map["ResourceDirectoryPathName"] = self.resourceDirectoryPathName!
        }
        if self.selectedCount != nil {
            map["SelectedCount"] = self.selectedCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountCount") {
            self.accountCount = dict["AccountCount"] as! Int32
        }
        if dict.keys.contains("AccountList") {
            var tmp : [RdAccountDTO] = []
            for v in dict["AccountList"] as! [Any] {
                var model = RdAccountDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.accountList = tmp
        }
        if dict.keys.contains("FolderId") {
            self.folderId = dict["FolderId"] as! String
        }
        if dict.keys.contains("FolderList") {
            var tmp : [RdAccountFolderDTO] = []
            for v in dict["FolderList"] as! [Any] {
                var model = RdAccountFolderDTO()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.folderList = tmp
        }
        if dict.keys.contains("FolderName") {
            self.folderName = dict["FolderName"] as! String
        }
        if dict.keys.contains("ResourceDirectoryId") {
            self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
        }
        if dict.keys.contains("ResourceDirectoryPath") {
            self.resourceDirectoryPath = dict["ResourceDirectoryPath"] as! String
        }
        if dict.keys.contains("ResourceDirectoryPathName") {
            self.resourceDirectoryPathName = dict["ResourceDirectoryPathName"] as! String
        }
        if dict.keys.contains("SelectedCount") {
            self.selectedCount = dict["SelectedCount"] as! Int32
        }
    }
}

public class DescribeAdvicesRequest : Tea.TeaModel {
    public var adviceId: Int64?

    public var checkId: String?

    public var checkPlanId: Int64?

    public var excludeAdviceId: Int64?

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
        if self.adviceId != nil {
            map["AdviceId"] = self.adviceId!
        }
        if self.checkId != nil {
            map["CheckId"] = self.checkId!
        }
        if self.checkPlanId != nil {
            map["CheckPlanId"] = self.checkPlanId!
        }
        if self.excludeAdviceId != nil {
            map["ExcludeAdviceId"] = self.excludeAdviceId!
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
        if dict.keys.contains("AdviceId") {
            self.adviceId = dict["AdviceId"] as! Int64
        }
        if dict.keys.contains("CheckId") {
            self.checkId = dict["CheckId"] as! String
        }
        if dict.keys.contains("CheckPlanId") {
            self.checkPlanId = dict["CheckPlanId"] as! Int64
        }
        if dict.keys.contains("ExcludeAdviceId") {
            self.excludeAdviceId = dict["ExcludeAdviceId"] as! Int64
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class DescribeAdvicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Advice : Tea.TeaModel {
            public var aliyunId: Int64?

            public var checkId: String?

            public var checkName: String?

            public var checkPlanId: Int64?

            public var content: String?

            public var description_: String?

            public var gmtCreated: String?

            public var gmtModified: String?

            public var id: Int64?

            public var isExpired: Bool?

            public var product: String?

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
                if self.aliyunId != nil {
                    map["AliyunId"] = self.aliyunId!
                }
                if self.checkId != nil {
                    map["CheckId"] = self.checkId!
                }
                if self.checkName != nil {
                    map["CheckName"] = self.checkName!
                }
                if self.checkPlanId != nil {
                    map["CheckPlanId"] = self.checkPlanId!
                }
                if self.content != nil {
                    map["Content"] = self.content!
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
                if self.isExpired != nil {
                    map["IsExpired"] = self.isExpired!
                }
                if self.product != nil {
                    map["Product"] = self.product!
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
                if dict.keys.contains("AliyunId") {
                    self.aliyunId = dict["AliyunId"] as! Int64
                }
                if dict.keys.contains("CheckId") {
                    self.checkId = dict["CheckId"] as! String
                }
                if dict.keys.contains("CheckName") {
                    self.checkName = dict["CheckName"] as! String
                }
                if dict.keys.contains("CheckPlanId") {
                    self.checkPlanId = dict["CheckPlanId"] as! Int64
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
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
                if dict.keys.contains("IsExpired") {
                    self.isExpired = dict["IsExpired"] as! Bool
                }
                if dict.keys.contains("Product") {
                    self.product = dict["Product"] as! String
                }
                if dict.keys.contains("Resource") {
                    self.resource = dict["Resource"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("Severity") {
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
            if dict.keys.contains("Advice") {
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
        if dict.keys.contains("Data") {
            var model = DescribeAdvicesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
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
            var model = DescribeAdvicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAdvicesFlatPageRequest : Tea.TeaModel {
    public var adviceId: Int64?

    public var checkId: String?

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
        if self.checkId != nil {
            map["CheckId"] = self.checkId!
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
        if dict.keys.contains("AdviceId") {
            self.adviceId = dict["AdviceId"] as! Int64
        }
        if dict.keys.contains("CheckId") {
            self.checkId = dict["CheckId"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class DescribeAdvicesFlatPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var aliyunId: Int64?

            public var checkId: String?

            public var checkName: String?

            public var content: String?

            public var description_: String?

            public var gmtCreated: String?

            public var gmtModified: String?

            public var id: Int64?

            public var isExpired: Bool?

            public var product: String?

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
                if self.product != nil {
                    map["Product"] = self.product!
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
                if dict.keys.contains("AliyunId") {
                    self.aliyunId = dict["AliyunId"] as! Int64
                }
                if dict.keys.contains("CheckId") {
                    self.checkId = dict["CheckId"] as! String
                }
                if dict.keys.contains("CheckName") {
                    self.checkName = dict["CheckName"] as! String
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
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
                if dict.keys.contains("IsExpired") {
                    self.isExpired = dict["IsExpired"] as! Bool
                }
                if dict.keys.contains("Product") {
                    self.product = dict["Product"] as! String
                }
                if dict.keys.contains("Resource") {
                    self.resource = dict["Resource"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("Severity") {
                    self.severity = dict["Severity"] as! Int64
                }
            }
        }
        public var pageNo: Int64?

        public var pageSize: Int64?

        public var result: [DescribeAdvicesFlatPageResponseBody.Data.Result]?

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
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Result") {
                var tmp : [DescribeAdvicesFlatPageResponseBody.Data.Result] = []
                for v in dict["Result"] as! [Any] {
                    var model = DescribeAdvicesFlatPageResponseBody.Data.Result()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.result = tmp
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var data: DescribeAdvicesFlatPageResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = DescribeAdvicesFlatPageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAdvicesFlatPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAdvicesFlatPageResponseBody?

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
            var model = DescribeAdvicesFlatPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAdvicesPageRequest : Tea.TeaModel {
    public var adviceId: Int64?

    public var checkId: String?

    public var checkPlanId: Int64?

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
        if self.checkId != nil {
            map["CheckId"] = self.checkId!
        }
        if self.checkPlanId != nil {
            map["CheckPlanId"] = self.checkPlanId!
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
        if dict.keys.contains("AdviceId") {
            self.adviceId = dict["AdviceId"] as! Int64
        }
        if dict.keys.contains("CheckId") {
            self.checkId = dict["CheckId"] as! String
        }
        if dict.keys.contains("CheckPlanId") {
            self.checkPlanId = dict["CheckPlanId"] as! Int64
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class DescribeAdvicesPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var aliyunId: Int64?

            public var checkId: String?

            public var checkName: String?

            public var content: String?

            public var description_: String?

            public var gmtCreated: String?

            public var gmtModified: String?

            public var id: Int64?

            public var isExpired: Bool?

            public var product: String?

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
                if self.product != nil {
                    map["Product"] = self.product!
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
                if dict.keys.contains("AliyunId") {
                    self.aliyunId = dict["AliyunId"] as! Int64
                }
                if dict.keys.contains("CheckId") {
                    self.checkId = dict["CheckId"] as! String
                }
                if dict.keys.contains("CheckName") {
                    self.checkName = dict["CheckName"] as! String
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
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
                if dict.keys.contains("IsExpired") {
                    self.isExpired = dict["IsExpired"] as! Bool
                }
                if dict.keys.contains("Product") {
                    self.product = dict["Product"] as! String
                }
                if dict.keys.contains("Resource") {
                    self.resource = dict["Resource"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("Severity") {
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
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Result") {
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
            if dict.keys.contains("Total") {
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
        if dict.keys.contains("Data") {
            var model = DescribeAdvicesPageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
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
            var model = DescribeAdvicesPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAdvisorChecksRequest : Tea.TeaModel {
    public var language: String?

    public var product: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
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

            public var name: String?

            public var operateColumn: String?

            public var product: String?

            public var status: String?

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
                if self.tips != nil {
                    map["Tips"] = self.tips!
                }
                if self.viewColumn != nil {
                    map["ViewColumn"] = self.viewColumn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GmtCreated") {
                    self.gmtCreated = dict["GmtCreated"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OperateColumn") {
                    self.operateColumn = dict["OperateColumn"] as! String
                }
                if dict.keys.contains("Product") {
                    self.product = dict["Product"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Tips") {
                    self.tips = dict["Tips"] as! String
                }
                if dict.keys.contains("ViewColumn") {
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
            if dict.keys.contains("AdvisorCheck") {
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeAdvisorChecksResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
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
            var model = DescribeAdvisorChecksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAdvisorChecksFoPagesRequest : Tea.TeaModel {
    public var assumeAliyunId: Int64?

    public var bizCategory: String?

    public var category: String?

    public var checkTypes: [Int64]?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var product: String?

    public var source: String?

    public var status: String?

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
        if self.assumeAliyunId != nil {
            map["AssumeAliyunId"] = self.assumeAliyunId!
        }
        if self.bizCategory != nil {
            map["BizCategory"] = self.bizCategory!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.checkTypes != nil {
            map["CheckTypes"] = self.checkTypes!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumeAliyunId") {
            self.assumeAliyunId = dict["AssumeAliyunId"] as! Int64
        }
        if dict.keys.contains("BizCategory") {
            self.bizCategory = dict["BizCategory"] as! String
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("CheckTypes") {
            self.checkTypes = dict["CheckTypes"] as! [Int64]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class DescribeAdvisorChecksFoPagesShrinkRequest : Tea.TeaModel {
    public var assumeAliyunId: Int64?

    public var bizCategory: String?

    public var category: String?

    public var checkTypesShrink: String?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var product: String?

    public var source: String?

    public var status: String?

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
        if self.assumeAliyunId != nil {
            map["AssumeAliyunId"] = self.assumeAliyunId!
        }
        if self.bizCategory != nil {
            map["BizCategory"] = self.bizCategory!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.checkTypesShrink != nil {
            map["CheckTypes"] = self.checkTypesShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumeAliyunId") {
            self.assumeAliyunId = dict["AssumeAliyunId"] as! Int64
        }
        if dict.keys.contains("BizCategory") {
            self.bizCategory = dict["BizCategory"] as! String
        }
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("CheckTypes") {
            self.checkTypesShrink = dict["CheckTypes"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class DescribeAdvisorChecksFoPagesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public var category: String?

            public var code: String?

            public var configSupport: String?

            public var description_: String?

            public var inspectionScope: String?

            public var name: String?

            public var operateColumn: String?

            public var product: String?

            public var riskLevel: Int64?

            public var source: String?

            public var status: String?

            public var subCategory: [Int64]?

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
                if self.configSupport != nil {
                    map["ConfigSupport"] = self.configSupport!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.inspectionScope != nil {
                    map["InspectionScope"] = self.inspectionScope!
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
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subCategory != nil {
                    map["SubCategory"] = self.subCategory!
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
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("ConfigSupport") {
                    self.configSupport = dict["ConfigSupport"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("InspectionScope") {
                    self.inspectionScope = dict["InspectionScope"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OperateColumn") {
                    self.operateColumn = dict["OperateColumn"] as! String
                }
                if dict.keys.contains("Product") {
                    self.product = dict["Product"] as! String
                }
                if dict.keys.contains("RiskLevel") {
                    self.riskLevel = dict["RiskLevel"] as! Int64
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SubCategory") {
                    self.subCategory = dict["SubCategory"] as! [Int64]
                }
                if dict.keys.contains("Tips") {
                    self.tips = dict["Tips"] as! String
                }
                if dict.keys.contains("ViewColumn") {
                    self.viewColumn = dict["ViewColumn"] as! String
                }
            }
        }
        public var pageNo: Int32?

        public var pageSize: Int32?

        public var result: [DescribeAdvisorChecksFoPagesResponseBody.Data.Result]?

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
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Result") {
                var tmp : [DescribeAdvisorChecksFoPagesResponseBody.Data.Result] = []
                for v in dict["Result"] as! [Any] {
                    var model = DescribeAdvisorChecksFoPagesResponseBody.Data.Result()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.result = tmp
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: [DescribeAdvisorChecksFoPagesResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [DescribeAdvisorChecksFoPagesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAdvisorChecksFoPagesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeAdvisorChecksFoPagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAdvisorChecksFoPagesResponseBody?

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
            var model = DescribeAdvisorChecksFoPagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAdvisorResourcesRequest : Tea.TeaModel {
    public var keyword: String?

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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
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
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
    }
}

public class DescribeAdvisorResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Result : Tea.TeaModel {
            public class Resource : Tea.TeaModel {
                public var data: String?

                public var product: String?

                public var regionId: String?

                public var resourceId: String?

                public var resourceName: String?

                public override init() {
                    super.init()
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
                    if self.product != nil {
                        map["Product"] = self.product!
                    }
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.resourceId != nil {
                        map["ResourceId"] = self.resourceId!
                    }
                    if self.resourceName != nil {
                        map["ResourceName"] = self.resourceName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Data") {
                        self.data = dict["Data"] as! String
                    }
                    if dict.keys.contains("Product") {
                        self.product = dict["Product"] as! String
                    }
                    if dict.keys.contains("RegionId") {
                        self.regionId = dict["RegionId"] as! String
                    }
                    if dict.keys.contains("ResourceId") {
                        self.resourceId = dict["ResourceId"] as! String
                    }
                    if dict.keys.contains("ResourceName") {
                        self.resourceName = dict["ResourceName"] as! String
                    }
                }
            }
            public var resource: [DescribeAdvisorResourcesResponseBody.Data.Result.Resource]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resource != nil {
                    var tmp : [Any] = []
                    for k in self.resource! {
                        tmp.append(k.toMap())
                    }
                    map["Resource"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Resource") {
                    var tmp : [DescribeAdvisorResourcesResponseBody.Data.Result.Resource] = []
                    for v in dict["Resource"] as! [Any] {
                        var model = DescribeAdvisorResourcesResponseBody.Data.Result.Resource()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.resource = tmp
                }
            }
        }
        public var pageNo: Int32?

        public var pageSize: Int32?

        public var result: DescribeAdvisorResourcesResponseBody.Data.Result?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.result?.validate()
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
                map["Result"] = self.result?.toMap()
            }
            if self.total != nil {
                map["Total"] = self.total!
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
            if dict.keys.contains("Result") {
                var model = DescribeAdvisorResourcesResponseBody.Data.Result()
                model.fromMap(dict["Result"] as! [String: Any])
                self.result = model
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var data: DescribeAdvisorResourcesResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = DescribeAdvisorResourcesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAdvisorResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAdvisorResourcesResponseBody?

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
            var model = DescribeAdvisorResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCostCheckAdvicesRequest : Tea.TeaModel {
    public class TagList : Tea.TeaModel {
        public var tagKey: String?

        public var tagValue: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") {
                self.tagValue = dict["TagValue"] as! [String]
            }
        }
    }
    public var assumeAliyunIdList: [Int64]?

    public var checkId: String?

    public var checkPlanId: Int64?

    public var language: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionIds: [String]?

    public var resourceGroupIdList: [String]?

    public var resourceId: String?

    public var resourceIds: [String]?

    public var resourceName: String?

    public var severity: String?

    public var tagKeys: [String]?

    public var tagList: [DescribeCostCheckAdvicesRequest.TagList]?

    public var tagValues: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assumeAliyunIdList != nil {
            map["AssumeAliyunIdList"] = self.assumeAliyunIdList!
        }
        if self.checkId != nil {
            map["CheckId"] = self.checkId!
        }
        if self.checkPlanId != nil {
            map["CheckPlanId"] = self.checkPlanId!
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
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds!
        }
        if self.resourceGroupIdList != nil {
            map["ResourceGroupIdList"] = self.resourceGroupIdList!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
        }
        if self.tagList != nil {
            var tmp : [Any] = []
            for k in self.tagList! {
                tmp.append(k.toMap())
            }
            map["TagList"] = tmp
        }
        if self.tagValues != nil {
            map["TagValues"] = self.tagValues!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumeAliyunIdList") {
            self.assumeAliyunIdList = dict["AssumeAliyunIdList"] as! [Int64]
        }
        if dict.keys.contains("CheckId") {
            self.checkId = dict["CheckId"] as! String
        }
        if dict.keys.contains("CheckPlanId") {
            self.checkPlanId = dict["CheckPlanId"] as! Int64
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionIds") {
            self.regionIds = dict["RegionIds"] as! [String]
        }
        if dict.keys.contains("ResourceGroupIdList") {
            self.resourceGroupIdList = dict["ResourceGroupIdList"] as! [String]
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! [String]
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("Severity") {
            self.severity = dict["Severity"] as! String
        }
        if dict.keys.contains("TagKeys") {
            self.tagKeys = dict["TagKeys"] as! [String]
        }
        if dict.keys.contains("TagList") {
            var tmp : [DescribeCostCheckAdvicesRequest.TagList] = []
            for v in dict["TagList"] as! [Any] {
                var model = DescribeCostCheckAdvicesRequest.TagList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagList = tmp
        }
        if dict.keys.contains("TagValues") {
            self.tagValues = dict["TagValues"] as! [String]
        }
    }
}

public class DescribeCostCheckAdvicesShrinkRequest : Tea.TeaModel {
    public var assumeAliyunIdListShrink: String?

    public var checkId: String?

    public var checkPlanId: Int64?

    public var language: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionIdsShrink: String?

    public var resourceGroupIdListShrink: String?

    public var resourceId: String?

    public var resourceIdsShrink: String?

    public var resourceName: String?

    public var severity: String?

    public var tagKeysShrink: String?

    public var tagListShrink: String?

    public var tagValuesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assumeAliyunIdListShrink != nil {
            map["AssumeAliyunIdList"] = self.assumeAliyunIdListShrink!
        }
        if self.checkId != nil {
            map["CheckId"] = self.checkId!
        }
        if self.checkPlanId != nil {
            map["CheckPlanId"] = self.checkPlanId!
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
        if self.regionIdsShrink != nil {
            map["RegionIds"] = self.regionIdsShrink!
        }
        if self.resourceGroupIdListShrink != nil {
            map["ResourceGroupIdList"] = self.resourceGroupIdListShrink!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceIdsShrink != nil {
            map["ResourceIds"] = self.resourceIdsShrink!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.tagKeysShrink != nil {
            map["TagKeys"] = self.tagKeysShrink!
        }
        if self.tagListShrink != nil {
            map["TagList"] = self.tagListShrink!
        }
        if self.tagValuesShrink != nil {
            map["TagValues"] = self.tagValuesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumeAliyunIdList") {
            self.assumeAliyunIdListShrink = dict["AssumeAliyunIdList"] as! String
        }
        if dict.keys.contains("CheckId") {
            self.checkId = dict["CheckId"] as! String
        }
        if dict.keys.contains("CheckPlanId") {
            self.checkPlanId = dict["CheckPlanId"] as! Int64
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionIds") {
            self.regionIdsShrink = dict["RegionIds"] as! String
        }
        if dict.keys.contains("ResourceGroupIdList") {
            self.resourceGroupIdListShrink = dict["ResourceGroupIdList"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIdsShrink = dict["ResourceIds"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("Severity") {
            self.severity = dict["Severity"] as! String
        }
        if dict.keys.contains("TagKeys") {
            self.tagKeysShrink = dict["TagKeys"] as! String
        }
        if dict.keys.contains("TagList") {
            self.tagListShrink = dict["TagList"] as! String
        }
        if dict.keys.contains("TagValues") {
            self.tagValuesShrink = dict["TagValues"] as! String
        }
    }
}

public class DescribeCostCheckAdvicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AdviceList : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public var tagKey: String?

                public var tagValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagKey != nil {
                        map["TagKey"] = self.tagKey!
                    }
                    if self.tagValue != nil {
                        map["TagValue"] = self.tagValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TagKey") {
                        self.tagKey = dict["TagKey"] as! String
                    }
                    if dict.keys.contains("TagValue") {
                        self.tagValue = dict["TagValue"] as! String
                    }
                }
            }
            public var accountFolderId: String?

            public var accountFolderName: String?

            public var aliyunId: Int64?

            public var content: String?

            public var email: String?

            public var endTime: Int64?

            public var gmtDeleted: Int64?

            public var product: String?

            public var regionId: String?

            public var resourceId: String?

            public var resourceName: String?

            public var severity: String?

            public var startTime: Int64?

            public var tags: [DescribeCostCheckAdvicesResponseBody.Data.AdviceList.Tags]?

            public var url: String?

            public var userName: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountFolderId != nil {
                    map["AccountFolderId"] = self.accountFolderId!
                }
                if self.accountFolderName != nil {
                    map["AccountFolderName"] = self.accountFolderName!
                }
                if self.aliyunId != nil {
                    map["AliyunId"] = self.aliyunId!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.gmtDeleted != nil {
                    map["GmtDeleted"] = self.gmtDeleted!
                }
                if self.product != nil {
                    map["Product"] = self.product!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.severity != nil {
                    map["Severity"] = self.severity!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountFolderId") {
                    self.accountFolderId = dict["AccountFolderId"] as! String
                }
                if dict.keys.contains("AccountFolderName") {
                    self.accountFolderName = dict["AccountFolderName"] as! String
                }
                if dict.keys.contains("AliyunId") {
                    self.aliyunId = dict["AliyunId"] as! Int64
                }
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int64
                }
                if dict.keys.contains("GmtDeleted") {
                    self.gmtDeleted = dict["GmtDeleted"] as! Int64
                }
                if dict.keys.contains("Product") {
                    self.product = dict["Product"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("Severity") {
                    self.severity = dict["Severity"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int64
                }
                if dict.keys.contains("Tags") {
                    var tmp : [DescribeCostCheckAdvicesResponseBody.Data.AdviceList.Tags] = []
                    for v in dict["Tags"] as! [Any] {
                        var model = DescribeCostCheckAdvicesResponseBody.Data.AdviceList.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var adviceList: [DescribeCostCheckAdvicesResponseBody.Data.AdviceList]?

        public var checkId: String?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.adviceList != nil {
                var tmp : [Any] = []
                for k in self.adviceList! {
                    tmp.append(k.toMap())
                }
                map["AdviceList"] = tmp
            }
            if self.checkId != nil {
                map["CheckId"] = self.checkId!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdviceList") {
                var tmp : [DescribeCostCheckAdvicesResponseBody.Data.AdviceList] = []
                for v in dict["AdviceList"] as! [Any] {
                    var model = DescribeCostCheckAdvicesResponseBody.Data.AdviceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.adviceList = tmp
            }
            if dict.keys.contains("CheckId") {
                self.checkId = dict["CheckId"] as! String
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: DescribeCostCheckAdvicesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeCostCheckAdvicesResponseBody.Data()
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
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeCostCheckAdvicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCostCheckAdvicesResponseBody?

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
            var model = DescribeCostCheckAdvicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCostCheckResultsRequest : Tea.TeaModel {
    public class TagList : Tea.TeaModel {
        public var tagKey: String?

        public var tagValue: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") {
                self.tagValue = dict["TagValue"] as! [String]
            }
        }
    }
    public var assumeAliyunIdList: [Int64]?

    public var checkIds: [String]?

    public var checkPlanId: Int64?

    public var groupBy: String?

    public var product: String?

    public var regionIds: [String]?

    public var resourceGroupIdList: [String]?

    public var resourceId: String?

    public var resourceIds: [String]?

    public var resourceName: String?

    public var severity: Int32?

    public var tagKeys: [String]?

    public var tagList: [DescribeCostCheckResultsRequest.TagList]?

    public var tagValues: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assumeAliyunIdList != nil {
            map["AssumeAliyunIdList"] = self.assumeAliyunIdList!
        }
        if self.checkIds != nil {
            map["CheckIds"] = self.checkIds!
        }
        if self.checkPlanId != nil {
            map["CheckPlanId"] = self.checkPlanId!
        }
        if self.groupBy != nil {
            map["GroupBy"] = self.groupBy!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionIds != nil {
            map["RegionIds"] = self.regionIds!
        }
        if self.resourceGroupIdList != nil {
            map["ResourceGroupIdList"] = self.resourceGroupIdList!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
        }
        if self.tagList != nil {
            var tmp : [Any] = []
            for k in self.tagList! {
                tmp.append(k.toMap())
            }
            map["TagList"] = tmp
        }
        if self.tagValues != nil {
            map["TagValues"] = self.tagValues!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumeAliyunIdList") {
            self.assumeAliyunIdList = dict["AssumeAliyunIdList"] as! [Int64]
        }
        if dict.keys.contains("CheckIds") {
            self.checkIds = dict["CheckIds"] as! [String]
        }
        if dict.keys.contains("CheckPlanId") {
            self.checkPlanId = dict["CheckPlanId"] as! Int64
        }
        if dict.keys.contains("GroupBy") {
            self.groupBy = dict["GroupBy"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionIds") {
            self.regionIds = dict["RegionIds"] as! [String]
        }
        if dict.keys.contains("ResourceGroupIdList") {
            self.resourceGroupIdList = dict["ResourceGroupIdList"] as! [String]
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! [String]
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("Severity") {
            self.severity = dict["Severity"] as! Int32
        }
        if dict.keys.contains("TagKeys") {
            self.tagKeys = dict["TagKeys"] as! [String]
        }
        if dict.keys.contains("TagList") {
            var tmp : [DescribeCostCheckResultsRequest.TagList] = []
            for v in dict["TagList"] as! [Any] {
                var model = DescribeCostCheckResultsRequest.TagList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagList = tmp
        }
        if dict.keys.contains("TagValues") {
            self.tagValues = dict["TagValues"] as! [String]
        }
    }
}

public class DescribeCostCheckResultsShrinkRequest : Tea.TeaModel {
    public var assumeAliyunIdListShrink: String?

    public var checkIdsShrink: String?

    public var checkPlanId: Int64?

    public var groupBy: String?

    public var product: String?

    public var regionIdsShrink: String?

    public var resourceGroupIdListShrink: String?

    public var resourceId: String?

    public var resourceIdsShrink: String?

    public var resourceName: String?

    public var severity: Int32?

    public var tagKeysShrink: String?

    public var tagListShrink: String?

    public var tagValuesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assumeAliyunIdListShrink != nil {
            map["AssumeAliyunIdList"] = self.assumeAliyunIdListShrink!
        }
        if self.checkIdsShrink != nil {
            map["CheckIds"] = self.checkIdsShrink!
        }
        if self.checkPlanId != nil {
            map["CheckPlanId"] = self.checkPlanId!
        }
        if self.groupBy != nil {
            map["GroupBy"] = self.groupBy!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionIdsShrink != nil {
            map["RegionIds"] = self.regionIdsShrink!
        }
        if self.resourceGroupIdListShrink != nil {
            map["ResourceGroupIdList"] = self.resourceGroupIdListShrink!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceIdsShrink != nil {
            map["ResourceIds"] = self.resourceIdsShrink!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.severity != nil {
            map["Severity"] = self.severity!
        }
        if self.tagKeysShrink != nil {
            map["TagKeys"] = self.tagKeysShrink!
        }
        if self.tagListShrink != nil {
            map["TagList"] = self.tagListShrink!
        }
        if self.tagValuesShrink != nil {
            map["TagValues"] = self.tagValuesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumeAliyunIdList") {
            self.assumeAliyunIdListShrink = dict["AssumeAliyunIdList"] as! String
        }
        if dict.keys.contains("CheckIds") {
            self.checkIdsShrink = dict["CheckIds"] as! String
        }
        if dict.keys.contains("CheckPlanId") {
            self.checkPlanId = dict["CheckPlanId"] as! Int64
        }
        if dict.keys.contains("GroupBy") {
            self.groupBy = dict["GroupBy"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionIds") {
            self.regionIdsShrink = dict["RegionIds"] as! String
        }
        if dict.keys.contains("ResourceGroupIdList") {
            self.resourceGroupIdListShrink = dict["ResourceGroupIdList"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIdsShrink = dict["ResourceIds"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("Severity") {
            self.severity = dict["Severity"] as! Int32
        }
        if dict.keys.contains("TagKeys") {
            self.tagKeysShrink = dict["TagKeys"] as! String
        }
        if dict.keys.contains("TagList") {
            self.tagListShrink = dict["TagList"] as! String
        }
        if dict.keys.contains("TagValues") {
            self.tagValuesShrink = dict["TagValues"] as! String
        }
    }
}

public class DescribeCostCheckResultsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ViewGroup : Tea.TeaModel {
            public class CheckItems : Tea.TeaModel {
                public var adviceCount: Int32?

                public var adviceResourceCount: Int32?

                public var category: String?

                public var checkId: String?

                public var checkName: String?

                public var currentCost: Double?

                public var description_: String?

                public var expectedSavingCost: Double?

                public var optimizedCost: Double?

                public var product: String?

                public var severity: Int32?

                public var summary: String?

                public var tips: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.adviceCount != nil {
                        map["AdviceCount"] = self.adviceCount!
                    }
                    if self.adviceResourceCount != nil {
                        map["AdviceResourceCount"] = self.adviceResourceCount!
                    }
                    if self.category != nil {
                        map["Category"] = self.category!
                    }
                    if self.checkId != nil {
                        map["CheckId"] = self.checkId!
                    }
                    if self.checkName != nil {
                        map["CheckName"] = self.checkName!
                    }
                    if self.currentCost != nil {
                        map["CurrentCost"] = self.currentCost!
                    }
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.expectedSavingCost != nil {
                        map["ExpectedSavingCost"] = self.expectedSavingCost!
                    }
                    if self.optimizedCost != nil {
                        map["OptimizedCost"] = self.optimizedCost!
                    }
                    if self.product != nil {
                        map["Product"] = self.product!
                    }
                    if self.severity != nil {
                        map["Severity"] = self.severity!
                    }
                    if self.summary != nil {
                        map["Summary"] = self.summary!
                    }
                    if self.tips != nil {
                        map["Tips"] = self.tips!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdviceCount") {
                        self.adviceCount = dict["AdviceCount"] as! Int32
                    }
                    if dict.keys.contains("AdviceResourceCount") {
                        self.adviceResourceCount = dict["AdviceResourceCount"] as! Int32
                    }
                    if dict.keys.contains("Category") {
                        self.category = dict["Category"] as! String
                    }
                    if dict.keys.contains("CheckId") {
                        self.checkId = dict["CheckId"] as! String
                    }
                    if dict.keys.contains("CheckName") {
                        self.checkName = dict["CheckName"] as! String
                    }
                    if dict.keys.contains("CurrentCost") {
                        self.currentCost = dict["CurrentCost"] as! Double
                    }
                    if dict.keys.contains("Description") {
                        self.description_ = dict["Description"] as! String
                    }
                    if dict.keys.contains("ExpectedSavingCost") {
                        self.expectedSavingCost = dict["ExpectedSavingCost"] as! Double
                    }
                    if dict.keys.contains("OptimizedCost") {
                        self.optimizedCost = dict["OptimizedCost"] as! Double
                    }
                    if dict.keys.contains("Product") {
                        self.product = dict["Product"] as! String
                    }
                    if dict.keys.contains("Severity") {
                        self.severity = dict["Severity"] as! Int32
                    }
                    if dict.keys.contains("Summary") {
                        self.summary = dict["Summary"] as! String
                    }
                    if dict.keys.contains("Tips") {
                        self.tips = dict["Tips"] as! String
                    }
                }
            }
            public var checkItems: [DescribeCostCheckResultsResponseBody.Data.ViewGroup.CheckItems]?

            public var groupCode: String?

            public var groupCount: Int32?

            public var groupExpectedSavingCost: Double?

            public var groupName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkItems != nil {
                    var tmp : [Any] = []
                    for k in self.checkItems! {
                        tmp.append(k.toMap())
                    }
                    map["CheckItems"] = tmp
                }
                if self.groupCode != nil {
                    map["GroupCode"] = self.groupCode!
                }
                if self.groupCount != nil {
                    map["GroupCount"] = self.groupCount!
                }
                if self.groupExpectedSavingCost != nil {
                    map["GroupExpectedSavingCost"] = self.groupExpectedSavingCost!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckItems") {
                    var tmp : [DescribeCostCheckResultsResponseBody.Data.ViewGroup.CheckItems] = []
                    for v in dict["CheckItems"] as! [Any] {
                        var model = DescribeCostCheckResultsResponseBody.Data.ViewGroup.CheckItems()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.checkItems = tmp
                }
                if dict.keys.contains("GroupCode") {
                    self.groupCode = dict["GroupCode"] as! String
                }
                if dict.keys.contains("GroupCount") {
                    self.groupCount = dict["GroupCount"] as! Int32
                }
                if dict.keys.contains("GroupExpectedSavingCost") {
                    self.groupExpectedSavingCost = dict["GroupExpectedSavingCost"] as! Double
                }
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
            }
        }
        public var adviceResourceCount: Int32?

        public var groupBy: String?

        public var normalCount: Int32?

        public var resourceCount: Int32?

        public var totalCount: Int32?

        public var viewGroup: [DescribeCostCheckResultsResponseBody.Data.ViewGroup]?

        public var warningCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adviceResourceCount != nil {
                map["AdviceResourceCount"] = self.adviceResourceCount!
            }
            if self.groupBy != nil {
                map["GroupBy"] = self.groupBy!
            }
            if self.normalCount != nil {
                map["NormalCount"] = self.normalCount!
            }
            if self.resourceCount != nil {
                map["ResourceCount"] = self.resourceCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.viewGroup != nil {
                var tmp : [Any] = []
                for k in self.viewGroup! {
                    tmp.append(k.toMap())
                }
                map["ViewGroup"] = tmp
            }
            if self.warningCount != nil {
                map["WarningCount"] = self.warningCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdviceResourceCount") {
                self.adviceResourceCount = dict["AdviceResourceCount"] as! Int32
            }
            if dict.keys.contains("GroupBy") {
                self.groupBy = dict["GroupBy"] as! String
            }
            if dict.keys.contains("NormalCount") {
                self.normalCount = dict["NormalCount"] as! Int32
            }
            if dict.keys.contains("ResourceCount") {
                self.resourceCount = dict["ResourceCount"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("ViewGroup") {
                var tmp : [DescribeCostCheckResultsResponseBody.Data.ViewGroup] = []
                for v in dict["ViewGroup"] as! [Any] {
                    var model = DescribeCostCheckResultsResponseBody.Data.ViewGroup()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.viewGroup = tmp
            }
            if dict.keys.contains("WarningCount") {
                self.warningCount = dict["WarningCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: DescribeCostCheckResultsResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeCostCheckResultsResponseBody.Data()
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
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeCostCheckResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCostCheckResultsResponseBody?

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
            var model = DescribeCostCheckResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCostOptimizationOverviewRequest : Tea.TeaModel {
    public var assumeAliyunId: Int64?

    public var assumeAliyunIdList: [Int64]?

    public var checkPlanId: Int64?

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
        if self.assumeAliyunId != nil {
            map["AssumeAliyunId"] = self.assumeAliyunId!
        }
        if self.assumeAliyunIdList != nil {
            map["AssumeAliyunIdList"] = self.assumeAliyunIdList!
        }
        if self.checkPlanId != nil {
            map["CheckPlanId"] = self.checkPlanId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumeAliyunId") {
            self.assumeAliyunId = dict["AssumeAliyunId"] as! Int64
        }
        if dict.keys.contains("AssumeAliyunIdList") {
            self.assumeAliyunIdList = dict["AssumeAliyunIdList"] as! [Int64]
        }
        if dict.keys.contains("CheckPlanId") {
            self.checkPlanId = dict["CheckPlanId"] as! Int64
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class DescribeCostOptimizationOverviewShrinkRequest : Tea.TeaModel {
    public var assumeAliyunId: Int64?

    public var assumeAliyunIdListShrink: String?

    public var checkPlanId: Int64?

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
        if self.assumeAliyunId != nil {
            map["AssumeAliyunId"] = self.assumeAliyunId!
        }
        if self.assumeAliyunIdListShrink != nil {
            map["AssumeAliyunIdList"] = self.assumeAliyunIdListShrink!
        }
        if self.checkPlanId != nil {
            map["CheckPlanId"] = self.checkPlanId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumeAliyunId") {
            self.assumeAliyunId = dict["AssumeAliyunId"] as! Int64
        }
        if dict.keys.contains("AssumeAliyunIdList") {
            self.assumeAliyunIdListShrink = dict["AssumeAliyunIdList"] as! String
        }
        if dict.keys.contains("CheckPlanId") {
            self.checkPlanId = dict["CheckPlanId"] as! Int64
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class DescribeCostOptimizationOverviewResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public var billingCycleDate: String?

        public var currentBillingCost: String?

        public var expectedSavingCost: String?

        public var gmtModified: Int64?

        public var optCheckItemNum: String?

        public var optResourceNum: String?

        public var processedResourceCount: String?

        public var processedSaveAmount: String?

        public var taskId: Int64?

        public var waitProcessResourceCount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.billingCycleDate != nil {
                map["BillingCycleDate"] = self.billingCycleDate!
            }
            if self.currentBillingCost != nil {
                map["CurrentBillingCost"] = self.currentBillingCost!
            }
            if self.expectedSavingCost != nil {
                map["ExpectedSavingCost"] = self.expectedSavingCost!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.optCheckItemNum != nil {
                map["OptCheckItemNum"] = self.optCheckItemNum!
            }
            if self.optResourceNum != nil {
                map["OptResourceNum"] = self.optResourceNum!
            }
            if self.processedResourceCount != nil {
                map["ProcessedResourceCount"] = self.processedResourceCount!
            }
            if self.processedSaveAmount != nil {
                map["ProcessedSaveAmount"] = self.processedSaveAmount!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.waitProcessResourceCount != nil {
                map["WaitProcessResourceCount"] = self.waitProcessResourceCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillingCycleDate") {
                self.billingCycleDate = dict["BillingCycleDate"] as! String
            }
            if dict.keys.contains("CurrentBillingCost") {
                self.currentBillingCost = dict["CurrentBillingCost"] as! String
            }
            if dict.keys.contains("ExpectedSavingCost") {
                self.expectedSavingCost = dict["ExpectedSavingCost"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("OptCheckItemNum") {
                self.optCheckItemNum = dict["OptCheckItemNum"] as! String
            }
            if dict.keys.contains("OptResourceNum") {
                self.optResourceNum = dict["OptResourceNum"] as! String
            }
            if dict.keys.contains("ProcessedResourceCount") {
                self.processedResourceCount = dict["ProcessedResourceCount"] as! String
            }
            if dict.keys.contains("ProcessedSaveAmount") {
                self.processedSaveAmount = dict["ProcessedSaveAmount"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int64
            }
            if dict.keys.contains("WaitProcessResourceCount") {
                self.waitProcessResourceCount = dict["WaitProcessResourceCount"] as! String
            }
        }
    }
    public var accessDeniedDetail: DescribeCostOptimizationOverviewResponseBody.AccessDeniedDetail?

    public var code: String?

    public var data: DescribeCostOptimizationOverviewResponseBody.Data?

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
        try self.accessDeniedDetail?.validate()
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = DescribeCostOptimizationOverviewResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DescribeCostOptimizationOverviewResponseBody.Data()
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

public class DescribeCostOptimizationOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCostOptimizationOverviewResponseBody?

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
            var model = DescribeCostOptimizationOverviewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHistoryAdvicesRequest : Tea.TeaModel {
    public var endDate: String?

    public var language: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var product: String?

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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
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
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("Reverse") {
            self.reverse = dict["Reverse"] as! Bool
        }
        if dict.keys.contains("Severity") {
            self.severity = dict["Severity"] as! String
        }
        if dict.keys.contains("StartDate") {
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
                if dict.keys.contains("CheckId") {
                    self.checkId = dict["CheckId"] as! String
                }
                if dict.keys.contains("CheckName") {
                    self.checkName = dict["CheckName"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GmtCreated") {
                    self.gmtCreated = dict["GmtCreated"] as! String
                }
                if dict.keys.contains("Product") {
                    self.product = dict["Product"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("Severity") {
                    self.severity = dict["Severity"] as! Int32
                }
                if dict.keys.contains("Url") {
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
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("Result") {
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
            if dict.keys.contains("Total") {
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
        if dict.keys.contains("Data") {
            var model = GetHistoryAdvicesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
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
            var model = GetHistoryAdvicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInspectProgressRequest : Tea.TeaModel {
    public var assumeAliyunId: Int64?

    public var taskId: Int64?

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
        if self.assumeAliyunId != nil {
            map["AssumeAliyunId"] = self.assumeAliyunId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumeAliyunId") {
            self.assumeAliyunId = dict["AssumeAliyunId"] as! Int64
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class GetInspectProgressResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var allSubtaskCount: Int32?

        public var finish: Bool?

        public var finishRate: Double?

        public var finishSubtaskCount: Int32?

        public var lastInspectDate: Int64?

        public var taskId: Int64?

        public var usedTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allSubtaskCount != nil {
                map["AllSubtaskCount"] = self.allSubtaskCount!
            }
            if self.finish != nil {
                map["Finish"] = self.finish!
            }
            if self.finishRate != nil {
                map["FinishRate"] = self.finishRate!
            }
            if self.finishSubtaskCount != nil {
                map["FinishSubtaskCount"] = self.finishSubtaskCount!
            }
            if self.lastInspectDate != nil {
                map["LastInspectDate"] = self.lastInspectDate!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.usedTime != nil {
                map["UsedTime"] = self.usedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllSubtaskCount") {
                self.allSubtaskCount = dict["AllSubtaskCount"] as! Int32
            }
            if dict.keys.contains("Finish") {
                self.finish = dict["Finish"] as! Bool
            }
            if dict.keys.contains("FinishRate") {
                self.finishRate = dict["FinishRate"] as! Double
            }
            if dict.keys.contains("FinishSubtaskCount") {
                self.finishSubtaskCount = dict["FinishSubtaskCount"] as! Int32
            }
            if dict.keys.contains("LastInspectDate") {
                self.lastInspectDate = dict["LastInspectDate"] as! Int64
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int64
            }
            if dict.keys.contains("UsedTime") {
                self.usedTime = dict["UsedTime"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: GetInspectProgressResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetInspectProgressResponseBody.Data()
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

public class GetInspectProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInspectProgressResponseBody?

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
            var model = GetInspectProgressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProductListRequest : Tea.TeaModel {
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
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class GetProductListResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public class Data : Tea.TeaModel {
        public class ProductList : Tea.TeaModel {
            public var newLabel: String?

            public var product: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.newLabel != nil {
                    map["NewLabel"] = self.newLabel!
                }
                if self.product != nil {
                    map["Product"] = self.product!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NewLabel") {
                    self.newLabel = dict["NewLabel"] as! String
                }
                if dict.keys.contains("Product") {
                    self.product = dict["Product"] as! String
                }
            }
        }
        public var category: String?

        public var productList: [GetProductListResponseBody.Data.ProductList]?

        public override init() {
            super.init()
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
            if self.productList != nil {
                var tmp : [Any] = []
                for k in self.productList! {
                    tmp.append(k.toMap())
                }
                map["ProductList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("ProductList") {
                var tmp : [GetProductListResponseBody.Data.ProductList] = []
                for v in dict["ProductList"] as! [Any] {
                    var model = GetProductListResponseBody.Data.ProductList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.productList = tmp
            }
        }
    }
    public var accessDeniedDetail: GetProductListResponseBody.AccessDeniedDetail?

    public var code: String?

    public var data: [GetProductListResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var userMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.userMessage != nil {
            map["UserMessage"] = self.userMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = GetProductListResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [GetProductListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetProductListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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
        if dict.keys.contains("UserMessage") {
            self.userMessage = dict["UserMessage"] as! String
        }
    }
}

public class GetProductListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProductListResponseBody?

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
            var model = GetProductListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskStatusByIdRequest : Tea.TeaModel {
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
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetTaskStatusByIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskId: Int64?

        public var taskStatus: Int32?

        public override init() {
            super.init()
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
                map["TaskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int64
            }
            if dict.keys.contains("TaskStatus") {
                self.taskStatus = dict["TaskStatus"] as! Int32
            }
        }
    }
    public var data: GetTaskStatusByIdResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = GetTaskStatusByIdResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetTaskStatusByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskStatusByIdResponseBody?

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
            var model = GetTaskStatusByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshAdvisorCheckRequest : Tea.TeaModel {
    public class ResourceDimensionList : Tea.TeaModel {
        public var cost: Bool?

        public var performance: Bool?

        public var product: String?

        public var productName: String?

        public var reliablility: Bool?

        public var security: Bool?

        public var service: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cost != nil {
                map["Cost"] = self.cost!
            }
            if self.performance != nil {
                map["Performance"] = self.performance!
            }
            if self.product != nil {
                map["Product"] = self.product!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.reliablility != nil {
                map["Reliablility"] = self.reliablility!
            }
            if self.security != nil {
                map["Security"] = self.security!
            }
            if self.service != nil {
                map["Service"] = self.service!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cost") {
                self.cost = dict["Cost"] as! Bool
            }
            if dict.keys.contains("Performance") {
                self.performance = dict["Performance"] as! Bool
            }
            if dict.keys.contains("Product") {
                self.product = dict["Product"] as! String
            }
            if dict.keys.contains("ProductName") {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("Reliablility") {
                self.reliablility = dict["Reliablility"] as! Bool
            }
            if dict.keys.contains("Security") {
                self.security = dict["Security"] as! Bool
            }
            if dict.keys.contains("Service") {
                self.service = dict["Service"] as! Bool
            }
        }
    }
    public var assumeAliyunId: Int64?

    public var checkId: String?

    public var checkPlanId: Int64?

    public var language: String?

    public var product: String?

    public var resourceDimensionList: [RefreshAdvisorCheckRequest.ResourceDimensionList]?

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
        if self.assumeAliyunId != nil {
            map["AssumeAliyunId"] = self.assumeAliyunId!
        }
        if self.checkId != nil {
            map["CheckId"] = self.checkId!
        }
        if self.checkPlanId != nil {
            map["CheckPlanId"] = self.checkPlanId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.resourceDimensionList != nil {
            var tmp : [Any] = []
            for k in self.resourceDimensionList! {
                tmp.append(k.toMap())
            }
            map["ResourceDimensionList"] = tmp
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
        if dict.keys.contains("AssumeAliyunId") {
            self.assumeAliyunId = dict["AssumeAliyunId"] as! Int64
        }
        if dict.keys.contains("CheckId") {
            self.checkId = dict["CheckId"] as! String
        }
        if dict.keys.contains("CheckPlanId") {
            self.checkPlanId = dict["CheckPlanId"] as! Int64
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("ResourceDimensionList") {
            var tmp : [RefreshAdvisorCheckRequest.ResourceDimensionList] = []
            for v in dict["ResourceDimensionList"] as! [Any] {
                var model = RefreshAdvisorCheckRequest.ResourceDimensionList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resourceDimensionList = tmp
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class RefreshAdvisorCheckShrinkRequest : Tea.TeaModel {
    public var assumeAliyunId: Int64?

    public var checkId: String?

    public var checkPlanId: Int64?

    public var language: String?

    public var product: String?

    public var resourceDimensionListShrink: String?

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
        if self.assumeAliyunId != nil {
            map["AssumeAliyunId"] = self.assumeAliyunId!
        }
        if self.checkId != nil {
            map["CheckId"] = self.checkId!
        }
        if self.checkPlanId != nil {
            map["CheckPlanId"] = self.checkPlanId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.resourceDimensionListShrink != nil {
            map["ResourceDimensionList"] = self.resourceDimensionListShrink!
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
        if dict.keys.contains("AssumeAliyunId") {
            self.assumeAliyunId = dict["AssumeAliyunId"] as! Int64
        }
        if dict.keys.contains("CheckId") {
            self.checkId = dict["CheckId"] as! String
        }
        if dict.keys.contains("CheckPlanId") {
            self.checkPlanId = dict["CheckPlanId"] as! Int64
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("ResourceDimensionList") {
            self.resourceDimensionListShrink = dict["ResourceDimensionList"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class RefreshAdvisorCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var message: String?

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
            if self.message != nil {
                map["Message"] = self.message!
            }
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
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int64
            }
            if dict.keys.contains("TraceId") {
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
        if dict.keys.contains("Data") {
            var model = RefreshAdvisorCheckResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
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
            var model = RefreshAdvisorCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshAdvisorCostCheckRequest : Tea.TeaModel {
    public var assumeAliyunIdList: [Int64]?

    public var checkIds: [String]?

    public var checkPlanId: Int64?

    public var product: String?

    public var refreshResource: Bool?

    public var resourceIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assumeAliyunIdList != nil {
            map["AssumeAliyunIdList"] = self.assumeAliyunIdList!
        }
        if self.checkIds != nil {
            map["CheckIds"] = self.checkIds!
        }
        if self.checkPlanId != nil {
            map["CheckPlanId"] = self.checkPlanId!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.refreshResource != nil {
            map["RefreshResource"] = self.refreshResource!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumeAliyunIdList") {
            self.assumeAliyunIdList = dict["AssumeAliyunIdList"] as! [Int64]
        }
        if dict.keys.contains("CheckIds") {
            self.checkIds = dict["CheckIds"] as! [String]
        }
        if dict.keys.contains("CheckPlanId") {
            self.checkPlanId = dict["CheckPlanId"] as! Int64
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RefreshResource") {
            self.refreshResource = dict["RefreshResource"] as! Bool
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIds = dict["ResourceIds"] as! [String]
        }
    }
}

public class RefreshAdvisorCostCheckShrinkRequest : Tea.TeaModel {
    public var assumeAliyunIdListShrink: String?

    public var checkIdsShrink: String?

    public var checkPlanId: Int64?

    public var product: String?

    public var refreshResource: Bool?

    public var resourceIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assumeAliyunIdListShrink != nil {
            map["AssumeAliyunIdList"] = self.assumeAliyunIdListShrink!
        }
        if self.checkIdsShrink != nil {
            map["CheckIds"] = self.checkIdsShrink!
        }
        if self.checkPlanId != nil {
            map["CheckPlanId"] = self.checkPlanId!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.refreshResource != nil {
            map["RefreshResource"] = self.refreshResource!
        }
        if self.resourceIdsShrink != nil {
            map["ResourceIds"] = self.resourceIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumeAliyunIdList") {
            self.assumeAliyunIdListShrink = dict["AssumeAliyunIdList"] as! String
        }
        if dict.keys.contains("CheckIds") {
            self.checkIdsShrink = dict["CheckIds"] as! String
        }
        if dict.keys.contains("CheckPlanId") {
            self.checkPlanId = dict["CheckPlanId"] as! Int64
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RefreshResource") {
            self.refreshResource = dict["RefreshResource"] as! Bool
        }
        if dict.keys.contains("ResourceIds") {
            self.resourceIdsShrink = dict["ResourceIds"] as! String
        }
    }
}

public class RefreshAdvisorCostCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var commandId: String?

        public var managerTaskId: Int64?

        public var success: Bool?

        public var taskId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commandId != nil {
                map["CommandId"] = self.commandId!
            }
            if self.managerTaskId != nil {
                map["ManagerTaskId"] = self.managerTaskId!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommandId") {
                self.commandId = dict["CommandId"] as! String
            }
            if dict.keys.contains("ManagerTaskId") {
                self.managerTaskId = dict["ManagerTaskId"] as! Int64
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: RefreshAdvisorCostCheckResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = RefreshAdvisorCostCheckResponseBody.Data()
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

public class RefreshAdvisorCostCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshAdvisorCostCheckResponseBody?

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
            var model = RefreshAdvisorCostCheckResponseBody()
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
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("ResourceId") {
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
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") {
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
            var model = RefreshAdvisorResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportBizAlertInfoRequest : Tea.TeaModel {
    public var alertDescription: String?

    public var alertDetail: String?

    public var alertGrade: String?

    public var alertLabels: String?

    public var alertScene: String?

    public var alertToken: String?

    public var alertUid: [Int64]?

    public var language: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertDescription != nil {
            map["AlertDescription"] = self.alertDescription!
        }
        if self.alertDetail != nil {
            map["AlertDetail"] = self.alertDetail!
        }
        if self.alertGrade != nil {
            map["AlertGrade"] = self.alertGrade!
        }
        if self.alertLabels != nil {
            map["AlertLabels"] = self.alertLabels!
        }
        if self.alertScene != nil {
            map["AlertScene"] = self.alertScene!
        }
        if self.alertToken != nil {
            map["AlertToken"] = self.alertToken!
        }
        if self.alertUid != nil {
            map["AlertUid"] = self.alertUid!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertDescription") {
            self.alertDescription = dict["AlertDescription"] as! String
        }
        if dict.keys.contains("AlertDetail") {
            self.alertDetail = dict["AlertDetail"] as! String
        }
        if dict.keys.contains("AlertGrade") {
            self.alertGrade = dict["AlertGrade"] as! String
        }
        if dict.keys.contains("AlertLabels") {
            self.alertLabels = dict["AlertLabels"] as! String
        }
        if dict.keys.contains("AlertScene") {
            self.alertScene = dict["AlertScene"] as! String
        }
        if dict.keys.contains("AlertToken") {
            self.alertToken = dict["AlertToken"] as! String
        }
        if dict.keys.contains("AlertUid") {
            self.alertUid = dict["AlertUid"] as! [Int64]
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
    }
}

public class ReportBizAlertInfoShrinkRequest : Tea.TeaModel {
    public var alertDescription: String?

    public var alertDetail: String?

    public var alertGrade: String?

    public var alertLabels: String?

    public var alertScene: String?

    public var alertToken: String?

    public var alertUidShrink: String?

    public var language: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alertDescription != nil {
            map["AlertDescription"] = self.alertDescription!
        }
        if self.alertDetail != nil {
            map["AlertDetail"] = self.alertDetail!
        }
        if self.alertGrade != nil {
            map["AlertGrade"] = self.alertGrade!
        }
        if self.alertLabels != nil {
            map["AlertLabels"] = self.alertLabels!
        }
        if self.alertScene != nil {
            map["AlertScene"] = self.alertScene!
        }
        if self.alertToken != nil {
            map["AlertToken"] = self.alertToken!
        }
        if self.alertUidShrink != nil {
            map["AlertUid"] = self.alertUidShrink!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlertDescription") {
            self.alertDescription = dict["AlertDescription"] as! String
        }
        if dict.keys.contains("AlertDetail") {
            self.alertDetail = dict["AlertDetail"] as! String
        }
        if dict.keys.contains("AlertGrade") {
            self.alertGrade = dict["AlertGrade"] as! String
        }
        if dict.keys.contains("AlertLabels") {
            self.alertLabels = dict["AlertLabels"] as! String
        }
        if dict.keys.contains("AlertScene") {
            self.alertScene = dict["AlertScene"] as! String
        }
        if dict.keys.contains("AlertToken") {
            self.alertToken = dict["AlertToken"] as! String
        }
        if dict.keys.contains("AlertUid") {
            self.alertUidShrink = dict["AlertUid"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
    }
}

public class ReportBizAlertInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var result: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! String
            }
        }
    }
    public var code: String?

    public var data: ReportBizAlertInfoResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ReportBizAlertInfoResponseBody.Data()
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

public class ReportBizAlertInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportBizAlertInfoResponseBody?

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
            var model = ReportBizAlertInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
