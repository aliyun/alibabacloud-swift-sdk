import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AISearchQuery : Tea.TeaModel {
    public var card: String?

    public var cardQuery: String?

    public var page: Int32?

    public var query: String?

    public var searchEngine: String?

    public var searchPlan: String?

    public var sessionId: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.card != nil {
            map["card"] = self.card!
        }
        if self.cardQuery != nil {
            map["cardQuery"] = self.cardQuery!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.searchEngine != nil {
            map["searchEngine"] = self.searchEngine!
        }
        if self.searchPlan != nil {
            map["searchPlan"] = self.searchPlan!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["card"] as? String {
            self.card = value
        }
        if let value = dict["cardQuery"] as? String {
            self.cardQuery = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["searchEngine"] as? String {
            self.searchEngine = value
        }
        if let value = dict["searchPlan"] as? String {
            self.searchPlan = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["timeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class GenericSearchResult : Tea.TeaModel {
    public var pageItems: [ScorePageItem]?

    public var queryContext: QueryContext?

    public var requestId: String?

    public var sceneItems: [SceneItem]?

    public var searchInformation: SearchInformation?

    public var weiboItems: [WeiboItem]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryContext?.validate()
        try self.searchInformation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageItems != nil {
            var tmp : [Any] = []
            for k in self.pageItems! {
                tmp.append(k.toMap())
            }
            map["pageItems"] = tmp
        }
        if self.queryContext != nil {
            map["queryContext"] = self.queryContext?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sceneItems != nil {
            var tmp : [Any] = []
            for k in self.sceneItems! {
                tmp.append(k.toMap())
            }
            map["sceneItems"] = tmp
        }
        if self.searchInformation != nil {
            map["searchInformation"] = self.searchInformation?.toMap()
        }
        if self.weiboItems != nil {
            var tmp : [Any] = []
            for k in self.weiboItems! {
                tmp.append(k.toMap())
            }
            map["weiboItems"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageItems"] as? [Any?] {
            var tmp : [ScorePageItem] = []
            for v in value {
                if v != nil {
                    var model = ScorePageItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pageItems = tmp
        }
        if let value = dict["queryContext"] as? [String: Any?] {
            var model = QueryContext()
            model.fromMap(value)
            self.queryContext = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sceneItems"] as? [Any?] {
            var tmp : [SceneItem] = []
            for v in value {
                if v != nil {
                    var model = SceneItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sceneItems = tmp
        }
        if let value = dict["searchInformation"] as? [String: Any?] {
            var model = SearchInformation()
            model.fromMap(value)
            self.searchInformation = model
        }
        if let value = dict["weiboItems"] as? [Any?] {
            var tmp : [WeiboItem] = []
            for v in value {
                if v != nil {
                    var model = WeiboItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.weiboItems = tmp
        }
    }
}

public class GetIqsUsageResult : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var api: String?

        public var billingQps: Int32?

        public var date: String?

        public var engineType: String?

        public var failedCalls: Int32?

        public var ladderType: String?

        public var mainAccountId: String?

        public var subAccountId: String?

        public var successCalls: Int32?

        public var totalCalls: Int32?

        public var valueAddedAdvanced: Int32?

        public var valueAddedSummary: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.api != nil {
                map["api"] = self.api!
            }
            if self.billingQps != nil {
                map["billingQps"] = self.billingQps!
            }
            if self.date != nil {
                map["date"] = self.date!
            }
            if self.engineType != nil {
                map["engineType"] = self.engineType!
            }
            if self.failedCalls != nil {
                map["failedCalls"] = self.failedCalls!
            }
            if self.ladderType != nil {
                map["ladderType"] = self.ladderType!
            }
            if self.mainAccountId != nil {
                map["mainAccountId"] = self.mainAccountId!
            }
            if self.subAccountId != nil {
                map["subAccountId"] = self.subAccountId!
            }
            if self.successCalls != nil {
                map["successCalls"] = self.successCalls!
            }
            if self.totalCalls != nil {
                map["totalCalls"] = self.totalCalls!
            }
            if self.valueAddedAdvanced != nil {
                map["valueAddedAdvanced"] = self.valueAddedAdvanced!
            }
            if self.valueAddedSummary != nil {
                map["valueAddedSummary"] = self.valueAddedSummary!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["api"] as? String {
                self.api = value
            }
            if let value = dict["billingQps"] as? Int32 {
                self.billingQps = value
            }
            if let value = dict["date"] as? String {
                self.date = value
            }
            if let value = dict["engineType"] as? String {
                self.engineType = value
            }
            if let value = dict["failedCalls"] as? Int32 {
                self.failedCalls = value
            }
            if let value = dict["ladderType"] as? String {
                self.ladderType = value
            }
            if let value = dict["mainAccountId"] as? String {
                self.mainAccountId = value
            }
            if let value = dict["subAccountId"] as? String {
                self.subAccountId = value
            }
            if let value = dict["successCalls"] as? Int32 {
                self.successCalls = value
            }
            if let value = dict["totalCalls"] as? Int32 {
                self.totalCalls = value
            }
            if let value = dict["valueAddedAdvanced"] as? Int32 {
                self.valueAddedAdvanced = value
            }
            if let value = dict["valueAddedSummary"] as? Int32 {
                self.valueAddedSummary = value
            }
        }
    }
    public var records: [GetIqsUsageResult.Records]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["records"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["records"] as? [Any?] {
            var tmp : [GetIqsUsageResult.Records] = []
            for v in value {
                if v != nil {
                    var model = GetIqsUsageResult.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
    }
}

public class GlobalPageItem : Tea.TeaModel {
    public var link: String?

    public var snippet: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.link != nil {
            map["link"] = self.link!
        }
        if self.snippet != nil {
            map["snippet"] = self.snippet!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["link"] as? String {
            self.link = value
        }
        if let value = dict["snippet"] as? String {
            self.snippet = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class GlobalQueryContext : Tea.TeaModel {
    public class OriginalQuery : Tea.TeaModel {
        public var page: String?

        public var query: String?

        public var timeRange: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.query != nil {
                map["query"] = self.query!
            }
            if self.timeRange != nil {
                map["timeRange"] = self.timeRange!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["page"] as? String {
                self.page = value
            }
            if let value = dict["query"] as? String {
                self.query = value
            }
            if let value = dict["timeRange"] as? String {
                self.timeRange = value
            }
        }
    }
    public var originalQuery: GlobalQueryContext.OriginalQuery?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.originalQuery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.originalQuery != nil {
            map["originalQuery"] = self.originalQuery?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["originalQuery"] as? [String: Any?] {
            var model = GlobalQueryContext.OriginalQuery()
            model.fromMap(value)
            self.originalQuery = model
        }
    }
}

public class GlobalSceneItem : Tea.TeaModel {
    public var detail: String?

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
        if self.detail != nil {
            map["detail"] = self.detail!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["detail"] as? String {
            self.detail = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class GlobalSearchInformation : Tea.TeaModel {
    public var searchTime: Int64?

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
        if self.searchTime != nil {
            map["searchTime"] = self.searchTime!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["searchTime"] as? Int64 {
            self.searchTime = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class GlobalSearchResult : Tea.TeaModel {
    public var pageItems: [GlobalPageItem]?

    public var queryContext: GlobalQueryContext?

    public var requestId: String?

    public var sceneItems: [GlobalSceneItem]?

    public var searchInformation: GlobalSearchInformation?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryContext?.validate()
        try self.searchInformation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageItems != nil {
            var tmp : [Any] = []
            for k in self.pageItems! {
                tmp.append(k.toMap())
            }
            map["pageItems"] = tmp
        }
        if self.queryContext != nil {
            map["queryContext"] = self.queryContext?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sceneItems != nil {
            var tmp : [Any] = []
            for k in self.sceneItems! {
                tmp.append(k.toMap())
            }
            map["sceneItems"] = tmp
        }
        if self.searchInformation != nil {
            map["searchInformation"] = self.searchInformation?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageItems"] as? [Any?] {
            var tmp : [GlobalPageItem] = []
            for v in value {
                if v != nil {
                    var model = GlobalPageItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pageItems = tmp
        }
        if let value = dict["queryContext"] as? [String: Any?] {
            var model = GlobalQueryContext()
            model.fromMap(value)
            self.queryContext = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sceneItems"] as? [Any?] {
            var tmp : [GlobalSceneItem] = []
            for v in value {
                if v != nil {
                    var model = GlobalSceneItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sceneItems = tmp
        }
        if let value = dict["searchInformation"] as? [String: Any?] {
            var model = GlobalSearchInformation()
            model.fromMap(value)
            self.searchInformation = model
        }
    }
}

public class IncludeImage : Tea.TeaModel {
    public var height: Int32?

    public var imageLink: String?

    public var width: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.height != nil {
            map["height"] = self.height!
        }
        if self.imageLink != nil {
            map["imageLink"] = self.imageLink!
        }
        if self.width != nil {
            map["width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["height"] as? Int32 {
            self.height = value
        }
        if let value = dict["imageLink"] as? String {
            self.imageLink = value
        }
        if let value = dict["width"] as? Int32 {
            self.width = value
        }
    }
}

public class QueryContext : Tea.TeaModel {
    public class OriginalQuery : Tea.TeaModel {
        public var industry: String?

        public var page: String?

        public var query: String?

        public var timeRange: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.industry != nil {
                map["industry"] = self.industry!
            }
            if self.page != nil {
                map["page"] = self.page!
            }
            if self.query != nil {
                map["query"] = self.query!
            }
            if self.timeRange != nil {
                map["timeRange"] = self.timeRange!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["industry"] as? String {
                self.industry = value
            }
            if let value = dict["page"] as? String {
                self.page = value
            }
            if let value = dict["query"] as? String {
                self.query = value
            }
            if let value = dict["timeRange"] as? String {
                self.timeRange = value
            }
        }
    }
    public class Rewrite : Tea.TeaModel {
        public var enabled: Bool?

        public var timeRange: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.timeRange != nil {
                map["timeRange"] = self.timeRange!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["enabled"] as? Bool {
                self.enabled = value
            }
            if let value = dict["timeRange"] as? String {
                self.timeRange = value
            }
        }
    }
    public var originalQuery: QueryContext.OriginalQuery?

    public var rewrite: QueryContext.Rewrite?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.originalQuery?.validate()
        try self.rewrite?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.originalQuery != nil {
            map["originalQuery"] = self.originalQuery?.toMap()
        }
        if self.rewrite != nil {
            map["rewrite"] = self.rewrite?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["originalQuery"] as? [String: Any?] {
            var model = QueryContext.OriginalQuery()
            model.fromMap(value)
            self.originalQuery = model
        }
        if let value = dict["rewrite"] as? [String: Any?] {
            var model = QueryContext.Rewrite()
            model.fromMap(value)
            self.rewrite = model
        }
    }
}

public class ReadPageBody : Tea.TeaModel {
    public class Readability : Tea.TeaModel {
        public var excludeAllImages: Bool?

        public var excludeAllLinks: Bool?

        public var excludedTags: [String]?

        public var readabilityMode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.excludeAllImages != nil {
                map["excludeAllImages"] = self.excludeAllImages!
            }
            if self.excludeAllLinks != nil {
                map["excludeAllLinks"] = self.excludeAllLinks!
            }
            if self.excludedTags != nil {
                map["excludedTags"] = self.excludedTags!
            }
            if self.readabilityMode != nil {
                map["readabilityMode"] = self.readabilityMode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["excludeAllImages"] as? Bool {
                self.excludeAllImages = value
            }
            if let value = dict["excludeAllLinks"] as? Bool {
                self.excludeAllLinks = value
            }
            if let value = dict["excludedTags"] as? [String] {
                self.excludedTags = value
            }
            if let value = dict["readabilityMode"] as? String {
                self.readabilityMode = value
            }
        }
    }
    public var formats: [String]?

    public var location: String?

    public var maxAge: Int32?

    public var pageTimeout: Int32?

    public var readability: ReadPageBody.Readability?

    public var timeout: Int32?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.readability?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.formats != nil {
            map["formats"] = self.formats!
        }
        if self.location != nil {
            map["location"] = self.location!
        }
        if self.maxAge != nil {
            map["maxAge"] = self.maxAge!
        }
        if self.pageTimeout != nil {
            map["pageTimeout"] = self.pageTimeout!
        }
        if self.readability != nil {
            map["readability"] = self.readability?.toMap()
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.url != nil {
            map["url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["formats"] as? [String] {
            self.formats = value
        }
        if let value = dict["location"] as? String {
            self.location = value
        }
        if let value = dict["maxAge"] as? Int32 {
            self.maxAge = value
        }
        if let value = dict["pageTimeout"] as? Int32 {
            self.pageTimeout = value
        }
        if let value = dict["readability"] as? [String: Any?] {
            var model = ReadPageBody.Readability()
            model.fromMap(value)
            self.readability = model
        }
        if let value = dict["timeout"] as? Int32 {
            self.timeout = value
        }
        if let value = dict["url"] as? String {
            self.url = value
        }
    }
}

public class ReadPageItem : Tea.TeaModel {
    public var errorMessage: String?

    public var html: String?

    public var markdown: String?

    public var rawHtml: String?

    public var statusCode: Int32?

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
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.html != nil {
            map["html"] = self.html!
        }
        if self.markdown != nil {
            map["markdown"] = self.markdown!
        }
        if self.rawHtml != nil {
            map["rawHtml"] = self.rawHtml!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.text != nil {
            map["text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["html"] as? String {
            self.html = value
        }
        if let value = dict["markdown"] as? String {
            self.markdown = value
        }
        if let value = dict["rawHtml"] as? String {
            self.rawHtml = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["text"] as? String {
            self.text = value
        }
    }
}

public class RequestContents : Tea.TeaModel {
    public var mainText: Bool?

    public var markdownText: Bool?

    public var rerankScore: Bool?

    public var richMainBody: Bool?

    public var summary: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mainText != nil {
            map["mainText"] = self.mainText!
        }
        if self.markdownText != nil {
            map["markdownText"] = self.markdownText!
        }
        if self.rerankScore != nil {
            map["rerankScore"] = self.rerankScore!
        }
        if self.richMainBody != nil {
            map["richMainBody"] = self.richMainBody!
        }
        if self.summary != nil {
            map["summary"] = self.summary!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["mainText"] as? Bool {
            self.mainText = value
        }
        if let value = dict["markdownText"] as? Bool {
            self.markdownText = value
        }
        if let value = dict["rerankScore"] as? Bool {
            self.rerankScore = value
        }
        if let value = dict["richMainBody"] as? Bool {
            self.richMainBody = value
        }
        if let value = dict["summary"] as? Bool {
            self.summary = value
        }
    }
}

public class SceneItem : Tea.TeaModel {
    public var detail: String?

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
        if self.detail != nil {
            map["detail"] = self.detail!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["detail"] as? String {
            self.detail = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class ScorePageItem : Tea.TeaModel {
    public var cardType: String?

    public var displayLink: String?

    public var hostAuthorityScore: Double?

    public var hostLogo: String?

    public var hostname: String?

    public var htmlSnippet: String?

    public var htmlTitle: String?

    public var images: [IncludeImage]?

    public var link: String?

    public var mainText: String?

    public var markdownText: String?

    public var mime: String?

    public var pageMap: [String: String]?

    public var publishTime: Int64?

    public var score: Double?

    public var siteLabel: String?

    public var snippet: String?

    public var summary: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cardType != nil {
            map["cardType"] = self.cardType!
        }
        if self.displayLink != nil {
            map["displayLink"] = self.displayLink!
        }
        if self.hostAuthorityScore != nil {
            map["hostAuthorityScore"] = self.hostAuthorityScore!
        }
        if self.hostLogo != nil {
            map["hostLogo"] = self.hostLogo!
        }
        if self.hostname != nil {
            map["hostname"] = self.hostname!
        }
        if self.htmlSnippet != nil {
            map["htmlSnippet"] = self.htmlSnippet!
        }
        if self.htmlTitle != nil {
            map["htmlTitle"] = self.htmlTitle!
        }
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["images"] = tmp
        }
        if self.link != nil {
            map["link"] = self.link!
        }
        if self.mainText != nil {
            map["mainText"] = self.mainText!
        }
        if self.markdownText != nil {
            map["markdownText"] = self.markdownText!
        }
        if self.mime != nil {
            map["mime"] = self.mime!
        }
        if self.pageMap != nil {
            map["pageMap"] = self.pageMap!
        }
        if self.publishTime != nil {
            map["publishTime"] = self.publishTime!
        }
        if self.score != nil {
            map["score"] = self.score!
        }
        if self.siteLabel != nil {
            map["siteLabel"] = self.siteLabel!
        }
        if self.snippet != nil {
            map["snippet"] = self.snippet!
        }
        if self.summary != nil {
            map["summary"] = self.summary!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cardType"] as? String {
            self.cardType = value
        }
        if let value = dict["displayLink"] as? String {
            self.displayLink = value
        }
        if let value = dict["hostAuthorityScore"] as? Double {
            self.hostAuthorityScore = value
        }
        if let value = dict["hostLogo"] as? String {
            self.hostLogo = value
        }
        if let value = dict["hostname"] as? String {
            self.hostname = value
        }
        if let value = dict["htmlSnippet"] as? String {
            self.htmlSnippet = value
        }
        if let value = dict["htmlTitle"] as? String {
            self.htmlTitle = value
        }
        if let value = dict["images"] as? [Any?] {
            var tmp : [IncludeImage] = []
            for v in value {
                if v != nil {
                    var model = IncludeImage()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.images = tmp
        }
        if let value = dict["link"] as? String {
            self.link = value
        }
        if let value = dict["mainText"] as? String {
            self.mainText = value
        }
        if let value = dict["markdownText"] as? String {
            self.markdownText = value
        }
        if let value = dict["mime"] as? String {
            self.mime = value
        }
        if let value = dict["pageMap"] as? [String: String] {
            self.pageMap = value
        }
        if let value = dict["publishTime"] as? Int64 {
            self.publishTime = value
        }
        if let value = dict["score"] as? Double {
            self.score = value
        }
        if let value = dict["siteLabel"] as? String {
            self.siteLabel = value
        }
        if let value = dict["snippet"] as? String {
            self.snippet = value
        }
        if let value = dict["summary"] as? String {
            self.summary = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class SearchCredits : Tea.TeaModel {
    public var genericTextSearch: Int32?

    public var liteAdvancedTextSearch: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.genericTextSearch != nil {
            map["genericTextSearch"] = self.genericTextSearch!
        }
        if self.liteAdvancedTextSearch != nil {
            map["liteAdvancedTextSearch"] = self.liteAdvancedTextSearch!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["genericTextSearch"] as? Int32 {
            self.genericTextSearch = value
        }
        if let value = dict["liteAdvancedTextSearch"] as? Int32 {
            self.liteAdvancedTextSearch = value
        }
    }
}

public class SearchInformation : Tea.TeaModel {
    public var searchTime: Int64?

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
        if self.searchTime != nil {
            map["searchTime"] = self.searchTime!
        }
        if self.total != nil {
            map["total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["searchTime"] as? Int64 {
            self.searchTime = value
        }
        if let value = dict["total"] as? Int64 {
            self.total = value
        }
    }
}

public class UnifiedCostCredits : Tea.TeaModel {
    public var search: SearchCredits?

    public var valueAdded: ValueAddedCredits?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.search?.validate()
        try self.valueAdded?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.search != nil {
            map["search"] = self.search?.toMap()
        }
        if self.valueAdded != nil {
            map["valueAdded"] = self.valueAdded?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["search"] as? [String: Any?] {
            var model = SearchCredits()
            model.fromMap(value)
            self.search = model
        }
        if let value = dict["valueAdded"] as? [String: Any?] {
            var model = ValueAddedCredits()
            model.fromMap(value)
            self.valueAdded = model
        }
    }
}

public class UnifiedOriginalQuery : Tea.TeaModel {
    public var query: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["timeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class UnifiedPageItem : Tea.TeaModel {
    public var hostAuthorityScore: Double?

    public var hostLogo: String?

    public var hostname: String?

    public var images: [String]?

    public var link: String?

    public var mainText: String?

    public var markdownText: String?

    public var publishedTime: String?

    public var rerankScore: Double?

    public var snippet: String?

    public var summary: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostAuthorityScore != nil {
            map["hostAuthorityScore"] = self.hostAuthorityScore!
        }
        if self.hostLogo != nil {
            map["hostLogo"] = self.hostLogo!
        }
        if self.hostname != nil {
            map["hostname"] = self.hostname!
        }
        if self.images != nil {
            map["images"] = self.images!
        }
        if self.link != nil {
            map["link"] = self.link!
        }
        if self.mainText != nil {
            map["mainText"] = self.mainText!
        }
        if self.markdownText != nil {
            map["markdownText"] = self.markdownText!
        }
        if self.publishedTime != nil {
            map["publishedTime"] = self.publishedTime!
        }
        if self.rerankScore != nil {
            map["rerankScore"] = self.rerankScore!
        }
        if self.snippet != nil {
            map["snippet"] = self.snippet!
        }
        if self.summary != nil {
            map["summary"] = self.summary!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["hostAuthorityScore"] as? Double {
            self.hostAuthorityScore = value
        }
        if let value = dict["hostLogo"] as? String {
            self.hostLogo = value
        }
        if let value = dict["hostname"] as? String {
            self.hostname = value
        }
        if let value = dict["images"] as? [String] {
            self.images = value
        }
        if let value = dict["link"] as? String {
            self.link = value
        }
        if let value = dict["mainText"] as? String {
            self.mainText = value
        }
        if let value = dict["markdownText"] as? String {
            self.markdownText = value
        }
        if let value = dict["publishedTime"] as? String {
            self.publishedTime = value
        }
        if let value = dict["rerankScore"] as? Double {
            self.rerankScore = value
        }
        if let value = dict["snippet"] as? String {
            self.snippet = value
        }
        if let value = dict["summary"] as? String {
            self.summary = value
        }
        if let value = dict["title"] as? String {
            self.title = value
        }
    }
}

public class UnifiedQueryContext : Tea.TeaModel {
    public var engineType: String?

    public var originalQuery: UnifiedOriginalQuery?

    public var rewrite: UnifiedRewrite?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.originalQuery?.validate()
        try self.rewrite?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.engineType != nil {
            map["engineType"] = self.engineType!
        }
        if self.originalQuery != nil {
            map["originalQuery"] = self.originalQuery?.toMap()
        }
        if self.rewrite != nil {
            map["rewrite"] = self.rewrite?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["engineType"] as? String {
            self.engineType = value
        }
        if let value = dict["originalQuery"] as? [String: Any?] {
            var model = UnifiedOriginalQuery()
            model.fromMap(value)
            self.originalQuery = model
        }
        if let value = dict["rewrite"] as? [String: Any?] {
            var model = UnifiedRewrite()
            model.fromMap(value)
            self.rewrite = model
        }
    }
}

public class UnifiedRewrite : Tea.TeaModel {
    public var enabled: Bool?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["enabled"] = self.enabled!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enabled"] as? Bool {
            self.enabled = value
        }
        if let value = dict["timeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class UnifiedSceneItem : Tea.TeaModel {
    public var detail: String?

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
        if self.detail != nil {
            map["detail"] = self.detail!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["detail"] as? String {
            self.detail = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class UnifiedSearchInformation : Tea.TeaModel {
    public var searchTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.searchTime != nil {
            map["searchTime"] = self.searchTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["searchTime"] as? Int64 {
            self.searchTime = value
        }
    }
}

public class UnifiedSearchInput : Tea.TeaModel {
    public var advancedParams: [String: Any]?

    public var category: String?

    public var contents: RequestContents?

    public var engineType: String?

    public var location: String?

    public var query: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.contents?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advancedParams != nil {
            map["advancedParams"] = self.advancedParams!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.contents != nil {
            map["contents"] = self.contents?.toMap()
        }
        if self.engineType != nil {
            map["engineType"] = self.engineType!
        }
        if self.location != nil {
            map["location"] = self.location!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["advancedParams"] as? [String: Any] {
            self.advancedParams = value
        }
        if let value = dict["category"] as? String {
            self.category = value
        }
        if let value = dict["contents"] as? [String: Any?] {
            var model = RequestContents()
            model.fromMap(value)
            self.contents = model
        }
        if let value = dict["engineType"] as? String {
            self.engineType = value
        }
        if let value = dict["location"] as? String {
            self.location = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["timeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class UnifiedSearchOutput : Tea.TeaModel {
    public var costCredits: UnifiedCostCredits?

    public var pageItems: [UnifiedPageItem]?

    public var queryContext: UnifiedQueryContext?

    public var requestId: String?

    public var sceneItems: [UnifiedSceneItem]?

    public var searchInformation: UnifiedSearchInformation?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.costCredits?.validate()
        try self.queryContext?.validate()
        try self.searchInformation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costCredits != nil {
            map["costCredits"] = self.costCredits?.toMap()
        }
        if self.pageItems != nil {
            var tmp : [Any] = []
            for k in self.pageItems! {
                tmp.append(k.toMap())
            }
            map["pageItems"] = tmp
        }
        if self.queryContext != nil {
            map["queryContext"] = self.queryContext?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sceneItems != nil {
            var tmp : [Any] = []
            for k in self.sceneItems! {
                tmp.append(k.toMap())
            }
            map["sceneItems"] = tmp
        }
        if self.searchInformation != nil {
            map["searchInformation"] = self.searchInformation?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["costCredits"] as? [String: Any?] {
            var model = UnifiedCostCredits()
            model.fromMap(value)
            self.costCredits = model
        }
        if let value = dict["pageItems"] as? [Any?] {
            var tmp : [UnifiedPageItem] = []
            for v in value {
                if v != nil {
                    var model = UnifiedPageItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pageItems = tmp
        }
        if let value = dict["queryContext"] as? [String: Any?] {
            var model = UnifiedQueryContext()
            model.fromMap(value)
            self.queryContext = model
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sceneItems"] as? [Any?] {
            var tmp : [UnifiedSceneItem] = []
            for v in value {
                if v != nil {
                    var model = UnifiedSceneItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sceneItems = tmp
        }
        if let value = dict["searchInformation"] as? [String: Any?] {
            var model = UnifiedSearchInformation()
            model.fromMap(value)
            self.searchInformation = model
        }
    }
}

public class ValueAddedCredits : Tea.TeaModel {
    public var advanced: Int32?

    public var summary: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advanced != nil {
            map["advanced"] = self.advanced!
        }
        if self.summary != nil {
            map["summary"] = self.summary!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["advanced"] as? Int32 {
            self.advanced = value
        }
        if let value = dict["summary"] as? Int32 {
            self.summary = value
        }
    }
}

public class WeiboItem : Tea.TeaModel {
    public var cardType: String?

    public var homepageLink: String?

    public var htmlSnippet: String?

    public var images: [String]?

    public var link: String?

    public var publishDisplayTime: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cardType != nil {
            map["cardType"] = self.cardType!
        }
        if self.homepageLink != nil {
            map["homepageLink"] = self.homepageLink!
        }
        if self.htmlSnippet != nil {
            map["htmlSnippet"] = self.htmlSnippet!
        }
        if self.images != nil {
            map["images"] = self.images!
        }
        if self.link != nil {
            map["link"] = self.link!
        }
        if self.publishDisplayTime != nil {
            map["publishDisplayTime"] = self.publishDisplayTime!
        }
        if self.username != nil {
            map["username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cardType"] as? String {
            self.cardType = value
        }
        if let value = dict["homepageLink"] as? String {
            self.homepageLink = value
        }
        if let value = dict["htmlSnippet"] as? String {
            self.htmlSnippet = value
        }
        if let value = dict["images"] as? [String] {
            self.images = value
        }
        if let value = dict["link"] as? String {
            self.link = value
        }
        if let value = dict["publishDisplayTime"] as? String {
            self.publishDisplayTime = value
        }
        if let value = dict["username"] as? String {
            self.username = value
        }
    }
}

public class AiSearchRequest : Tea.TeaModel {
    public var industry: String?

    public var page: Int32?

    public var query: String?

    public var sessionId: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.industry != nil {
            map["industry"] = self.industry!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["industry"] as? String {
            self.industry = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["timeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class AiSearchResponseBody : Tea.TeaModel {
    public class Header : Tea.TeaModel {
        public class QueryContext : Tea.TeaModel {
            public class OriginalQuery : Tea.TeaModel {
                public var industry: String?

                public var page: Int32?

                public var query: String?

                public var timeRange: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.industry != nil {
                        map["industry"] = self.industry!
                    }
                    if self.page != nil {
                        map["page"] = self.page!
                    }
                    if self.query != nil {
                        map["query"] = self.query!
                    }
                    if self.timeRange != nil {
                        map["timeRange"] = self.timeRange!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["industry"] as? String {
                        self.industry = value
                    }
                    if let value = dict["page"] as? Int32 {
                        self.page = value
                    }
                    if let value = dict["query"] as? String {
                        self.query = value
                    }
                    if let value = dict["timeRange"] as? String {
                        self.timeRange = value
                    }
                }
            }
            public class Rewrite : Tea.TeaModel {
                public var enabled: Bool?

                public var timeRange: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enabled != nil {
                        map["enabled"] = self.enabled!
                    }
                    if self.timeRange != nil {
                        map["timeRange"] = self.timeRange!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enabled"] as? Bool {
                        self.enabled = value
                    }
                    if let value = dict["timeRange"] as? String {
                        self.timeRange = value
                    }
                }
            }
            public var originalQuery: AiSearchResponseBody.Header.QueryContext.OriginalQuery?

            public var rewrite: AiSearchResponseBody.Header.QueryContext.Rewrite?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.originalQuery?.validate()
                try self.rewrite?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.originalQuery != nil {
                    map["originalQuery"] = self.originalQuery?.toMap()
                }
                if self.rewrite != nil {
                    map["rewrite"] = self.rewrite?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["originalQuery"] as? [String: Any?] {
                    var model = AiSearchResponseBody.Header.QueryContext.OriginalQuery()
                    model.fromMap(value)
                    self.originalQuery = model
                }
                if let value = dict["rewrite"] as? [String: Any?] {
                    var model = AiSearchResponseBody.Header.QueryContext.Rewrite()
                    model.fromMap(value)
                    self.rewrite = model
                }
            }
        }
        public var event: String?

        public var eventId: String?

        public var queryContext: AiSearchResponseBody.Header.QueryContext?

        public var responseTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.queryContext?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.event != nil {
                map["event"] = self.event!
            }
            if self.eventId != nil {
                map["eventId"] = self.eventId!
            }
            if self.queryContext != nil {
                map["queryContext"] = self.queryContext?.toMap()
            }
            if self.responseTime != nil {
                map["responseTime"] = self.responseTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["event"] as? String {
                self.event = value
            }
            if let value = dict["eventId"] as? String {
                self.eventId = value
            }
            if let value = dict["queryContext"] as? [String: Any?] {
                var model = AiSearchResponseBody.Header.QueryContext()
                model.fromMap(value)
                self.queryContext = model
            }
            if let value = dict["responseTime"] as? Int64 {
                self.responseTime = value
            }
        }
    }
    public var header: AiSearchResponseBody.Header?

    public var payload: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.header?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.header != nil {
            map["header"] = self.header?.toMap()
        }
        if self.payload != nil {
            map["payload"] = self.payload!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["header"] as? [String: Any?] {
            var model = AiSearchResponseBody.Header()
            model.fromMap(value)
            self.header = model
        }
        if let value = dict["payload"] as? String {
            self.payload = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class AiSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AiSearchResponseBody?

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
            var model = AiSearchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenericAdvancedSearchRequest : Tea.TeaModel {
    public var industry: String?

    public var query: String?

    public var sessionId: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.industry != nil {
            map["industry"] = self.industry!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["industry"] as? String {
            self.industry = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["timeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class GenericAdvancedSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenericSearchResult?

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
            var model = GenericSearchResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenericSearchRequest : Tea.TeaModel {
    public var enableRerank: Bool?

    public var industry: String?

    public var page: Int32?

    public var query: String?

    public var returnMainText: Bool?

    public var returnMarkdownText: Bool?

    public var returnRichMainBody: Bool?

    public var returnSummary: Bool?

    public var sessionId: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableRerank != nil {
            map["enableRerank"] = self.enableRerank!
        }
        if self.industry != nil {
            map["industry"] = self.industry!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.returnMainText != nil {
            map["returnMainText"] = self.returnMainText!
        }
        if self.returnMarkdownText != nil {
            map["returnMarkdownText"] = self.returnMarkdownText!
        }
        if self.returnRichMainBody != nil {
            map["returnRichMainBody"] = self.returnRichMainBody!
        }
        if self.returnSummary != nil {
            map["returnSummary"] = self.returnSummary!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["enableRerank"] as? Bool {
            self.enableRerank = value
        }
        if let value = dict["industry"] as? String {
            self.industry = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["returnMainText"] as? Bool {
            self.returnMainText = value
        }
        if let value = dict["returnMarkdownText"] as? Bool {
            self.returnMarkdownText = value
        }
        if let value = dict["returnRichMainBody"] as? Bool {
            self.returnRichMainBody = value
        }
        if let value = dict["returnSummary"] as? Bool {
            self.returnSummary = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["timeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class GenericSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenericSearchResult?

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
            var model = GenericSearchResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIqsUsageRequest : Tea.TeaModel {
    public var endDate: String?

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
            map["endDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["startDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["endDate"] as? String {
            self.endDate = value
        }
        if let value = dict["startDate"] as? String {
            self.startDate = value
        }
    }
}

public class GetIqsUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIqsUsageResult?

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
            var model = GetIqsUsageResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GlobalSearchRequest : Tea.TeaModel {
    public var page: Int32?

    public var pageSize: Int32?

    public var query: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.timeRange != nil {
            map["timeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["timeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class GlobalSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GlobalSearchResult?

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
            var model = GlobalSearchResult()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadPageBasicRequest : Tea.TeaModel {
    public var body: ReadPageBody?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReadPageBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadPageBasicResponseBody : Tea.TeaModel {
    public var data: ReadPageItem?

    public var errorCode: String?

    public var errorMessage: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["errorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["errorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = ReadPageItem()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["errorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ReadPageBasicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadPageBasicResponseBody?

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
            var model = ReadPageBasicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnifiedSearchRequest : Tea.TeaModel {
    public var body: UnifiedSearchInput?

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
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnifiedSearchInput()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnifiedSearchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnifiedSearchOutput?

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
            var model = UnifiedSearchOutput()
            model.fromMap(value)
            self.body = model
        }
    }
}
