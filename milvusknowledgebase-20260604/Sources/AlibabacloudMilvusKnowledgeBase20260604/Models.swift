import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddDocumentsRequest : Tea.TeaModel {
    public class Dedup : Tea.TeaModel {
        public var contentDedup: Bool?

        public var docNameDedup: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contentDedup != nil {
                map["ContentDedup"] = self.contentDedup!
            }
            if self.docNameDedup != nil {
                map["DocNameDedup"] = self.docNameDedup!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContentDedup"] as? Bool {
                self.contentDedup = value
            }
            if let value = dict["DocNameDedup"] as? Bool {
                self.docNameDedup = value
            }
        }
    }
    public class Documents : Tea.TeaModel {
        public var name: String?

        public var path: String?

        public var size: Int64?

        public override init() {
            super.init()
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
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
        }
    }
    public class DingTalkConfiguration : Tea.TeaModel {
        public var appId: String?

        public var appPassword: String?

        public var dingDocMcpLink: String?

        public var dingTableMcpLink: String?

        public var knowledgeId: String?

        public var knowledgeType: String?

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
            if self.appId != nil {
                map["appId"] = self.appId!
            }
            if self.appPassword != nil {
                map["appPassword"] = self.appPassword!
            }
            if self.dingDocMcpLink != nil {
                map["dingDocMcpLink"] = self.dingDocMcpLink!
            }
            if self.dingTableMcpLink != nil {
                map["dingTableMcpLink"] = self.dingTableMcpLink!
            }
            if self.knowledgeId != nil {
                map["knowledgeId"] = self.knowledgeId!
            }
            if self.knowledgeType != nil {
                map["knowledgeType"] = self.knowledgeType!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? String {
                self.appId = value
            }
            if let value = dict["appPassword"] as? String {
                self.appPassword = value
            }
            if let value = dict["dingDocMcpLink"] as? String {
                self.dingDocMcpLink = value
            }
            if let value = dict["dingTableMcpLink"] as? String {
                self.dingTableMcpLink = value
            }
            if let value = dict["knowledgeId"] as? String {
                self.knowledgeId = value
            }
            if let value = dict["knowledgeType"] as? String {
                self.knowledgeType = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
        }
    }
    public var dedup: AddDocumentsRequest.Dedup?

    public var documents: [AddDocumentsRequest.Documents]?

    public var importType: String?

    public var knowledgeBaseId: String?

    public var metaFields: Any?

    public var strategyId: String?

    public var dingTalkConfiguration: AddDocumentsRequest.DingTalkConfiguration?

    public var parentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dedup?.validate()
        try self.dingTalkConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dedup != nil {
            map["Dedup"] = self.dedup?.toMap()
        }
        if self.documents != nil {
            var tmp : [Any] = []
            for k in self.documents! {
                tmp.append(k.toMap())
            }
            map["Documents"] = tmp
        }
        if self.importType != nil {
            map["ImportType"] = self.importType!
        }
        if self.knowledgeBaseId != nil {
            map["KnowledgeBaseId"] = self.knowledgeBaseId!
        }
        if self.metaFields != nil {
            map["MetaFields"] = self.metaFields!
        }
        if self.strategyId != nil {
            map["StrategyId"] = self.strategyId!
        }
        if self.dingTalkConfiguration != nil {
            map["dingTalkConfiguration"] = self.dingTalkConfiguration?.toMap()
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dedup"] as? [String: Any?] {
            var model = AddDocumentsRequest.Dedup()
            model.fromMap(value)
            self.dedup = model
        }
        if let value = dict["Documents"] as? [Any?] {
            var tmp : [AddDocumentsRequest.Documents] = []
            for v in value {
                if v != nil {
                    var model = AddDocumentsRequest.Documents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.documents = tmp
        }
        if let value = dict["ImportType"] as? String {
            self.importType = value
        }
        if let value = dict["KnowledgeBaseId"] as? String {
            self.knowledgeBaseId = value
        }
        if let value = dict["MetaFields"] as? Any {
            self.metaFields = value
        }
        if let value = dict["StrategyId"] as? String {
            self.strategyId = value
        }
        if let value = dict["dingTalkConfiguration"] as? [String: Any?] {
            var model = AddDocumentsRequest.DingTalkConfiguration()
            model.fromMap(value)
            self.dingTalkConfiguration = model
        }
        if let value = dict["parentId"] as? String {
            self.parentId = value
        }
    }
}

public class AddDocumentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Documents : Tea.TeaModel {
            public var chunkCount: Int32?

            public var chunkMethod: String?

            public var datasetId: String?

            public var id: String?

            public var location: String?

            public var name: String?

            public var progress: Double?

            public var run: String?

            public var size: Int64?

            public var suffix: String?

            public var thumbnail: String?

            public var tokenCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chunkCount != nil {
                    map["chunkCount"] = self.chunkCount!
                }
                if self.chunkMethod != nil {
                    map["chunkMethod"] = self.chunkMethod!
                }
                if self.datasetId != nil {
                    map["datasetId"] = self.datasetId!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.location != nil {
                    map["location"] = self.location!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.progress != nil {
                    map["progress"] = self.progress!
                }
                if self.run != nil {
                    map["run"] = self.run!
                }
                if self.size != nil {
                    map["size"] = self.size!
                }
                if self.suffix != nil {
                    map["suffix"] = self.suffix!
                }
                if self.thumbnail != nil {
                    map["thumbnail"] = self.thumbnail!
                }
                if self.tokenCount != nil {
                    map["tokenCount"] = self.tokenCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chunkCount"] as? Int32 {
                    self.chunkCount = value
                }
                if let value = dict["chunkMethod"] as? String {
                    self.chunkMethod = value
                }
                if let value = dict["datasetId"] as? String {
                    self.datasetId = value
                }
                if let value = dict["id"] as? String {
                    self.id = value
                }
                if let value = dict["location"] as? String {
                    self.location = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["progress"] as? Double {
                    self.progress = value
                }
                if let value = dict["run"] as? String {
                    self.run = value
                }
                if let value = dict["size"] as? Int64 {
                    self.size = value
                }
                if let value = dict["suffix"] as? String {
                    self.suffix = value
                }
                if let value = dict["thumbnail"] as? String {
                    self.thumbnail = value
                }
                if let value = dict["tokenCount"] as? Int32 {
                    self.tokenCount = value
                }
            }
        }
        public var documents: [AddDocumentsResponseBody.Data.Documents]?

        public var errors: [String]?

        public override init() {
            super.init()
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
                map["documents"] = tmp
            }
            if self.errors != nil {
                map["errors"] = self.errors!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["documents"] as? [Any?] {
                var tmp : [AddDocumentsResponseBody.Data.Documents] = []
                for v in value {
                    if v != nil {
                        var model = AddDocumentsResponseBody.Data.Documents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.documents = tmp
            }
            if let value = dict["errors"] as? [String] {
                self.errors = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var data: AddDocumentsResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? Int32 {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = AddDocumentsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class AddDocumentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDocumentsResponseBody?

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
            var model = AddDocumentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKnowledgeBasePreSignedUrlRequest : Tea.TeaModel {
    public class Documents : Tea.TeaModel {
        public var name: String?

        public var path: String?

        public var size: Int64?

        public override init() {
            super.init()
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
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
        }
    }
    public var documents: [GetKnowledgeBasePreSignedUrlRequest.Documents]?

    public var expiresIn: Int32?

    public var knowledgeBaseId: String?

    public override init() {
        super.init()
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
        if self.expiresIn != nil {
            map["ExpiresIn"] = self.expiresIn!
        }
        if self.knowledgeBaseId != nil {
            map["KnowledgeBaseId"] = self.knowledgeBaseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Documents"] as? [Any?] {
            var tmp : [GetKnowledgeBasePreSignedUrlRequest.Documents] = []
            for v in value {
                if v != nil {
                    var model = GetKnowledgeBasePreSignedUrlRequest.Documents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.documents = tmp
        }
        if let value = dict["ExpiresIn"] as? Int32 {
            self.expiresIn = value
        }
        if let value = dict["KnowledgeBaseId"] as? String {
            self.knowledgeBaseId = value
        }
    }
}

public class GetKnowledgeBasePreSignedUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bucketName: String?

        public var expiresIn: Int32?

        public var preSignedUrls: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucketName != nil {
                map["bucketName"] = self.bucketName!
            }
            if self.expiresIn != nil {
                map["expiresIn"] = self.expiresIn!
            }
            if self.preSignedUrls != nil {
                map["preSignedUrls"] = self.preSignedUrls!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["bucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["expiresIn"] as? Int32 {
                self.expiresIn = value
            }
            if let value = dict["preSignedUrls"] as? [String] {
                self.preSignedUrls = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var data: GetKnowledgeBasePreSignedUrlResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? Int32 {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetKnowledgeBasePreSignedUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetKnowledgeBasePreSignedUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKnowledgeBasePreSignedUrlResponseBody?

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
            var model = GetKnowledgeBasePreSignedUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchKnowledgeBaseRequest : Tea.TeaModel {
    public class Image : Tea.TeaModel {
        public var base64: String?

        public var objectKey: String?

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
            if self.base64 != nil {
                map["base64"] = self.base64!
            }
            if self.objectKey != nil {
                map["objectKey"] = self.objectKey!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["base64"] as? String {
                self.base64 = value
            }
            if let value = dict["objectKey"] as? String {
                self.objectKey = value
            }
            if let value = dict["url"] as? String {
                self.url = value
            }
        }
    }
    public class RetrievalConfig : Tea.TeaModel {
        public var candidateCount: Int32?

        public var enableQueryExpansion: Bool?

        public var minScore: Double?

        public var semanticWeight: Double?

        public var translationLanguages: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.candidateCount != nil {
                map["candidateCount"] = self.candidateCount!
            }
            if self.enableQueryExpansion != nil {
                map["enableQueryExpansion"] = self.enableQueryExpansion!
            }
            if self.minScore != nil {
                map["minScore"] = self.minScore!
            }
            if self.semanticWeight != nil {
                map["semanticWeight"] = self.semanticWeight!
            }
            if self.translationLanguages != nil {
                map["translationLanguages"] = self.translationLanguages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["candidateCount"] as? Int32 {
                self.candidateCount = value
            }
            if let value = dict["enableQueryExpansion"] as? Bool {
                self.enableQueryExpansion = value
            }
            if let value = dict["minScore"] as? Double {
                self.minScore = value
            }
            if let value = dict["semanticWeight"] as? Double {
                self.semanticWeight = value
            }
            if let value = dict["translationLanguages"] as? [String] {
                self.translationLanguages = value
            }
        }
    }
    public class TagFilter : Tea.TeaModel {
        public class Conditions : Tea.TeaModel {
            public var field: String?

            public var op: String?

            public var value: Any?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.field != nil {
                    map["field"] = self.field!
                }
                if self.op != nil {
                    map["op"] = self.op!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["field"] as? String {
                    self.field = value
                }
                if let value = dict["op"] as? String {
                    self.op = value
                }
                if let value = dict["value"] as? Any {
                    self.value = value
                }
            }
        }
        public var conditions: [SearchKnowledgeBaseRequest.TagFilter.Conditions]?

        public var relation: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.conditions != nil {
                var tmp : [Any] = []
                for k in self.conditions! {
                    tmp.append(k.toMap())
                }
                map["conditions"] = tmp
            }
            if self.relation != nil {
                map["relation"] = self.relation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["conditions"] as? [Any?] {
                var tmp : [SearchKnowledgeBaseRequest.TagFilter.Conditions] = []
                for v in value {
                    if v != nil {
                        var model = SearchKnowledgeBaseRequest.TagFilter.Conditions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.conditions = tmp
            }
            if let value = dict["relation"] as? String {
                self.relation = value
            }
        }
    }
    public var documentIds: [String]?

    public var enableKnowledgeGraph: Bool?

    public var image: SearchKnowledgeBaseRequest.Image?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var rerankModelId: Int64?

    public var rerankModelName: String?

    public var retrievalConfig: SearchKnowledgeBaseRequest.RetrievalConfig?

    public var tagFilter: SearchKnowledgeBaseRequest.TagFilter?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.image?.validate()
        try self.retrievalConfig?.validate()
        try self.tagFilter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.documentIds != nil {
            map["documentIds"] = self.documentIds!
        }
        if self.enableKnowledgeGraph != nil {
            map["enableKnowledgeGraph"] = self.enableKnowledgeGraph!
        }
        if self.image != nil {
            map["image"] = self.image?.toMap()
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.rerankModelId != nil {
            map["rerankModelId"] = self.rerankModelId!
        }
        if self.rerankModelName != nil {
            map["rerankModelName"] = self.rerankModelName!
        }
        if self.retrievalConfig != nil {
            map["retrievalConfig"] = self.retrievalConfig?.toMap()
        }
        if self.tagFilter != nil {
            map["tagFilter"] = self.tagFilter?.toMap()
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["documentIds"] as? [String] {
            self.documentIds = value
        }
        if let value = dict["enableKnowledgeGraph"] as? Bool {
            self.enableKnowledgeGraph = value
        }
        if let value = dict["image"] as? [String: Any?] {
            var model = SearchKnowledgeBaseRequest.Image()
            model.fromMap(value)
            self.image = model
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["rerankModelId"] as? Int64 {
            self.rerankModelId = value
        }
        if let value = dict["rerankModelName"] as? String {
            self.rerankModelName = value
        }
        if let value = dict["retrievalConfig"] as? [String: Any?] {
            var model = SearchKnowledgeBaseRequest.RetrievalConfig()
            model.fromMap(value)
            self.retrievalConfig = model
        }
        if let value = dict["tagFilter"] as? [String: Any?] {
            var model = SearchKnowledgeBaseRequest.TagFilter()
            model.fromMap(value)
            self.tagFilter = model
        }
        if let value = dict["version"] as? String {
            self.version = value
        }
    }
}

public class SearchKnowledgeBaseResponseBody : Tea.TeaModel {
    public class Results : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var imageId: String?

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
                if self.imageId != nil {
                    map["imageId"] = self.imageId!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["imageId"] as? String {
                    self.imageId = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
                }
            }
        }
        public class Locations : Tea.TeaModel {
            public var bottom: Int32?

            public var left_: Int32?

            public var pageNumber: Int32?

            public var right_: Int32?

            public var top: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bottom != nil {
                    map["bottom"] = self.bottom!
                }
                if self.left_ != nil {
                    map["left"] = self.left_!
                }
                if self.pageNumber != nil {
                    map["pageNumber"] = self.pageNumber!
                }
                if self.right_ != nil {
                    map["right"] = self.right_!
                }
                if self.top != nil {
                    map["top"] = self.top!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bottom"] as? Int32 {
                    self.bottom = value
                }
                if let value = dict["left"] as? Int32 {
                    self.left_ = value
                }
                if let value = dict["pageNumber"] as? Int32 {
                    self.pageNumber = value
                }
                if let value = dict["right"] as? Int32 {
                    self.right_ = value
                }
                if let value = dict["top"] as? Int32 {
                    self.top = value
                }
            }
        }
        public class MediaTimeline : Tea.TeaModel {
            public var endMs: Int64?

            public var startMs: Int64?

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
                if self.endMs != nil {
                    map["endMs"] = self.endMs!
                }
                if self.startMs != nil {
                    map["startMs"] = self.startMs!
                }
                if self.text != nil {
                    map["text"] = self.text!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["endMs"] as? Int64 {
                    self.endMs = value
                }
                if let value = dict["startMs"] as? Int64 {
                    self.startMs = value
                }
                if let value = dict["text"] as? String {
                    self.text = value
                }
            }
        }
        public class ScoreDetails : Tea.TeaModel {
            public var keywordScore: Double?

            public var semanticScore: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.keywordScore != nil {
                    map["keywordScore"] = self.keywordScore!
                }
                if self.semanticScore != nil {
                    map["semanticScore"] = self.semanticScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["keywordScore"] as? Double {
                    self.keywordScore = value
                }
                if let value = dict["semanticScore"] as? Double {
                    self.semanticScore = value
                }
            }
        }
        public var chunkId: String?

        public var content: String?

        public var contentType: String?

        public var documentId: String?

        public var documentName: String?

        public var images: [SearchKnowledgeBaseResponseBody.Results.Images]?

        public var knowledgeBaseId: String?

        public var locations: [SearchKnowledgeBaseResponseBody.Results.Locations]?

        public var mediaEndMs: Int64?

        public var mediaStartMs: Int64?

        public var mediaTimeline: [SearchKnowledgeBaseResponseBody.Results.MediaTimeline]?

        public var parentChunkId: String?

        public var scalarFields: Any?

        public var score: Double?

        public var scoreDetails: SearchKnowledgeBaseResponseBody.Results.ScoreDetails?

        public var tags: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.scoreDetails?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chunkId != nil {
                map["chunkId"] = self.chunkId!
            }
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.contentType != nil {
                map["contentType"] = self.contentType!
            }
            if self.documentId != nil {
                map["documentId"] = self.documentId!
            }
            if self.documentName != nil {
                map["documentName"] = self.documentName!
            }
            if self.images != nil {
                var tmp : [Any] = []
                for k in self.images! {
                    tmp.append(k.toMap())
                }
                map["images"] = tmp
            }
            if self.knowledgeBaseId != nil {
                map["knowledgeBaseId"] = self.knowledgeBaseId!
            }
            if self.locations != nil {
                var tmp : [Any] = []
                for k in self.locations! {
                    tmp.append(k.toMap())
                }
                map["locations"] = tmp
            }
            if self.mediaEndMs != nil {
                map["mediaEndMs"] = self.mediaEndMs!
            }
            if self.mediaStartMs != nil {
                map["mediaStartMs"] = self.mediaStartMs!
            }
            if self.mediaTimeline != nil {
                var tmp : [Any] = []
                for k in self.mediaTimeline! {
                    tmp.append(k.toMap())
                }
                map["mediaTimeline"] = tmp
            }
            if self.parentChunkId != nil {
                map["parentChunkId"] = self.parentChunkId!
            }
            if self.scalarFields != nil {
                map["scalarFields"] = self.scalarFields!
            }
            if self.score != nil {
                map["score"] = self.score!
            }
            if self.scoreDetails != nil {
                map["scoreDetails"] = self.scoreDetails?.toMap()
            }
            if self.tags != nil {
                map["tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chunkId"] as? String {
                self.chunkId = value
            }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["contentType"] as? String {
                self.contentType = value
            }
            if let value = dict["documentId"] as? String {
                self.documentId = value
            }
            if let value = dict["documentName"] as? String {
                self.documentName = value
            }
            if let value = dict["images"] as? [Any?] {
                var tmp : [SearchKnowledgeBaseResponseBody.Results.Images] = []
                for v in value {
                    if v != nil {
                        var model = SearchKnowledgeBaseResponseBody.Results.Images()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.images = tmp
            }
            if let value = dict["knowledgeBaseId"] as? String {
                self.knowledgeBaseId = value
            }
            if let value = dict["locations"] as? [Any?] {
                var tmp : [SearchKnowledgeBaseResponseBody.Results.Locations] = []
                for v in value {
                    if v != nil {
                        var model = SearchKnowledgeBaseResponseBody.Results.Locations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.locations = tmp
            }
            if let value = dict["mediaEndMs"] as? Int64 {
                self.mediaEndMs = value
            }
            if let value = dict["mediaStartMs"] as? Int64 {
                self.mediaStartMs = value
            }
            if let value = dict["mediaTimeline"] as? [Any?] {
                var tmp : [SearchKnowledgeBaseResponseBody.Results.MediaTimeline] = []
                for v in value {
                    if v != nil {
                        var model = SearchKnowledgeBaseResponseBody.Results.MediaTimeline()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mediaTimeline = tmp
            }
            if let value = dict["parentChunkId"] as? String {
                self.parentChunkId = value
            }
            if let value = dict["scalarFields"] as? Any {
                self.scalarFields = value
            }
            if let value = dict["score"] as? Double {
                self.score = value
            }
            if let value = dict["scoreDetails"] as? [String: Any?] {
                var model = SearchKnowledgeBaseResponseBody.Results.ScoreDetails()
                model.fromMap(value)
                self.scoreDetails = model
            }
            if let value = dict["tags"] as? [String] {
                self.tags = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int32?

    public var httpStatusCode: Int32?

    public var message: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryLabels: [String]?

    public var requestId: String?

    public var results: [SearchKnowledgeBaseResponseBody.Results]?

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
        if self.accessDeniedDetail != nil {
            map["accessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.queryLabels != nil {
            map["queryLabels"] = self.queryLabels!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["results"] = tmp
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["accessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["code"] as? Int32 {
            self.code = value
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["pageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["queryLabels"] as? [String] {
            self.queryLabels = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["results"] as? [Any?] {
            var tmp : [SearchKnowledgeBaseResponseBody.Results] = []
            for v in value {
                if v != nil {
                    var model = SearchKnowledgeBaseResponseBody.Results()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.results = tmp
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class SearchKnowledgeBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchKnowledgeBaseResponseBody?

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
            var model = SearchKnowledgeBaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
