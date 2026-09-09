import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreatePentestTaskRequest : Tea.TeaModel {
    public class OperationInput : Tea.TeaModel {
        public var assetSource: String?

        public var description_: String?

        public var execMode: String?

        public var ipDomains: String?

        public var name: String?

        public var pentestRequirement: String?

        public var reportLanguage: String?

        public var scenario: String?

        public var scheduleTime: String?

        public var vulnCheckItems: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.assetSource != nil {
                map["AssetSource"] = self.assetSource!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.execMode != nil {
                map["ExecMode"] = self.execMode!
            }
            if self.ipDomains != nil {
                map["IpDomains"] = self.ipDomains!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.pentestRequirement != nil {
                map["PentestRequirement"] = self.pentestRequirement!
            }
            if self.reportLanguage != nil {
                map["ReportLanguage"] = self.reportLanguage!
            }
            if self.scenario != nil {
                map["Scenario"] = self.scenario!
            }
            if self.scheduleTime != nil {
                map["ScheduleTime"] = self.scheduleTime!
            }
            if self.vulnCheckItems != nil {
                map["VulnCheckItems"] = self.vulnCheckItems!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssetSource"] as? String {
                self.assetSource = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExecMode"] as? String {
                self.execMode = value
            }
            if let value = dict["IpDomains"] as? String {
                self.ipDomains = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PentestRequirement"] as? String {
                self.pentestRequirement = value
            }
            if let value = dict["ReportLanguage"] as? String {
                self.reportLanguage = value
            }
            if let value = dict["Scenario"] as? String {
                self.scenario = value
            }
            if let value = dict["ScheduleTime"] as? String {
                self.scheduleTime = value
            }
            if let value = dict["VulnCheckItems"] as? [String] {
                self.vulnCheckItems = value
            }
        }
    }
    public var operationInput: CreatePentestTaskRequest.OperationInput?

    public var operationType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operationInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationInput != nil {
            map["OperationInput"] = self.operationInput?.toMap()
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationInput"] as? [String: Any?] {
            var model = CreatePentestTaskRequest.OperationInput()
            model.fromMap(value)
            self.operationInput = model
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
    }
}

public class CreatePentestTaskShrinkRequest : Tea.TeaModel {
    public var operationInputShrink: String?

    public var operationType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationInputShrink != nil {
            map["OperationInput"] = self.operationInputShrink!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationInput"] as? String {
            self.operationInputShrink = value
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
    }
}

public class CreatePentestTaskResponseBody : Tea.TeaModel {
    public class TaskList : Tea.TeaModel {
        public var createdAt: Int64?

        public var name: String?

        public var progress: Int32?

        public var scanId: String?

        public var status: String?

        public var targetUrl: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.scanId != nil {
                map["ScanId"] = self.scanId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetUrl != nil {
                map["TargetUrl"] = self.targetUrl!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedAt"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["ScanId"] as? String {
                self.scanId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetUrl"] as? String {
                self.targetUrl = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var requestId: String?

    public var taskList: [CreatePentestTaskResponseBody.TaskList]?

    public override init() {
        super.init()
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
        if self.taskList != nil {
            var tmp : [Any] = []
            for k in self.taskList! {
                tmp.append(k.toMap())
            }
            map["TaskList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskList"] as? [Any?] {
            var tmp : [CreatePentestTaskResponseBody.TaskList] = []
            for v in value {
                if v != nil {
                    var model = CreatePentestTaskResponseBody.TaskList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskList = tmp
        }
    }
}

public class CreatePentestTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePentestTaskResponseBody?

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
            var model = CreatePentestTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePentestReportContentRequest : Tea.TeaModel {
    public class OperationInput : Tea.TeaModel {
        public var scanId: String?

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
            if self.scanId != nil {
                map["ScanId"] = self.scanId!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ScanId"] as? String {
                self.scanId = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var operationInput: DescribePentestReportContentRequest.OperationInput?

    public var operationType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operationInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationInput != nil {
            map["OperationInput"] = self.operationInput?.toMap()
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationInput"] as? [String: Any?] {
            var model = DescribePentestReportContentRequest.OperationInput()
            model.fromMap(value)
            self.operationInput = model
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
    }
}

public class DescribePentestReportContentShrinkRequest : Tea.TeaModel {
    public var operationInputShrink: String?

    public var operationType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationInputShrink != nil {
            map["OperationInput"] = self.operationInputShrink!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationInput"] as? String {
            self.operationInputShrink = value
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
    }
}

public class DescribePentestReportContentResponseBody : Tea.TeaModel {
    public class Report : Tea.TeaModel {
        public var downloadUrl: String?

        public var expiresAt: Int64?

        public override init() {
            super.init()
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
            if self.expiresAt != nil {
                map["ExpiresAt"] = self.expiresAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DownloadUrl"] as? String {
                self.downloadUrl = value
            }
            if let value = dict["ExpiresAt"] as? Int64 {
                self.expiresAt = value
            }
        }
    }
    public var report: DescribePentestReportContentResponseBody.Report?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.report?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.report != nil {
            map["Report"] = self.report?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Report"] as? [String: Any?] {
            var model = DescribePentestReportContentResponseBody.Report()
            model.fromMap(value)
            self.report = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribePentestReportContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePentestReportContentResponseBody?

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
            var model = DescribePentestReportContentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePentestTaskListRequest : Tea.TeaModel {
    public class OperationInput : Tea.TeaModel {
        public var currentPage: Int32?

        public var keyword: String?

        public var maxResults: Int32?

        public var nextToken: String?

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
            if self.keyword != nil {
                map["Keyword"] = self.keyword!
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
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["Keyword"] as? String {
                self.keyword = value
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
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var operationInput: DescribePentestTaskListRequest.OperationInput?

    public var operationType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operationInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationInput != nil {
            map["OperationInput"] = self.operationInput?.toMap()
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationInput"] as? [String: Any?] {
            var model = DescribePentestTaskListRequest.OperationInput()
            model.fromMap(value)
            self.operationInput = model
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
    }
}

public class DescribePentestTaskListShrinkRequest : Tea.TeaModel {
    public var operationInputShrink: String?

    public var operationType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationInputShrink != nil {
            map["OperationInput"] = self.operationInputShrink!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationInput"] as? String {
            self.operationInputShrink = value
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
    }
}

public class DescribePentestTaskListResponseBody : Tea.TeaModel {
    public class PageInfo : Tea.TeaModel {
        public var currentPage: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public class TaskList : Tea.TeaModel {
        public var createdAt: Int64?

        public var name: String?

        public var progress: Int32?

        public var scanId: String?

        public var status: String?

        public var targetUrl: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.scanId != nil {
                map["ScanId"] = self.scanId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetUrl != nil {
                map["TargetUrl"] = self.targetUrl!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedAt"] as? Int64 {
                self.createdAt = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["ScanId"] as? String {
                self.scanId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetUrl"] as? String {
                self.targetUrl = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var pageInfo: DescribePentestTaskListResponseBody.PageInfo?

    public var requestId: String?

    public var taskList: [DescribePentestTaskListResponseBody.TaskList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskList != nil {
            var tmp : [Any] = []
            for k in self.taskList! {
                tmp.append(k.toMap())
            }
            map["TaskList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = DescribePentestTaskListResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskList"] as? [Any?] {
            var tmp : [DescribePentestTaskListResponseBody.TaskList] = []
            for v in value {
                if v != nil {
                    var model = DescribePentestTaskListResponseBody.TaskList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskList = tmp
        }
    }
}

public class DescribePentestTaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePentestTaskListResponseBody?

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
            var model = DescribePentestTaskListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePentestVulnListRequest : Tea.TeaModel {
    public class OperationInput : Tea.TeaModel {
        public var currentPage: Int32?

        public var maxResults: Int32?

        public var nextToken: String?

        public var pageSize: Int32?

        public var severities: [String]?

        public var taskId: String?

        public var vulnType: String?

        public override init() {
            super.init()
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
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.severities != nil {
                map["Severities"] = self.severities!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.vulnType != nil {
                map["VulnType"] = self.vulnType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
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
            if let value = dict["Severities"] as? [String] {
                self.severities = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["VulnType"] as? String {
                self.vulnType = value
            }
        }
    }
    public var operationInput: DescribePentestVulnListRequest.OperationInput?

    public var operationType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operationInput?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationInput != nil {
            map["OperationInput"] = self.operationInput?.toMap()
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationInput"] as? [String: Any?] {
            var model = DescribePentestVulnListRequest.OperationInput()
            model.fromMap(value)
            self.operationInput = model
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
    }
}

public class DescribePentestVulnListShrinkRequest : Tea.TeaModel {
    public var operationInputShrink: String?

    public var operationType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.operationInputShrink != nil {
            map["OperationInput"] = self.operationInputShrink!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OperationInput"] as? String {
            self.operationInputShrink = value
        }
        if let value = dict["OperationType"] as? String {
            self.operationType = value
        }
    }
}

public class DescribePentestVulnListResponseBody : Tea.TeaModel {
    public class PageInfo : Tea.TeaModel {
        public var currentPage: Int32?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public class VulnList : Tea.TeaModel {
        public var affectedUrl: String?

        public var cvss: Double?

        public var discoveredAt: Int64?

        public var severity: String?

        public var status: String?

        public var taskId: String?

        public var title: String?

        public var verificationStatus: String?

        public var vulnId: String?

        public var vulnType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.affectedUrl != nil {
                map["AffectedUrl"] = self.affectedUrl!
            }
            if self.cvss != nil {
                map["Cvss"] = self.cvss!
            }
            if self.discoveredAt != nil {
                map["DiscoveredAt"] = self.discoveredAt!
            }
            if self.severity != nil {
                map["Severity"] = self.severity!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.verificationStatus != nil {
                map["VerificationStatus"] = self.verificationStatus!
            }
            if self.vulnId != nil {
                map["VulnId"] = self.vulnId!
            }
            if self.vulnType != nil {
                map["VulnType"] = self.vulnType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AffectedUrl"] as? String {
                self.affectedUrl = value
            }
            if let value = dict["Cvss"] as? Double {
                self.cvss = value
            }
            if let value = dict["DiscoveredAt"] as? Int64 {
                self.discoveredAt = value
            }
            if let value = dict["Severity"] as? String {
                self.severity = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
            if let value = dict["VerificationStatus"] as? String {
                self.verificationStatus = value
            }
            if let value = dict["VulnId"] as? String {
                self.vulnId = value
            }
            if let value = dict["VulnType"] as? String {
                self.vulnType = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var pageInfo: DescribePentestVulnListResponseBody.PageInfo?

    public var requestId: String?

    public var vulnList: [DescribePentestVulnListResponseBody.VulnList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.vulnList != nil {
            var tmp : [Any] = []
            for k in self.vulnList! {
                tmp.append(k.toMap())
            }
            map["VulnList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = DescribePentestVulnListResponseBody.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VulnList"] as? [Any?] {
            var tmp : [DescribePentestVulnListResponseBody.VulnList] = []
            for v in value {
                if v != nil {
                    var model = DescribePentestVulnListResponseBody.VulnList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.vulnList = tmp
        }
    }
}

public class DescribePentestVulnListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePentestVulnListResponseBody?

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
            var model = DescribePentestVulnListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
