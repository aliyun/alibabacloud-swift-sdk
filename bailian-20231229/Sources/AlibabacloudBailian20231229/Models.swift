import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddCategoryRequest : Tea.TeaModel {
    public var categoryName: String?

    public var categoryType: String?

    public var parentCategoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryName != nil {
            map["CategoryName"] = self.categoryName!
        }
        if self.categoryType != nil {
            map["CategoryType"] = self.categoryType!
        }
        if self.parentCategoryId != nil {
            map["ParentCategoryId"] = self.parentCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryName") {
            self.categoryName = dict["CategoryName"] as! String
        }
        if dict.keys.contains("CategoryType") {
            self.categoryType = dict["CategoryType"] as! String
        }
        if dict.keys.contains("ParentCategoryId") {
            self.parentCategoryId = dict["ParentCategoryId"] as! String
        }
    }
}

public class AddCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categoryId: String?

        public var categoryName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! String
            }
            if dict.keys.contains("CategoryName") {
                self.categoryName = dict["CategoryName"] as! String
            }
        }
    }
    public var code: String?

    public var data: AddCategoryResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = AddCategoryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCategoryResponseBody?

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
            var model = AddCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddFileRequest : Tea.TeaModel {
    public var categoryId: String?

    public var leaseId: String?

    public var parser: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.leaseId != nil {
            map["LeaseId"] = self.leaseId!
        }
        if self.parser != nil {
            map["Parser"] = self.parser!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! String
        }
        if dict.keys.contains("LeaseId") {
            self.leaseId = dict["LeaseId"] as! String
        }
        if dict.keys.contains("Parser") {
            self.parser = dict["Parser"] as! String
        }
    }
}

public class AddFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileId: String?

        public var parser: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.parser != nil {
                map["Parser"] = self.parser!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileId") {
                self.fileId = dict["FileId"] as! String
            }
            if dict.keys.contains("Parser") {
                self.parser = dict["Parser"] as! String
            }
        }
    }
    public var code: String?

    public var data: AddFileResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = AddFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class AddFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFileResponseBody?

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
            var model = AddFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyFileUploadLeaseRequest : Tea.TeaModel {
    public var fileName: String?

    public var md5: String?

    public var sizeInBytes: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.md5 != nil {
            map["Md5"] = self.md5!
        }
        if self.sizeInBytes != nil {
            map["SizeInBytes"] = self.sizeInBytes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
        }
        if dict.keys.contains("Md5") {
            self.md5 = dict["Md5"] as! String
        }
        if dict.keys.contains("SizeInBytes") {
            self.sizeInBytes = dict["SizeInBytes"] as! String
        }
    }
}

public class ApplyFileUploadLeaseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Param : Tea.TeaModel {
            public var headers: Any?

            public var method: String?

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
                if self.headers != nil {
                    map["Headers"] = self.headers!
                }
                if self.method != nil {
                    map["Method"] = self.method!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Headers") {
                    self.headers = dict["Headers"] as! Any
                }
                if dict.keys.contains("Method") {
                    self.method = dict["Method"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var fileUploadLeaseId: String?

        public var param: ApplyFileUploadLeaseResponseBody.Data.Param?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.param?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileUploadLeaseId != nil {
                map["FileUploadLeaseId"] = self.fileUploadLeaseId!
            }
            if self.param != nil {
                map["Param"] = self.param?.toMap()
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileUploadLeaseId") {
                self.fileUploadLeaseId = dict["FileUploadLeaseId"] as! String
            }
            if dict.keys.contains("Param") {
                var model = ApplyFileUploadLeaseResponseBody.Data.Param()
                model.fromMap(dict["Param"] as! [String: Any])
                self.param = model
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: ApplyFileUploadLeaseResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = ApplyFileUploadLeaseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ApplyFileUploadLeaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyFileUploadLeaseResponseBody?

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
            var model = ApplyFileUploadLeaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAndPulishAgentRequest : Tea.TeaModel {
    public class ApplicationConfig : Tea.TeaModel {
        public class HistoryConfig : Tea.TeaModel {
            public var enableAdbRecord: Bool?

            public var enableRecord: Bool?

            public var instanceId: String?

            public var region: String?

            public var storeCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableAdbRecord != nil {
                    map["enableAdbRecord"] = self.enableAdbRecord!
                }
                if self.enableRecord != nil {
                    map["enableRecord"] = self.enableRecord!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.storeCode != nil {
                    map["storeCode"] = self.storeCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enableAdbRecord") {
                    self.enableAdbRecord = dict["enableAdbRecord"] as! Bool
                }
                if dict.keys.contains("enableRecord") {
                    self.enableRecord = dict["enableRecord"] as! Bool
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("region") {
                    self.region = dict["region"] as! String
                }
                if dict.keys.contains("storeCode") {
                    self.storeCode = dict["storeCode"] as! String
                }
            }
        }
        public class LongTermMemory : Tea.TeaModel {
            public var enable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var dialogRound: Int32?

            public var maxTokens: Int32?

            public var temperature: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dialogRound != nil {
                    map["dialogRound"] = self.dialogRound!
                }
                if self.maxTokens != nil {
                    map["maxTokens"] = self.maxTokens!
                }
                if self.temperature != nil {
                    map["temperature"] = self.temperature!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("dialogRound") {
                    self.dialogRound = dict["dialogRound"] as! Int32
                }
                if dict.keys.contains("maxTokens") {
                    self.maxTokens = dict["maxTokens"] as! Int32
                }
                if dict.keys.contains("temperature") {
                    self.temperature = dict["temperature"] as! Double
                }
            }
        }
        public class RagConfig : Tea.TeaModel {
            public var enableCitation: Bool?

            public var enableSearch: Bool?

            public var knowledgeBaseCodeList: [String]?

            public var topK: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableCitation != nil {
                    map["enableCitation"] = self.enableCitation!
                }
                if self.enableSearch != nil {
                    map["enableSearch"] = self.enableSearch!
                }
                if self.knowledgeBaseCodeList != nil {
                    map["knowledgeBaseCodeList"] = self.knowledgeBaseCodeList!
                }
                if self.topK != nil {
                    map["topK"] = self.topK!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enableCitation") {
                    self.enableCitation = dict["enableCitation"] as! Bool
                }
                if dict.keys.contains("enableSearch") {
                    self.enableSearch = dict["enableSearch"] as! Bool
                }
                if dict.keys.contains("knowledgeBaseCodeList") {
                    self.knowledgeBaseCodeList = dict["knowledgeBaseCodeList"] as! [String]
                }
                if dict.keys.contains("topK") {
                    self.topK = dict["topK"] as! Int32
                }
            }
        }
        public class SecurityConfig : Tea.TeaModel {
            public var processingStrategy: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.processingStrategy != nil {
                    map["processingStrategy"] = self.processingStrategy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("processingStrategy") {
                    self.processingStrategy = dict["processingStrategy"] as! String
                }
            }
        }
        public class Tools : Tea.TeaModel {
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
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class WorkFlows : Tea.TeaModel {
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
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var historyConfig: CreateAndPulishAgentRequest.ApplicationConfig.HistoryConfig?

        public var longTermMemory: CreateAndPulishAgentRequest.ApplicationConfig.LongTermMemory?

        public var parameters: CreateAndPulishAgentRequest.ApplicationConfig.Parameters?

        public var ragConfig: CreateAndPulishAgentRequest.ApplicationConfig.RagConfig?

        public var securityConfig: CreateAndPulishAgentRequest.ApplicationConfig.SecurityConfig?

        public var tools: [CreateAndPulishAgentRequest.ApplicationConfig.Tools]?

        public var workFlows: [CreateAndPulishAgentRequest.ApplicationConfig.WorkFlows]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.historyConfig?.validate()
            try self.longTermMemory?.validate()
            try self.parameters?.validate()
            try self.ragConfig?.validate()
            try self.securityConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.historyConfig != nil {
                map["historyConfig"] = self.historyConfig?.toMap()
            }
            if self.longTermMemory != nil {
                map["longTermMemory"] = self.longTermMemory?.toMap()
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters?.toMap()
            }
            if self.ragConfig != nil {
                map["ragConfig"] = self.ragConfig?.toMap()
            }
            if self.securityConfig != nil {
                map["securityConfig"] = self.securityConfig?.toMap()
            }
            if self.tools != nil {
                var tmp : [Any] = []
                for k in self.tools! {
                    tmp.append(k.toMap())
                }
                map["tools"] = tmp
            }
            if self.workFlows != nil {
                var tmp : [Any] = []
                for k in self.workFlows! {
                    tmp.append(k.toMap())
                }
                map["workFlows"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("historyConfig") {
                var model = CreateAndPulishAgentRequest.ApplicationConfig.HistoryConfig()
                model.fromMap(dict["historyConfig"] as! [String: Any])
                self.historyConfig = model
            }
            if dict.keys.contains("longTermMemory") {
                var model = CreateAndPulishAgentRequest.ApplicationConfig.LongTermMemory()
                model.fromMap(dict["longTermMemory"] as! [String: Any])
                self.longTermMemory = model
            }
            if dict.keys.contains("parameters") {
                var model = CreateAndPulishAgentRequest.ApplicationConfig.Parameters()
                model.fromMap(dict["parameters"] as! [String: Any])
                self.parameters = model
            }
            if dict.keys.contains("ragConfig") {
                var model = CreateAndPulishAgentRequest.ApplicationConfig.RagConfig()
                model.fromMap(dict["ragConfig"] as! [String: Any])
                self.ragConfig = model
            }
            if dict.keys.contains("securityConfig") {
                var model = CreateAndPulishAgentRequest.ApplicationConfig.SecurityConfig()
                model.fromMap(dict["securityConfig"] as! [String: Any])
                self.securityConfig = model
            }
            if dict.keys.contains("tools") {
                var tmp : [CreateAndPulishAgentRequest.ApplicationConfig.Tools] = []
                for v in dict["tools"] as! [Any] {
                    var model = CreateAndPulishAgentRequest.ApplicationConfig.Tools()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tools = tmp
            }
            if dict.keys.contains("workFlows") {
                var tmp : [CreateAndPulishAgentRequest.ApplicationConfig.WorkFlows] = []
                for v in dict["workFlows"] as! [Any] {
                    var model = CreateAndPulishAgentRequest.ApplicationConfig.WorkFlows()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.workFlows = tmp
            }
        }
    }
    public var applicationConfig: CreateAndPulishAgentRequest.ApplicationConfig?

    public var instructions: String?

    public var modelId: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationConfig != nil {
            map["applicationConfig"] = self.applicationConfig?.toMap()
        }
        if self.instructions != nil {
            map["instructions"] = self.instructions!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applicationConfig") {
            var model = CreateAndPulishAgentRequest.ApplicationConfig()
            model.fromMap(dict["applicationConfig"] as! [String: Any])
            self.applicationConfig = model
        }
        if dict.keys.contains("instructions") {
            self.instructions = dict["instructions"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class CreateAndPulishAgentShrinkRequest : Tea.TeaModel {
    public var applicationConfigShrink: String?

    public var instructions: String?

    public var modelId: String?

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
        if self.applicationConfigShrink != nil {
            map["applicationConfig"] = self.applicationConfigShrink!
        }
        if self.instructions != nil {
            map["instructions"] = self.instructions!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applicationConfig") {
            self.applicationConfigShrink = dict["applicationConfig"] as! String
        }
        if dict.keys.contains("instructions") {
            self.instructions = dict["instructions"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class CreateAndPulishAgentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CreateAndPulishAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAndPulishAgentResponseBody?

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
            var model = CreateAndPulishAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateIndexRequest : Tea.TeaModel {
    public class Columns : Tea.TeaModel {
        public var column: String?

        public var isRecall: Bool?

        public var isSearch: Bool?

        public var name: String?

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
            if self.column != nil {
                map["Column"] = self.column!
            }
            if self.isRecall != nil {
                map["IsRecall"] = self.isRecall!
            }
            if self.isSearch != nil {
                map["IsSearch"] = self.isSearch!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Column") {
                self.column = dict["Column"] as! String
            }
            if dict.keys.contains("IsRecall") {
                self.isRecall = dict["IsRecall"] as! Bool
            }
            if dict.keys.contains("IsSearch") {
                self.isSearch = dict["IsSearch"] as! Bool
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class DataSource : Tea.TeaModel {
        public var credentialId: String?

        public var credentialKey: String?

        public var database: String?

        public var endpoint: String?

        public var isPrivateLink: Bool?

        public var region: String?

        public var subPath: String?

        public var subType: String?

        public var table: String?

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
            if self.credentialId != nil {
                map["CredentialId"] = self.credentialId!
            }
            if self.credentialKey != nil {
                map["CredentialKey"] = self.credentialKey!
            }
            if self.database != nil {
                map["Database"] = self.database!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.isPrivateLink != nil {
                map["IsPrivateLink"] = self.isPrivateLink!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.subPath != nil {
                map["SubPath"] = self.subPath!
            }
            if self.subType != nil {
                map["SubType"] = self.subType!
            }
            if self.table != nil {
                map["Table"] = self.table!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CredentialId") {
                self.credentialId = dict["CredentialId"] as! String
            }
            if dict.keys.contains("CredentialKey") {
                self.credentialKey = dict["CredentialKey"] as! String
            }
            if dict.keys.contains("Database") {
                self.database = dict["Database"] as! String
            }
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("IsPrivateLink") {
                self.isPrivateLink = dict["IsPrivateLink"] as! Bool
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("SubPath") {
                self.subPath = dict["SubPath"] as! String
            }
            if dict.keys.contains("SubType") {
                self.subType = dict["SubType"] as! String
            }
            if dict.keys.contains("Table") {
                self.table = dict["Table"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var categoryIds: [String]?

    public var chunkSize: Int32?

    public var columns: [CreateIndexRequest.Columns]?

    public var dataSource: CreateIndexRequest.DataSource?

    public var description_: String?

    public var documentIds: [String]?

    public var embeddingModelName: String?

    public var name: String?

    public var overlapSize: Int32?

    public var rerankMinScore: Double?

    public var rerankModelName: String?

    public var separator: String?

    public var sinkInstanceId: String?

    public var sinkRegion: String?

    public var sinkType: String?

    public var sourceType: String?

    public var structureType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataSource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryIds != nil {
            map["CategoryIds"] = self.categoryIds!
        }
        if self.chunkSize != nil {
            map["ChunkSize"] = self.chunkSize!
        }
        if self.columns != nil {
            var tmp : [Any] = []
            for k in self.columns! {
                tmp.append(k.toMap())
            }
            map["Columns"] = tmp
        }
        if self.dataSource != nil {
            map["DataSource"] = self.dataSource?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.documentIds != nil {
            map["DocumentIds"] = self.documentIds!
        }
        if self.embeddingModelName != nil {
            map["EmbeddingModelName"] = self.embeddingModelName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.overlapSize != nil {
            map["OverlapSize"] = self.overlapSize!
        }
        if self.rerankMinScore != nil {
            map["RerankMinScore"] = self.rerankMinScore!
        }
        if self.rerankModelName != nil {
            map["RerankModelName"] = self.rerankModelName!
        }
        if self.separator != nil {
            map["Separator"] = self.separator!
        }
        if self.sinkInstanceId != nil {
            map["SinkInstanceId"] = self.sinkInstanceId!
        }
        if self.sinkRegion != nil {
            map["SinkRegion"] = self.sinkRegion!
        }
        if self.sinkType != nil {
            map["SinkType"] = self.sinkType!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.structureType != nil {
            map["StructureType"] = self.structureType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryIds") {
            self.categoryIds = dict["CategoryIds"] as! [String]
        }
        if dict.keys.contains("ChunkSize") {
            self.chunkSize = dict["ChunkSize"] as! Int32
        }
        if dict.keys.contains("Columns") {
            var tmp : [CreateIndexRequest.Columns] = []
            for v in dict["Columns"] as! [Any] {
                var model = CreateIndexRequest.Columns()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.columns = tmp
        }
        if dict.keys.contains("DataSource") {
            var model = CreateIndexRequest.DataSource()
            model.fromMap(dict["DataSource"] as! [String: Any])
            self.dataSource = model
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DocumentIds") {
            self.documentIds = dict["DocumentIds"] as! [String]
        }
        if dict.keys.contains("EmbeddingModelName") {
            self.embeddingModelName = dict["EmbeddingModelName"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OverlapSize") {
            self.overlapSize = dict["OverlapSize"] as! Int32
        }
        if dict.keys.contains("RerankMinScore") {
            self.rerankMinScore = dict["RerankMinScore"] as! Double
        }
        if dict.keys.contains("RerankModelName") {
            self.rerankModelName = dict["RerankModelName"] as! String
        }
        if dict.keys.contains("Separator") {
            self.separator = dict["Separator"] as! String
        }
        if dict.keys.contains("SinkInstanceId") {
            self.sinkInstanceId = dict["SinkInstanceId"] as! String
        }
        if dict.keys.contains("SinkRegion") {
            self.sinkRegion = dict["SinkRegion"] as! String
        }
        if dict.keys.contains("SinkType") {
            self.sinkType = dict["SinkType"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StructureType") {
            self.structureType = dict["StructureType"] as! String
        }
    }
}

public class CreateIndexShrinkRequest : Tea.TeaModel {
    public var categoryIdsShrink: String?

    public var chunkSize: Int32?

    public var columnsShrink: String?

    public var dataSourceShrink: String?

    public var description_: String?

    public var documentIdsShrink: String?

    public var embeddingModelName: String?

    public var name: String?

    public var overlapSize: Int32?

    public var rerankMinScore: Double?

    public var rerankModelName: String?

    public var separator: String?

    public var sinkInstanceId: String?

    public var sinkRegion: String?

    public var sinkType: String?

    public var sourceType: String?

    public var structureType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryIdsShrink != nil {
            map["CategoryIds"] = self.categoryIdsShrink!
        }
        if self.chunkSize != nil {
            map["ChunkSize"] = self.chunkSize!
        }
        if self.columnsShrink != nil {
            map["Columns"] = self.columnsShrink!
        }
        if self.dataSourceShrink != nil {
            map["DataSource"] = self.dataSourceShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.documentIdsShrink != nil {
            map["DocumentIds"] = self.documentIdsShrink!
        }
        if self.embeddingModelName != nil {
            map["EmbeddingModelName"] = self.embeddingModelName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.overlapSize != nil {
            map["OverlapSize"] = self.overlapSize!
        }
        if self.rerankMinScore != nil {
            map["RerankMinScore"] = self.rerankMinScore!
        }
        if self.rerankModelName != nil {
            map["RerankModelName"] = self.rerankModelName!
        }
        if self.separator != nil {
            map["Separator"] = self.separator!
        }
        if self.sinkInstanceId != nil {
            map["SinkInstanceId"] = self.sinkInstanceId!
        }
        if self.sinkRegion != nil {
            map["SinkRegion"] = self.sinkRegion!
        }
        if self.sinkType != nil {
            map["SinkType"] = self.sinkType!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.structureType != nil {
            map["StructureType"] = self.structureType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryIds") {
            self.categoryIdsShrink = dict["CategoryIds"] as! String
        }
        if dict.keys.contains("ChunkSize") {
            self.chunkSize = dict["ChunkSize"] as! Int32
        }
        if dict.keys.contains("Columns") {
            self.columnsShrink = dict["Columns"] as! String
        }
        if dict.keys.contains("DataSource") {
            self.dataSourceShrink = dict["DataSource"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DocumentIds") {
            self.documentIdsShrink = dict["DocumentIds"] as! String
        }
        if dict.keys.contains("EmbeddingModelName") {
            self.embeddingModelName = dict["EmbeddingModelName"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OverlapSize") {
            self.overlapSize = dict["OverlapSize"] as! Int32
        }
        if dict.keys.contains("RerankMinScore") {
            self.rerankMinScore = dict["RerankMinScore"] as! Double
        }
        if dict.keys.contains("RerankModelName") {
            self.rerankModelName = dict["RerankModelName"] as! String
        }
        if dict.keys.contains("Separator") {
            self.separator = dict["Separator"] as! String
        }
        if dict.keys.contains("SinkInstanceId") {
            self.sinkInstanceId = dict["SinkInstanceId"] as! String
        }
        if dict.keys.contains("SinkRegion") {
            self.sinkRegion = dict["SinkRegion"] as! String
        }
        if dict.keys.contains("SinkType") {
            self.sinkType = dict["SinkType"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("StructureType") {
            self.structureType = dict["StructureType"] as! String
        }
    }
}

public class CreateIndexResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateIndexResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = CreateIndexResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIndexResponseBody?

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
            var model = CreateIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMemoryRequest : Tea.TeaModel {
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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
    }
}

public class CreateMemoryResponseBody : Tea.TeaModel {
    public var memoryId: String?

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
        if self.memoryId != nil {
            map["memoryId"] = self.memoryId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("memoryId") {
            self.memoryId = dict["memoryId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMemoryResponseBody?

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
            var model = CreateMemoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMemoryNodeRequest : Tea.TeaModel {
    public var content: String?

    public override init() {
        super.init()
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
            map["content"] = self.content!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
    }
}

public class CreateMemoryNodeResponseBody : Tea.TeaModel {
    public var memoryNodeId: String?

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
        if self.memoryNodeId != nil {
            map["memoryNodeId"] = self.memoryNodeId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("memoryNodeId") {
            self.memoryNodeId = dict["memoryNodeId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateMemoryNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMemoryNodeResponseBody?

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
            var model = CreateMemoryNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAgentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAgentResponseBody?

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
            var model = DeleteAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categoryId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! String
            }
        }
    }
    public var code: String?

    public var data: DeleteCategoryResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = DeleteCategoryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCategoryResponseBody?

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
            var model = DeleteCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileId") {
                self.fileId = dict["FileId"] as! String
            }
        }
    }
    public var code: String?

    public var data: DeleteFileResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = DeleteFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFileResponseBody?

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
            var model = DeleteFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIndexRequest : Tea.TeaModel {
    public var indexId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IndexId") {
            self.indexId = dict["IndexId"] as! String
        }
    }
}

public class DeleteIndexResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIndexResponseBody?

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
            var model = DeleteIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIndexDocumentRequest : Tea.TeaModel {
    public var documentIds: [String]?

    public var indexId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.documentIds != nil {
            map["DocumentIds"] = self.documentIds!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DocumentIds") {
            self.documentIds = dict["DocumentIds"] as! [String]
        }
        if dict.keys.contains("IndexId") {
            self.indexId = dict["IndexId"] as! String
        }
    }
}

public class DeleteIndexDocumentShrinkRequest : Tea.TeaModel {
    public var documentIdsShrink: String?

    public var indexId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.documentIdsShrink != nil {
            map["DocumentIds"] = self.documentIdsShrink!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DocumentIds") {
            self.documentIdsShrink = dict["DocumentIds"] as! String
        }
        if dict.keys.contains("IndexId") {
            self.indexId = dict["IndexId"] as! String
        }
    }
}

public class DeleteIndexDocumentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deletedDocument: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deletedDocument != nil {
                map["DeletedDocument"] = self.deletedDocument!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeletedDocument") {
                self.deletedDocument = dict["DeletedDocument"] as! [String]
            }
        }
    }
    public var code: String?

    public var data: DeleteIndexDocumentResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = DeleteIndexDocumentResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteIndexDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIndexDocumentResponseBody?

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
            var model = DeleteIndexDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMemoryResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMemoryResponseBody?

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
            var model = DeleteMemoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMemoryNodeResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteMemoryNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMemoryNodeResponseBody?

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
            var model = DeleteMemoryNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categoryId: String?

        public var createTime: String?

        public var fileId: String?

        public var fileName: String?

        public var fileType: String?

        public var parser: String?

        public var sizeInBytes: Int64?

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
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.fileId != nil {
                map["FileId"] = self.fileId!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileType != nil {
                map["FileType"] = self.fileType!
            }
            if self.parser != nil {
                map["Parser"] = self.parser!
            }
            if self.sizeInBytes != nil {
                map["SizeInBytes"] = self.sizeInBytes!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("FileId") {
                self.fileId = dict["FileId"] as! String
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("FileType") {
                self.fileType = dict["FileType"] as! String
            }
            if dict.keys.contains("Parser") {
                self.parser = dict["Parser"] as! String
            }
            if dict.keys.contains("SizeInBytes") {
                self.sizeInBytes = dict["SizeInBytes"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeFileResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = DescribeFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFileResponseBody?

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
            var model = DescribeFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIndexJobStatusRequest : Tea.TeaModel {
    public var indexId: String?

    public var jobId: String?

    public var pageNumber: Int32?

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
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IndexId") {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class GetIndexJobStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Documents : Tea.TeaModel {
            public var code: String?

            public var docId: String?

            public var docName: String?

            public var message: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.docId != nil {
                    map["DocId"] = self.docId!
                }
                if self.docName != nil {
                    map["DocName"] = self.docName!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("DocId") {
                    self.docId = dict["DocId"] as! String
                }
                if dict.keys.contains("DocName") {
                    self.docName = dict["DocName"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var documents: [GetIndexJobStatusResponseBody.Data.Documents]?

        public var jobId: String?

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
            if self.documents != nil {
                var tmp : [Any] = []
                for k in self.documents! {
                    tmp.append(k.toMap())
                }
                map["Documents"] = tmp
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Documents") {
                var tmp : [GetIndexJobStatusResponseBody.Data.Documents] = []
                for v in dict["Documents"] as! [Any] {
                    var model = GetIndexJobStatusResponseBody.Data.Documents()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.documents = tmp
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetIndexJobStatusResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = GetIndexJobStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetIndexJobStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIndexJobStatusResponseBody?

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
            var model = GetIndexJobStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMemoryResponseBody : Tea.TeaModel {
    public var description_: String?

    public var memoryId: String?

    public var requestId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.memoryId != nil {
            map["memoryId"] = self.memoryId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("memoryId") {
            self.memoryId = dict["memoryId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("workspaceId") {
            self.workspaceId = dict["workspaceId"] as! String
        }
    }
}

public class GetMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMemoryResponseBody?

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
            var model = GetMemoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMemoryNodeResponseBody : Tea.TeaModel {
    public var content: String?

    public var memoryId: String?

    public var memoryNodeId: String?

    public var requestId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
            map["content"] = self.content!
        }
        if self.memoryId != nil {
            map["memoryId"] = self.memoryId!
        }
        if self.memoryNodeId != nil {
            map["memoryNodeId"] = self.memoryNodeId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
        if dict.keys.contains("memoryId") {
            self.memoryId = dict["memoryId"] as! String
        }
        if dict.keys.contains("memoryNodeId") {
            self.memoryNodeId = dict["memoryNodeId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("workspaceId") {
            self.workspaceId = dict["workspaceId"] as! String
        }
    }
}

public class GetMemoryNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMemoryNodeResponseBody?

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
            var model = GetMemoryNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPublishedAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ApplicationConfig : Tea.TeaModel {
            public class HistoryConfig : Tea.TeaModel {
                public var enableAdbRecord: Bool?

                public var enableRecord: Bool?

                public var instanceId: String?

                public var region: String?

                public var storeCode: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enableAdbRecord != nil {
                        map["enableAdbRecord"] = self.enableAdbRecord!
                    }
                    if self.enableRecord != nil {
                        map["enableRecord"] = self.enableRecord!
                    }
                    if self.instanceId != nil {
                        map["instanceId"] = self.instanceId!
                    }
                    if self.region != nil {
                        map["region"] = self.region!
                    }
                    if self.storeCode != nil {
                        map["storeCode"] = self.storeCode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("enableAdbRecord") {
                        self.enableAdbRecord = dict["enableAdbRecord"] as! Bool
                    }
                    if dict.keys.contains("enableRecord") {
                        self.enableRecord = dict["enableRecord"] as! Bool
                    }
                    if dict.keys.contains("instanceId") {
                        self.instanceId = dict["instanceId"] as! String
                    }
                    if dict.keys.contains("region") {
                        self.region = dict["region"] as! String
                    }
                    if dict.keys.contains("storeCode") {
                        self.storeCode = dict["storeCode"] as! String
                    }
                }
            }
            public class LongTermMemory : Tea.TeaModel {
                public var enable: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enable != nil {
                        map["enable"] = self.enable!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("enable") {
                        self.enable = dict["enable"] as! Bool
                    }
                }
            }
            public class Parameters : Tea.TeaModel {
                public var dialogRound: Int32?

                public var maxTokens: Int32?

                public var temperature: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dialogRound != nil {
                        map["dialogRound"] = self.dialogRound!
                    }
                    if self.maxTokens != nil {
                        map["maxTokens"] = self.maxTokens!
                    }
                    if self.temperature != nil {
                        map["temperature"] = self.temperature!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("dialogRound") {
                        self.dialogRound = dict["dialogRound"] as! Int32
                    }
                    if dict.keys.contains("maxTokens") {
                        self.maxTokens = dict["maxTokens"] as! Int32
                    }
                    if dict.keys.contains("temperature") {
                        self.temperature = dict["temperature"] as! Double
                    }
                }
            }
            public class RagConfig : Tea.TeaModel {
                public var enableCitation: Bool?

                public var enableSearch: Bool?

                public var knowledgeBaseCodeList: [String]?

                public var topK: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enableCitation != nil {
                        map["enableCitation"] = self.enableCitation!
                    }
                    if self.enableSearch != nil {
                        map["enableSearch"] = self.enableSearch!
                    }
                    if self.knowledgeBaseCodeList != nil {
                        map["knowledgeBaseCodeList"] = self.knowledgeBaseCodeList!
                    }
                    if self.topK != nil {
                        map["topK"] = self.topK!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("enableCitation") {
                        self.enableCitation = dict["enableCitation"] as! Bool
                    }
                    if dict.keys.contains("enableSearch") {
                        self.enableSearch = dict["enableSearch"] as! Bool
                    }
                    if dict.keys.contains("knowledgeBaseCodeList") {
                        self.knowledgeBaseCodeList = dict["knowledgeBaseCodeList"] as! [String]
                    }
                    if dict.keys.contains("topK") {
                        self.topK = dict["topK"] as! Int32
                    }
                }
            }
            public class Security : Tea.TeaModel {
                public var processingStrategy: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.processingStrategy != nil {
                        map["processingStrategy"] = self.processingStrategy!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("processingStrategy") {
                        self.processingStrategy = dict["processingStrategy"] as! String
                    }
                }
            }
            public class Tools : Tea.TeaModel {
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
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public class WorkFlows : Tea.TeaModel {
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
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public var historyConfig: GetPublishedAgentResponseBody.Data.ApplicationConfig.HistoryConfig?

            public var longTermMemory: GetPublishedAgentResponseBody.Data.ApplicationConfig.LongTermMemory?

            public var parameters: GetPublishedAgentResponseBody.Data.ApplicationConfig.Parameters?

            public var ragConfig: GetPublishedAgentResponseBody.Data.ApplicationConfig.RagConfig?

            public var security: GetPublishedAgentResponseBody.Data.ApplicationConfig.Security?

            public var tools: [GetPublishedAgentResponseBody.Data.ApplicationConfig.Tools]?

            public var workFlows: [GetPublishedAgentResponseBody.Data.ApplicationConfig.WorkFlows]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.historyConfig?.validate()
                try self.longTermMemory?.validate()
                try self.parameters?.validate()
                try self.ragConfig?.validate()
                try self.security?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.historyConfig != nil {
                    map["historyConfig"] = self.historyConfig?.toMap()
                }
                if self.longTermMemory != nil {
                    map["longTermMemory"] = self.longTermMemory?.toMap()
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters?.toMap()
                }
                if self.ragConfig != nil {
                    map["ragConfig"] = self.ragConfig?.toMap()
                }
                if self.security != nil {
                    map["security"] = self.security?.toMap()
                }
                if self.tools != nil {
                    var tmp : [Any] = []
                    for k in self.tools! {
                        tmp.append(k.toMap())
                    }
                    map["tools"] = tmp
                }
                if self.workFlows != nil {
                    var tmp : [Any] = []
                    for k in self.workFlows! {
                        tmp.append(k.toMap())
                    }
                    map["workFlows"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("historyConfig") {
                    var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.HistoryConfig()
                    model.fromMap(dict["historyConfig"] as! [String: Any])
                    self.historyConfig = model
                }
                if dict.keys.contains("longTermMemory") {
                    var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.LongTermMemory()
                    model.fromMap(dict["longTermMemory"] as! [String: Any])
                    self.longTermMemory = model
                }
                if dict.keys.contains("parameters") {
                    var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.Parameters()
                    model.fromMap(dict["parameters"] as! [String: Any])
                    self.parameters = model
                }
                if dict.keys.contains("ragConfig") {
                    var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.RagConfig()
                    model.fromMap(dict["ragConfig"] as! [String: Any])
                    self.ragConfig = model
                }
                if dict.keys.contains("security") {
                    var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.Security()
                    model.fromMap(dict["security"] as! [String: Any])
                    self.security = model
                }
                if dict.keys.contains("tools") {
                    var tmp : [GetPublishedAgentResponseBody.Data.ApplicationConfig.Tools] = []
                    for v in dict["tools"] as! [Any] {
                        var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.Tools()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tools = tmp
                }
                if dict.keys.contains("workFlows") {
                    var tmp : [GetPublishedAgentResponseBody.Data.ApplicationConfig.WorkFlows] = []
                    for v in dict["workFlows"] as! [Any] {
                        var model = GetPublishedAgentResponseBody.Data.ApplicationConfig.WorkFlows()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.workFlows = tmp
                }
            }
        }
        public var applicationConfig: GetPublishedAgentResponseBody.Data.ApplicationConfig?

        public var code: String?

        public var instructions: String?

        public var modelId: String?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.applicationConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationConfig != nil {
                map["applicationConfig"] = self.applicationConfig?.toMap()
            }
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.instructions != nil {
                map["instructions"] = self.instructions!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("applicationConfig") {
                var model = GetPublishedAgentResponseBody.Data.ApplicationConfig()
                model.fromMap(dict["applicationConfig"] as! [String: Any])
                self.applicationConfig = model
            }
            if dict.keys.contains("code") {
                self.code = dict["code"] as! String
            }
            if dict.keys.contains("instructions") {
                self.instructions = dict["instructions"] as! String
            }
            if dict.keys.contains("modelId") {
                self.modelId = dict["modelId"] as! String
            }
            if dict.keys.contains("name") {
                self.name = dict["name"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetPublishedAgentResponseBody.Data?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = GetPublishedAgentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetPublishedAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPublishedAgentResponseBody?

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
            var model = GetPublishedAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCategoryRequest : Tea.TeaModel {
    public var categoryType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var parentCategoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryType != nil {
            map["CategoryType"] = self.categoryType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parentCategoryId != nil {
            map["ParentCategoryId"] = self.parentCategoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryType") {
            self.categoryType = dict["CategoryType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ParentCategoryId") {
            self.parentCategoryId = dict["ParentCategoryId"] as! String
        }
    }
}

public class ListCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CategoryList : Tea.TeaModel {
            public var categoryId: String?

            public var categoryName: String?

            public var categoryType: String?

            public var isDefault: Bool?

            public var parentCategoryId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.categoryType != nil {
                    map["CategoryType"] = self.categoryType!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                if self.parentCategoryId != nil {
                    map["ParentCategoryId"] = self.parentCategoryId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CategoryId") {
                    self.categoryId = dict["CategoryId"] as! String
                }
                if dict.keys.contains("CategoryName") {
                    self.categoryName = dict["CategoryName"] as! String
                }
                if dict.keys.contains("CategoryType") {
                    self.categoryType = dict["CategoryType"] as! String
                }
                if dict.keys.contains("IsDefault") {
                    self.isDefault = dict["IsDefault"] as! Bool
                }
                if dict.keys.contains("ParentCategoryId") {
                    self.parentCategoryId = dict["ParentCategoryId"] as! String
                }
            }
        }
        public var categoryList: [ListCategoryResponseBody.Data.CategoryList]?

        public var hasNext: Bool?

        public var maxResults: Int32?

        public var nextToken: String?

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
            if self.categoryList != nil {
                var tmp : [Any] = []
                for k in self.categoryList! {
                    tmp.append(k.toMap())
                }
                map["CategoryList"] = tmp
            }
            if self.hasNext != nil {
                map["HasNext"] = self.hasNext!
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryList") {
                var tmp : [ListCategoryResponseBody.Data.CategoryList] = []
                for v in dict["CategoryList"] as! [Any] {
                    var model = ListCategoryResponseBody.Data.CategoryList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.categoryList = tmp
            }
            if dict.keys.contains("HasNext") {
                self.hasNext = dict["HasNext"] as! Bool
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListCategoryResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = ListCategoryResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCategoryResponseBody?

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
            var model = ListCategoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListChunksRequest : Tea.TeaModel {
    public var fields: [String]?

    public var filed: String?

    public var indexId: String?

    public var pageNum: Int32?

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
        if self.fields != nil {
            map["Fields"] = self.fields!
        }
        if self.filed != nil {
            map["Filed"] = self.filed!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Fields") {
            self.fields = dict["Fields"] as! [String]
        }
        if dict.keys.contains("Filed") {
            self.filed = dict["Filed"] as! String
        }
        if dict.keys.contains("IndexId") {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListChunksResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var metadata: Any?

            public var score: Double?

            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.metadata != nil {
                    map["Metadata"] = self.metadata!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Metadata") {
                    self.metadata = dict["Metadata"] as! Any
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public var nodes: [ListChunksResponseBody.Data.Nodes]?

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
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") {
                var tmp : [ListChunksResponseBody.Data.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = ListChunksResponseBody.Data.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ListChunksResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = ListChunksResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListChunksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChunksResponseBody?

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
            var model = ListChunksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFileRequest : Tea.TeaModel {
    public var categoryId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FileList : Tea.TeaModel {
            public var categoryId: String?

            public var createTime: String?

            public var fileId: String?

            public var fileName: String?

            public var fileType: String?

            public var parser: String?

            public var sizeInBytes: Int64?

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
                if self.categoryId != nil {
                    map["CategoryId"] = self.categoryId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.fileId != nil {
                    map["FileId"] = self.fileId!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.fileType != nil {
                    map["FileType"] = self.fileType!
                }
                if self.parser != nil {
                    map["Parser"] = self.parser!
                }
                if self.sizeInBytes != nil {
                    map["SizeInBytes"] = self.sizeInBytes!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CategoryId") {
                    self.categoryId = dict["CategoryId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("FileId") {
                    self.fileId = dict["FileId"] as! String
                }
                if dict.keys.contains("FileName") {
                    self.fileName = dict["FileName"] as! String
                }
                if dict.keys.contains("FileType") {
                    self.fileType = dict["FileType"] as! String
                }
                if dict.keys.contains("Parser") {
                    self.parser = dict["Parser"] as! String
                }
                if dict.keys.contains("SizeInBytes") {
                    self.sizeInBytes = dict["SizeInBytes"] as! Int64
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var fileList: [ListFileResponseBody.Data.FileList]?

        public var hasNext: Bool?

        public var maxResults: Int32?

        public var nextToken: String?

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
            if self.fileList != nil {
                var tmp : [Any] = []
                for k in self.fileList! {
                    tmp.append(k.toMap())
                }
                map["FileList"] = tmp
            }
            if self.hasNext != nil {
                map["HasNext"] = self.hasNext!
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileList") {
                var tmp : [ListFileResponseBody.Data.FileList] = []
                for v in dict["FileList"] as! [Any] {
                    var model = ListFileResponseBody.Data.FileList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.fileList = tmp
            }
            if dict.keys.contains("HasNext") {
                self.hasNext = dict["HasNext"] as! Bool
            }
            if dict.keys.contains("MaxResults") {
                self.maxResults = dict["MaxResults"] as! Int32
            }
            if dict.keys.contains("NextToken") {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListFileResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = ListFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFileResponseBody?

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
            var model = ListFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIndexDocumentsRequest : Tea.TeaModel {
    public var documentName: String?

    public var documentStatus: String?

    public var indexId: String?

    public var pageNumber: Int32?

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
        if self.documentName != nil {
            map["DocumentName"] = self.documentName!
        }
        if self.documentStatus != nil {
            map["DocumentStatus"] = self.documentStatus!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DocumentName") {
            self.documentName = dict["DocumentName"] as! String
        }
        if dict.keys.contains("DocumentStatus") {
            self.documentStatus = dict["DocumentStatus"] as! String
        }
        if dict.keys.contains("IndexId") {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListIndexDocumentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Documents : Tea.TeaModel {
            public var code: String?

            public var documentType: String?

            public var id: String?

            public var message: String?

            public var name: String?

            public var size: Int32?

            public var sourceId: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.documentType != nil {
                    map["DocumentType"] = self.documentType!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.sourceId != nil {
                    map["SourceId"] = self.sourceId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("DocumentType") {
                    self.documentType = dict["DocumentType"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int32
                }
                if dict.keys.contains("SourceId") {
                    self.sourceId = dict["SourceId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var documents: [ListIndexDocumentsResponseBody.Data.Documents]?

        public var indexId: String?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.documents != nil {
                var tmp : [Any] = []
                for k in self.documents! {
                    tmp.append(k.toMap())
                }
                map["Documents"] = tmp
            }
            if self.indexId != nil {
                map["IndexId"] = self.indexId!
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
            if dict.keys.contains("Documents") {
                var tmp : [ListIndexDocumentsResponseBody.Data.Documents] = []
                for v in dict["Documents"] as! [Any] {
                    var model = ListIndexDocumentsResponseBody.Data.Documents()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.documents = tmp
            }
            if dict.keys.contains("IndexId") {
                self.indexId = dict["IndexId"] as! String
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ListIndexDocumentsResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = ListIndexDocumentsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListIndexDocumentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIndexDocumentsResponseBody?

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
            var model = ListIndexDocumentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListIndicesRequest : Tea.TeaModel {
    public var indexName: String?

    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.indexName != nil {
            map["IndexName"] = self.indexName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IndexName") {
            self.indexName = dict["IndexName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
    }
}

public class ListIndicesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Indices : Tea.TeaModel {
            public var chunkSize: Int32?

            public var description_: String?

            public var documentIds: [String]?

            public var embeddingModelName: String?

            public var id: String?

            public var name: String?

            public var overlapSize: Int32?

            public var rerankMinScore: String?

            public var rerankModelName: String?

            public var separator: String?

            public var sinkInstanceId: String?

            public var sinkRegion: String?

            public var sinkType: String?

            public var sourceType: String?

            public var structureType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chunkSize != nil {
                    map["ChunkSize"] = self.chunkSize!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.documentIds != nil {
                    map["DocumentIds"] = self.documentIds!
                }
                if self.embeddingModelName != nil {
                    map["EmbeddingModelName"] = self.embeddingModelName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.overlapSize != nil {
                    map["OverlapSize"] = self.overlapSize!
                }
                if self.rerankMinScore != nil {
                    map["RerankMinScore"] = self.rerankMinScore!
                }
                if self.rerankModelName != nil {
                    map["RerankModelName"] = self.rerankModelName!
                }
                if self.separator != nil {
                    map["Separator"] = self.separator!
                }
                if self.sinkInstanceId != nil {
                    map["SinkInstanceId"] = self.sinkInstanceId!
                }
                if self.sinkRegion != nil {
                    map["SinkRegion"] = self.sinkRegion!
                }
                if self.sinkType != nil {
                    map["SinkType"] = self.sinkType!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.structureType != nil {
                    map["StructureType"] = self.structureType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ChunkSize") {
                    self.chunkSize = dict["ChunkSize"] as! Int32
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DocumentIds") {
                    self.documentIds = dict["DocumentIds"] as! [String]
                }
                if dict.keys.contains("EmbeddingModelName") {
                    self.embeddingModelName = dict["EmbeddingModelName"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OverlapSize") {
                    self.overlapSize = dict["OverlapSize"] as! Int32
                }
                if dict.keys.contains("RerankMinScore") {
                    self.rerankMinScore = dict["RerankMinScore"] as! String
                }
                if dict.keys.contains("RerankModelName") {
                    self.rerankModelName = dict["RerankModelName"] as! String
                }
                if dict.keys.contains("Separator") {
                    self.separator = dict["Separator"] as! String
                }
                if dict.keys.contains("SinkInstanceId") {
                    self.sinkInstanceId = dict["SinkInstanceId"] as! String
                }
                if dict.keys.contains("SinkRegion") {
                    self.sinkRegion = dict["SinkRegion"] as! String
                }
                if dict.keys.contains("SinkType") {
                    self.sinkType = dict["SinkType"] as! String
                }
                if dict.keys.contains("SourceType") {
                    self.sourceType = dict["SourceType"] as! String
                }
                if dict.keys.contains("StructureType") {
                    self.structureType = dict["StructureType"] as! String
                }
            }
        }
        public var indices: [ListIndicesResponseBody.Data.Indices]?

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
            if self.indices != nil {
                var tmp : [Any] = []
                for k in self.indices! {
                    tmp.append(k.toMap())
                }
                map["Indices"] = tmp
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
            if dict.keys.contains("Indices") {
                var tmp : [ListIndicesResponseBody.Data.Indices] = []
                for v in dict["Indices"] as! [Any] {
                    var model = ListIndicesResponseBody.Data.Indices()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.indices = tmp
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

    public var data: ListIndicesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = ListIndicesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ListIndicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIndicesResponseBody?

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
            var model = ListIndicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMemoriesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListMemoriesResponseBody : Tea.TeaModel {
    public class Memories : Tea.TeaModel {
        public var description_: String?

        public var memoryId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.memoryId != nil {
                map["memoryId"] = self.memoryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("memoryId") {
                self.memoryId = dict["memoryId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var memories: [ListMemoriesResponseBody.Memories]?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.memories != nil {
            var tmp : [Any] = []
            for k in self.memories! {
                tmp.append(k.toMap())
            }
            map["memories"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.workspaceId != nil {
            map["workspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("memories") {
            var tmp : [ListMemoriesResponseBody.Memories] = []
            for v in dict["memories"] as! [Any] {
                var model = ListMemoriesResponseBody.Memories()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.memories = tmp
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
        if dict.keys.contains("workspaceId") {
            self.workspaceId = dict["workspaceId"] as! String
        }
    }
}

public class ListMemoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMemoriesResponseBody?

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
            var model = ListMemoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMemoryNodesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
    }
}

public class ListMemoryNodesResponseBody : Tea.TeaModel {
    public class MemoryNodes : Tea.TeaModel {
        public var content: String?

        public var memoryNodeId: String?

        public override init() {
            super.init()
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
                map["content"] = self.content!
            }
            if self.memoryNodeId != nil {
                map["memoryNodeId"] = self.memoryNodeId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("memoryNodeId") {
                self.memoryNodeId = dict["memoryNodeId"] as! String
            }
        }
    }
    public var maxResults: Int32?

    public var memoryNodes: [ListMemoryNodesResponseBody.MemoryNodes]?

    public var nextToken: String?

    public var requestId: String?

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
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.memoryNodes != nil {
            var tmp : [Any] = []
            for k in self.memoryNodes! {
                tmp.append(k.toMap())
            }
            map["memoryNodes"] = tmp
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("maxResults") {
            self.maxResults = dict["maxResults"] as! Int32
        }
        if dict.keys.contains("memoryNodes") {
            var tmp : [ListMemoryNodesResponseBody.MemoryNodes] = []
            for v in dict["memoryNodes"] as! [Any] {
                var model = ListMemoryNodesResponseBody.MemoryNodes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.memoryNodes = tmp
        }
        if dict.keys.contains("nextToken") {
            self.nextToken = dict["nextToken"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int32
        }
    }
}

public class ListMemoryNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMemoryNodesResponseBody?

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
            var model = ListMemoryNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPublishedAgentRequest : Tea.TeaModel {
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
        if self.pageNo != nil {
            map["pageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNo") {
            self.pageNo = dict["pageNo"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListPublishedAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class ApplicationConfig : Tea.TeaModel {
                public class HistoryConfig : Tea.TeaModel {
                    public var enableAdbRecord: Bool?

                    public var enableRecord: Bool?

                    public var instanceId: String?

                    public var region: String?

                    public var storeCode: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enableAdbRecord != nil {
                            map["enableAdbRecord"] = self.enableAdbRecord!
                        }
                        if self.enableRecord != nil {
                            map["enableRecord"] = self.enableRecord!
                        }
                        if self.instanceId != nil {
                            map["instanceId"] = self.instanceId!
                        }
                        if self.region != nil {
                            map["region"] = self.region!
                        }
                        if self.storeCode != nil {
                            map["storeCode"] = self.storeCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("enableAdbRecord") {
                            self.enableAdbRecord = dict["enableAdbRecord"] as! Bool
                        }
                        if dict.keys.contains("enableRecord") {
                            self.enableRecord = dict["enableRecord"] as! Bool
                        }
                        if dict.keys.contains("instanceId") {
                            self.instanceId = dict["instanceId"] as! String
                        }
                        if dict.keys.contains("region") {
                            self.region = dict["region"] as! String
                        }
                        if dict.keys.contains("storeCode") {
                            self.storeCode = dict["storeCode"] as! String
                        }
                    }
                }
                public class LongTermMemory : Tea.TeaModel {
                    public var enable: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enable != nil {
                            map["enable"] = self.enable!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("enable") {
                            self.enable = dict["enable"] as! Bool
                        }
                    }
                }
                public class Parameters : Tea.TeaModel {
                    public var dialogRound: Int32?

                    public var maxTokens: Int32?

                    public var temperature: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.dialogRound != nil {
                            map["dialogRound"] = self.dialogRound!
                        }
                        if self.maxTokens != nil {
                            map["maxTokens"] = self.maxTokens!
                        }
                        if self.temperature != nil {
                            map["temperature"] = self.temperature!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("dialogRound") {
                            self.dialogRound = dict["dialogRound"] as! Int32
                        }
                        if dict.keys.contains("maxTokens") {
                            self.maxTokens = dict["maxTokens"] as! Int32
                        }
                        if dict.keys.contains("temperature") {
                            self.temperature = dict["temperature"] as! Double
                        }
                    }
                }
                public class RagConfig : Tea.TeaModel {
                    public var enableCitation: Bool?

                    public var enableSearch: Bool?

                    public var knowledgeBaseCodeList: [String]?

                    public var topK: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enableCitation != nil {
                            map["enableCitation"] = self.enableCitation!
                        }
                        if self.enableSearch != nil {
                            map["enableSearch"] = self.enableSearch!
                        }
                        if self.knowledgeBaseCodeList != nil {
                            map["knowledgeBaseCodeList"] = self.knowledgeBaseCodeList!
                        }
                        if self.topK != nil {
                            map["topK"] = self.topK!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("enableCitation") {
                            self.enableCitation = dict["enableCitation"] as! Bool
                        }
                        if dict.keys.contains("enableSearch") {
                            self.enableSearch = dict["enableSearch"] as! Bool
                        }
                        if dict.keys.contains("knowledgeBaseCodeList") {
                            self.knowledgeBaseCodeList = dict["knowledgeBaseCodeList"] as! [String]
                        }
                        if dict.keys.contains("topK") {
                            self.topK = dict["topK"] as! Int32
                        }
                    }
                }
                public class Security : Tea.TeaModel {
                    public var processingStrategy: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.processingStrategy != nil {
                            map["processingStrategy"] = self.processingStrategy!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("processingStrategy") {
                            self.processingStrategy = dict["processingStrategy"] as! String
                        }
                    }
                }
                public class Tools : Tea.TeaModel {
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
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("type") {
                            self.type = dict["type"] as! String
                        }
                    }
                }
                public class WorkFlows : Tea.TeaModel {
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
                        if self.type != nil {
                            map["type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("type") {
                            self.type = dict["type"] as! String
                        }
                    }
                }
                public var historyConfig: ListPublishedAgentResponseBody.Data.List.ApplicationConfig.HistoryConfig?

                public var longTermMemory: ListPublishedAgentResponseBody.Data.List.ApplicationConfig.LongTermMemory?

                public var parameters: ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Parameters?

                public var ragConfig: ListPublishedAgentResponseBody.Data.List.ApplicationConfig.RagConfig?

                public var security: ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Security?

                public var tools: [ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Tools]?

                public var workFlows: [ListPublishedAgentResponseBody.Data.List.ApplicationConfig.WorkFlows]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.historyConfig?.validate()
                    try self.longTermMemory?.validate()
                    try self.parameters?.validate()
                    try self.ragConfig?.validate()
                    try self.security?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.historyConfig != nil {
                        map["historyConfig"] = self.historyConfig?.toMap()
                    }
                    if self.longTermMemory != nil {
                        map["longTermMemory"] = self.longTermMemory?.toMap()
                    }
                    if self.parameters != nil {
                        map["parameters"] = self.parameters?.toMap()
                    }
                    if self.ragConfig != nil {
                        map["ragConfig"] = self.ragConfig?.toMap()
                    }
                    if self.security != nil {
                        map["security"] = self.security?.toMap()
                    }
                    if self.tools != nil {
                        var tmp : [Any] = []
                        for k in self.tools! {
                            tmp.append(k.toMap())
                        }
                        map["tools"] = tmp
                    }
                    if self.workFlows != nil {
                        var tmp : [Any] = []
                        for k in self.workFlows! {
                            tmp.append(k.toMap())
                        }
                        map["workFlows"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("historyConfig") {
                        var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.HistoryConfig()
                        model.fromMap(dict["historyConfig"] as! [String: Any])
                        self.historyConfig = model
                    }
                    if dict.keys.contains("longTermMemory") {
                        var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.LongTermMemory()
                        model.fromMap(dict["longTermMemory"] as! [String: Any])
                        self.longTermMemory = model
                    }
                    if dict.keys.contains("parameters") {
                        var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Parameters()
                        model.fromMap(dict["parameters"] as! [String: Any])
                        self.parameters = model
                    }
                    if dict.keys.contains("ragConfig") {
                        var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.RagConfig()
                        model.fromMap(dict["ragConfig"] as! [String: Any])
                        self.ragConfig = model
                    }
                    if dict.keys.contains("security") {
                        var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Security()
                        model.fromMap(dict["security"] as! [String: Any])
                        self.security = model
                    }
                    if dict.keys.contains("tools") {
                        var tmp : [ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Tools] = []
                        for v in dict["tools"] as! [Any] {
                            var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.Tools()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tools = tmp
                    }
                    if dict.keys.contains("workFlows") {
                        var tmp : [ListPublishedAgentResponseBody.Data.List.ApplicationConfig.WorkFlows] = []
                        for v in dict["workFlows"] as! [Any] {
                            var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig.WorkFlows()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.workFlows = tmp
                    }
                }
            }
            public var applicationConfig: ListPublishedAgentResponseBody.Data.List.ApplicationConfig?

            public var code: String?

            public var instructions: String?

            public var modelId: String?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.applicationConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicationConfig != nil {
                    map["applicationConfig"] = self.applicationConfig?.toMap()
                }
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.instructions != nil {
                    map["instructions"] = self.instructions!
                }
                if self.modelId != nil {
                    map["modelId"] = self.modelId!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("applicationConfig") {
                    var model = ListPublishedAgentResponseBody.Data.List.ApplicationConfig()
                    model.fromMap(dict["applicationConfig"] as! [String: Any])
                    self.applicationConfig = model
                }
                if dict.keys.contains("code") {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("instructions") {
                    self.instructions = dict["instructions"] as! String
                }
                if dict.keys.contains("modelId") {
                    self.modelId = dict["modelId"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
            }
        }
        public var list: [ListPublishedAgentResponseBody.Data.List]?

        public var pageNo: Int32?

        public var pageSize: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNo != nil {
                map["pageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") {
                var tmp : [ListPublishedAgentResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListPublishedAgentResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNo") {
                self.pageNo = dict["pageNo"] as! Int32
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListPublishedAgentResponseBody.Data?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            var model = ListPublishedAgentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! String
        }
    }
}

public class ListPublishedAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPublishedAgentResponseBody?

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
            var model = ListPublishedAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RetrieveRequest : Tea.TeaModel {
    public class Rerank : Tea.TeaModel {
        public var modelName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ModelName") {
                self.modelName = dict["ModelName"] as! String
            }
        }
    }
    public class Rewrite : Tea.TeaModel {
        public var modelName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.modelName != nil {
                map["ModelName"] = self.modelName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ModelName") {
                self.modelName = dict["ModelName"] as! String
            }
        }
    }
    public var denseSimilarityTopK: Int32?

    public var enableReranking: Bool?

    public var enableRewrite: Bool?

    public var images: [String]?

    public var indexId: String?

    public var query: String?

    public var rerank: [RetrieveRequest.Rerank]?

    public var rerankMinScore: Double?

    public var rerankTopN: Int32?

    public var rewrite: [RetrieveRequest.Rewrite]?

    public var saveRetrieverHistory: Bool?

    public var searchFilters: [[String: String]]?

    public var sparseSimilarityTopK: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.denseSimilarityTopK != nil {
            map["DenseSimilarityTopK"] = self.denseSimilarityTopK!
        }
        if self.enableReranking != nil {
            map["EnableReranking"] = self.enableReranking!
        }
        if self.enableRewrite != nil {
            map["EnableRewrite"] = self.enableRewrite!
        }
        if self.images != nil {
            map["Images"] = self.images!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.rerank != nil {
            var tmp : [Any] = []
            for k in self.rerank! {
                tmp.append(k.toMap())
            }
            map["Rerank"] = tmp
        }
        if self.rerankMinScore != nil {
            map["RerankMinScore"] = self.rerankMinScore!
        }
        if self.rerankTopN != nil {
            map["RerankTopN"] = self.rerankTopN!
        }
        if self.rewrite != nil {
            var tmp : [Any] = []
            for k in self.rewrite! {
                tmp.append(k.toMap())
            }
            map["Rewrite"] = tmp
        }
        if self.saveRetrieverHistory != nil {
            map["SaveRetrieverHistory"] = self.saveRetrieverHistory!
        }
        if self.searchFilters != nil {
            map["SearchFilters"] = self.searchFilters!
        }
        if self.sparseSimilarityTopK != nil {
            map["SparseSimilarityTopK"] = self.sparseSimilarityTopK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DenseSimilarityTopK") {
            self.denseSimilarityTopK = dict["DenseSimilarityTopK"] as! Int32
        }
        if dict.keys.contains("EnableReranking") {
            self.enableReranking = dict["EnableReranking"] as! Bool
        }
        if dict.keys.contains("EnableRewrite") {
            self.enableRewrite = dict["EnableRewrite"] as! Bool
        }
        if dict.keys.contains("Images") {
            self.images = dict["Images"] as! [String]
        }
        if dict.keys.contains("IndexId") {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("Rerank") {
            var tmp : [RetrieveRequest.Rerank] = []
            for v in dict["Rerank"] as! [Any] {
                var model = RetrieveRequest.Rerank()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rerank = tmp
        }
        if dict.keys.contains("RerankMinScore") {
            self.rerankMinScore = dict["RerankMinScore"] as! Double
        }
        if dict.keys.contains("RerankTopN") {
            self.rerankTopN = dict["RerankTopN"] as! Int32
        }
        if dict.keys.contains("Rewrite") {
            var tmp : [RetrieveRequest.Rewrite] = []
            for v in dict["Rewrite"] as! [Any] {
                var model = RetrieveRequest.Rewrite()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rewrite = tmp
        }
        if dict.keys.contains("SaveRetrieverHistory") {
            self.saveRetrieverHistory = dict["SaveRetrieverHistory"] as! Bool
        }
        if dict.keys.contains("SearchFilters") {
            self.searchFilters = dict["SearchFilters"] as! [[String: String]]
        }
        if dict.keys.contains("SparseSimilarityTopK") {
            self.sparseSimilarityTopK = dict["SparseSimilarityTopK"] as! Int32
        }
    }
}

public class RetrieveShrinkRequest : Tea.TeaModel {
    public var denseSimilarityTopK: Int32?

    public var enableReranking: Bool?

    public var enableRewrite: Bool?

    public var imagesShrink: String?

    public var indexId: String?

    public var query: String?

    public var rerankShrink: String?

    public var rerankMinScore: Double?

    public var rerankTopN: Int32?

    public var rewriteShrink: String?

    public var saveRetrieverHistory: Bool?

    public var searchFiltersShrink: String?

    public var sparseSimilarityTopK: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.denseSimilarityTopK != nil {
            map["DenseSimilarityTopK"] = self.denseSimilarityTopK!
        }
        if self.enableReranking != nil {
            map["EnableReranking"] = self.enableReranking!
        }
        if self.enableRewrite != nil {
            map["EnableRewrite"] = self.enableRewrite!
        }
        if self.imagesShrink != nil {
            map["Images"] = self.imagesShrink!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.rerankShrink != nil {
            map["Rerank"] = self.rerankShrink!
        }
        if self.rerankMinScore != nil {
            map["RerankMinScore"] = self.rerankMinScore!
        }
        if self.rerankTopN != nil {
            map["RerankTopN"] = self.rerankTopN!
        }
        if self.rewriteShrink != nil {
            map["Rewrite"] = self.rewriteShrink!
        }
        if self.saveRetrieverHistory != nil {
            map["SaveRetrieverHistory"] = self.saveRetrieverHistory!
        }
        if self.searchFiltersShrink != nil {
            map["SearchFilters"] = self.searchFiltersShrink!
        }
        if self.sparseSimilarityTopK != nil {
            map["SparseSimilarityTopK"] = self.sparseSimilarityTopK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DenseSimilarityTopK") {
            self.denseSimilarityTopK = dict["DenseSimilarityTopK"] as! Int32
        }
        if dict.keys.contains("EnableReranking") {
            self.enableReranking = dict["EnableReranking"] as! Bool
        }
        if dict.keys.contains("EnableRewrite") {
            self.enableRewrite = dict["EnableRewrite"] as! Bool
        }
        if dict.keys.contains("Images") {
            self.imagesShrink = dict["Images"] as! String
        }
        if dict.keys.contains("IndexId") {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("Rerank") {
            self.rerankShrink = dict["Rerank"] as! String
        }
        if dict.keys.contains("RerankMinScore") {
            self.rerankMinScore = dict["RerankMinScore"] as! Double
        }
        if dict.keys.contains("RerankTopN") {
            self.rerankTopN = dict["RerankTopN"] as! Int32
        }
        if dict.keys.contains("Rewrite") {
            self.rewriteShrink = dict["Rewrite"] as! String
        }
        if dict.keys.contains("SaveRetrieverHistory") {
            self.saveRetrieverHistory = dict["SaveRetrieverHistory"] as! Bool
        }
        if dict.keys.contains("SearchFilters") {
            self.searchFiltersShrink = dict["SearchFilters"] as! String
        }
        if dict.keys.contains("SparseSimilarityTopK") {
            self.sparseSimilarityTopK = dict["SparseSimilarityTopK"] as! Int32
        }
    }
}

public class RetrieveResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var metadata: Any?

            public var score: Double?

            public var text: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.metadata != nil {
                    map["Metadata"] = self.metadata!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Metadata") {
                    self.metadata = dict["Metadata"] as! Any
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Double
                }
                if dict.keys.contains("Text") {
                    self.text = dict["Text"] as! String
                }
            }
        }
        public var nodes: [RetrieveResponseBody.Data.Nodes]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Nodes") {
                var tmp : [RetrieveResponseBody.Data.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = RetrieveResponseBody.Data.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
        }
    }
    public var code: String?

    public var data: RetrieveResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = RetrieveResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RetrieveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetrieveResponseBody?

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
            var model = RetrieveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitIndexAddDocumentsJobRequest : Tea.TeaModel {
    public var categoryIds: [String]?

    public var documentIds: [String]?

    public var indexId: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryIds != nil {
            map["CategoryIds"] = self.categoryIds!
        }
        if self.documentIds != nil {
            map["DocumentIds"] = self.documentIds!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryIds") {
            self.categoryIds = dict["CategoryIds"] as! [String]
        }
        if dict.keys.contains("DocumentIds") {
            self.documentIds = dict["DocumentIds"] as! [String]
        }
        if dict.keys.contains("IndexId") {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class SubmitIndexAddDocumentsJobShrinkRequest : Tea.TeaModel {
    public var categoryIdsShrink: String?

    public var documentIdsShrink: String?

    public var indexId: String?

    public var sourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryIdsShrink != nil {
            map["CategoryIds"] = self.categoryIdsShrink!
        }
        if self.documentIdsShrink != nil {
            map["DocumentIds"] = self.documentIdsShrink!
        }
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryIds") {
            self.categoryIdsShrink = dict["CategoryIds"] as! String
        }
        if dict.keys.contains("DocumentIds") {
            self.documentIdsShrink = dict["DocumentIds"] as! String
        }
        if dict.keys.contains("IndexId") {
            self.indexId = dict["IndexId"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
    }
}

public class SubmitIndexAddDocumentsJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitIndexAddDocumentsJobResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = SubmitIndexAddDocumentsJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SubmitIndexAddDocumentsJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitIndexAddDocumentsJobResponseBody?

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
            var model = SubmitIndexAddDocumentsJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitIndexJobRequest : Tea.TeaModel {
    public var indexId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.indexId != nil {
            map["IndexId"] = self.indexId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IndexId") {
            self.indexId = dict["IndexId"] as! String
        }
    }
}

public class SubmitIndexJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public var indexId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.indexId != nil {
                map["IndexId"] = self.indexId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("IndexId") {
                self.indexId = dict["IndexId"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitIndexJobResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
            var model = SubmitIndexJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SubmitIndexJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitIndexJobResponseBody?

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
            var model = SubmitIndexJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAndPublishAgentRequest : Tea.TeaModel {
    public class ApplicationConfig : Tea.TeaModel {
        public class HistoryConfig : Tea.TeaModel {
            public var enableAdbRecord: Bool?

            public var enableRecord: Bool?

            public var instanceId: String?

            public var region: String?

            public var storeCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableAdbRecord != nil {
                    map["enableAdbRecord"] = self.enableAdbRecord!
                }
                if self.enableRecord != nil {
                    map["enableRecord"] = self.enableRecord!
                }
                if self.instanceId != nil {
                    map["instanceId"] = self.instanceId!
                }
                if self.region != nil {
                    map["region"] = self.region!
                }
                if self.storeCode != nil {
                    map["storeCode"] = self.storeCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enableAdbRecord") {
                    self.enableAdbRecord = dict["enableAdbRecord"] as! Bool
                }
                if dict.keys.contains("enableRecord") {
                    self.enableRecord = dict["enableRecord"] as! Bool
                }
                if dict.keys.contains("instanceId") {
                    self.instanceId = dict["instanceId"] as! String
                }
                if dict.keys.contains("region") {
                    self.region = dict["region"] as! String
                }
                if dict.keys.contains("storeCode") {
                    self.storeCode = dict["storeCode"] as! String
                }
            }
        }
        public class LongTermMemory : Tea.TeaModel {
            public var enable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
            }
        }
        public class Parameters : Tea.TeaModel {
            public var dialogRound: Int32?

            public var maxTokens: Int32?

            public var temperature: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dialogRound != nil {
                    map["dialogRound"] = self.dialogRound!
                }
                if self.maxTokens != nil {
                    map["maxTokens"] = self.maxTokens!
                }
                if self.temperature != nil {
                    map["temperature"] = self.temperature!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("dialogRound") {
                    self.dialogRound = dict["dialogRound"] as! Int32
                }
                if dict.keys.contains("maxTokens") {
                    self.maxTokens = dict["maxTokens"] as! Int32
                }
                if dict.keys.contains("temperature") {
                    self.temperature = dict["temperature"] as! Double
                }
            }
        }
        public class RagConfig : Tea.TeaModel {
            public var enableCitation: Bool?

            public var enableSearch: Bool?

            public var knowledgeBaseCodeList: [String]?

            public var topK: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableCitation != nil {
                    map["enableCitation"] = self.enableCitation!
                }
                if self.enableSearch != nil {
                    map["enableSearch"] = self.enableSearch!
                }
                if self.knowledgeBaseCodeList != nil {
                    map["knowledgeBaseCodeList"] = self.knowledgeBaseCodeList!
                }
                if self.topK != nil {
                    map["topK"] = self.topK!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enableCitation") {
                    self.enableCitation = dict["enableCitation"] as! Bool
                }
                if dict.keys.contains("enableSearch") {
                    self.enableSearch = dict["enableSearch"] as! Bool
                }
                if dict.keys.contains("knowledgeBaseCodeList") {
                    self.knowledgeBaseCodeList = dict["knowledgeBaseCodeList"] as! [String]
                }
                if dict.keys.contains("topK") {
                    self.topK = dict["topK"] as! Int32
                }
            }
        }
        public class Security : Tea.TeaModel {
            public var processingStrategy: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.processingStrategy != nil {
                    map["processingStrategy"] = self.processingStrategy!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("processingStrategy") {
                    self.processingStrategy = dict["processingStrategy"] as! String
                }
            }
        }
        public class Tools : Tea.TeaModel {
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
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class WorkFlows : Tea.TeaModel {
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
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var historyConfig: UpdateAndPublishAgentRequest.ApplicationConfig.HistoryConfig?

        public var longTermMemory: UpdateAndPublishAgentRequest.ApplicationConfig.LongTermMemory?

        public var parameters: UpdateAndPublishAgentRequest.ApplicationConfig.Parameters?

        public var ragConfig: UpdateAndPublishAgentRequest.ApplicationConfig.RagConfig?

        public var security: UpdateAndPublishAgentRequest.ApplicationConfig.Security?

        public var tools: [UpdateAndPublishAgentRequest.ApplicationConfig.Tools]?

        public var workFlows: [UpdateAndPublishAgentRequest.ApplicationConfig.WorkFlows]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.historyConfig?.validate()
            try self.longTermMemory?.validate()
            try self.parameters?.validate()
            try self.ragConfig?.validate()
            try self.security?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.historyConfig != nil {
                map["historyConfig"] = self.historyConfig?.toMap()
            }
            if self.longTermMemory != nil {
                map["longTermMemory"] = self.longTermMemory?.toMap()
            }
            if self.parameters != nil {
                map["parameters"] = self.parameters?.toMap()
            }
            if self.ragConfig != nil {
                map["ragConfig"] = self.ragConfig?.toMap()
            }
            if self.security != nil {
                map["security"] = self.security?.toMap()
            }
            if self.tools != nil {
                var tmp : [Any] = []
                for k in self.tools! {
                    tmp.append(k.toMap())
                }
                map["tools"] = tmp
            }
            if self.workFlows != nil {
                var tmp : [Any] = []
                for k in self.workFlows! {
                    tmp.append(k.toMap())
                }
                map["workFlows"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("historyConfig") {
                var model = UpdateAndPublishAgentRequest.ApplicationConfig.HistoryConfig()
                model.fromMap(dict["historyConfig"] as! [String: Any])
                self.historyConfig = model
            }
            if dict.keys.contains("longTermMemory") {
                var model = UpdateAndPublishAgentRequest.ApplicationConfig.LongTermMemory()
                model.fromMap(dict["longTermMemory"] as! [String: Any])
                self.longTermMemory = model
            }
            if dict.keys.contains("parameters") {
                var model = UpdateAndPublishAgentRequest.ApplicationConfig.Parameters()
                model.fromMap(dict["parameters"] as! [String: Any])
                self.parameters = model
            }
            if dict.keys.contains("ragConfig") {
                var model = UpdateAndPublishAgentRequest.ApplicationConfig.RagConfig()
                model.fromMap(dict["ragConfig"] as! [String: Any])
                self.ragConfig = model
            }
            if dict.keys.contains("security") {
                var model = UpdateAndPublishAgentRequest.ApplicationConfig.Security()
                model.fromMap(dict["security"] as! [String: Any])
                self.security = model
            }
            if dict.keys.contains("tools") {
                var tmp : [UpdateAndPublishAgentRequest.ApplicationConfig.Tools] = []
                for v in dict["tools"] as! [Any] {
                    var model = UpdateAndPublishAgentRequest.ApplicationConfig.Tools()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tools = tmp
            }
            if dict.keys.contains("workFlows") {
                var tmp : [UpdateAndPublishAgentRequest.ApplicationConfig.WorkFlows] = []
                for v in dict["workFlows"] as! [Any] {
                    var model = UpdateAndPublishAgentRequest.ApplicationConfig.WorkFlows()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.workFlows = tmp
            }
        }
    }
    public var applicationConfig: UpdateAndPublishAgentRequest.ApplicationConfig?

    public var instructions: String?

    public var modelId: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicationConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationConfig != nil {
            map["applicationConfig"] = self.applicationConfig?.toMap()
        }
        if self.instructions != nil {
            map["instructions"] = self.instructions!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applicationConfig") {
            var model = UpdateAndPublishAgentRequest.ApplicationConfig()
            model.fromMap(dict["applicationConfig"] as! [String: Any])
            self.applicationConfig = model
        }
        if dict.keys.contains("instructions") {
            self.instructions = dict["instructions"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class UpdateAndPublishAgentShrinkRequest : Tea.TeaModel {
    public var applicationConfigShrink: String?

    public var instructions: String?

    public var modelId: String?

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
        if self.applicationConfigShrink != nil {
            map["applicationConfig"] = self.applicationConfigShrink!
        }
        if self.instructions != nil {
            map["instructions"] = self.instructions!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applicationConfig") {
            self.applicationConfigShrink = dict["applicationConfig"] as! String
        }
        if dict.keys.contains("instructions") {
            self.instructions = dict["instructions"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("name") {
            self.name = dict["name"] as! String
        }
    }
}

public class UpdateAndPublishAgentResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("httpStatusCode") {
            self.httpStatusCode = dict["httpStatusCode"] as! Int32
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class UpdateAndPublishAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAndPublishAgentResponseBody?

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
            var model = UpdateAndPublishAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMemoryRequest : Tea.TeaModel {
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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
    }
}

public class UpdateMemoryResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateMemoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMemoryResponseBody?

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
            var model = UpdateMemoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMemoryNodeRequest : Tea.TeaModel {
    public var content: String?

    public override init() {
        super.init()
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
            map["content"] = self.content!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("content") {
            self.content = dict["content"] as! String
        }
    }
}

public class UpdateMemoryNodeResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateMemoryNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMemoryNodeResponseBody?

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
            var model = UpdateMemoryNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
