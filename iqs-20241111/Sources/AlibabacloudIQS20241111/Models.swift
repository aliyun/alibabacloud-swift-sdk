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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("card") {
            self.card = dict["card"] as! String
        }
        if dict.keys.contains("cardQuery") {
            self.cardQuery = dict["cardQuery"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("searchEngine") {
            self.searchEngine = dict["searchEngine"] as! String
        }
        if dict.keys.contains("searchPlan") {
            self.searchPlan = dict["searchPlan"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("timeRange") {
            self.timeRange = dict["timeRange"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageItems") {
            var tmp : [ScorePageItem] = []
            for v in dict["pageItems"] as! [Any] {
                var model = ScorePageItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pageItems = tmp
        }
        if dict.keys.contains("queryContext") {
            var model = QueryContext()
            model.fromMap(dict["queryContext"] as! [String: Any])
            self.queryContext = model
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sceneItems") {
            var tmp : [SceneItem] = []
            for v in dict["sceneItems"] as! [Any] {
                var model = SceneItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sceneItems = tmp
        }
        if dict.keys.contains("searchInformation") {
            var model = SearchInformation()
            model.fromMap(dict["searchInformation"] as! [String: Any])
            self.searchInformation = model
        }
        if dict.keys.contains("weiboItems") {
            var tmp : [WeiboItem] = []
            for v in dict["weiboItems"] as! [Any] {
                var model = WeiboItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.weiboItems = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("height") {
            self.height = dict["height"] as! Int32
        }
        if dict.keys.contains("imageLink") {
            self.imageLink = dict["imageLink"] as! String
        }
        if dict.keys.contains("width") {
            self.width = dict["width"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("industry") {
                self.industry = dict["industry"] as! String
            }
            if dict.keys.contains("page") {
                self.page = dict["page"] as! String
            }
            if dict.keys.contains("query") {
                self.query = dict["query"] as! String
            }
            if dict.keys.contains("timeRange") {
                self.timeRange = dict["timeRange"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enabled") {
                self.enabled = dict["enabled"] as! Bool
            }
            if dict.keys.contains("timeRange") {
                self.timeRange = dict["timeRange"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("originalQuery") {
            var model = QueryContext.OriginalQuery()
            model.fromMap(dict["originalQuery"] as! [String: Any])
            self.originalQuery = model
        }
        if dict.keys.contains("rewrite") {
            var model = QueryContext.Rewrite()
            model.fromMap(dict["rewrite"] as! [String: Any])
            self.rewrite = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("detail") {
            self.detail = dict["detail"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class ScorePageItem : Tea.TeaModel {
    public var cardType: String?

    public var displayLink: String?

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
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cardType") {
            self.cardType = dict["cardType"] as! String
        }
        if dict.keys.contains("displayLink") {
            self.displayLink = dict["displayLink"] as! String
        }
        if dict.keys.contains("hostLogo") {
            self.hostLogo = dict["hostLogo"] as! String
        }
        if dict.keys.contains("hostname") {
            self.hostname = dict["hostname"] as! String
        }
        if dict.keys.contains("htmlSnippet") {
            self.htmlSnippet = dict["htmlSnippet"] as! String
        }
        if dict.keys.contains("htmlTitle") {
            self.htmlTitle = dict["htmlTitle"] as! String
        }
        if dict.keys.contains("images") {
            var tmp : [IncludeImage] = []
            for v in dict["images"] as! [Any] {
                var model = IncludeImage()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.images = tmp
        }
        if dict.keys.contains("link") {
            self.link = dict["link"] as! String
        }
        if dict.keys.contains("mainText") {
            self.mainText = dict["mainText"] as! String
        }
        if dict.keys.contains("markdownText") {
            self.markdownText = dict["markdownText"] as! String
        }
        if dict.keys.contains("mime") {
            self.mime = dict["mime"] as! String
        }
        if dict.keys.contains("pageMap") {
            self.pageMap = dict["pageMap"] as! [String: String]
        }
        if dict.keys.contains("publishTime") {
            self.publishTime = dict["publishTime"] as! Int64
        }
        if dict.keys.contains("score") {
            self.score = dict["score"] as! Double
        }
        if dict.keys.contains("siteLabel") {
            self.siteLabel = dict["siteLabel"] as! String
        }
        if dict.keys.contains("snippet") {
            self.snippet = dict["snippet"] as! String
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("searchTime") {
            self.searchTime = dict["searchTime"] as! Int64
        }
        if dict.keys.contains("total") {
            self.total = dict["total"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cardType") {
            self.cardType = dict["cardType"] as! String
        }
        if dict.keys.contains("homepageLink") {
            self.homepageLink = dict["homepageLink"] as! String
        }
        if dict.keys.contains("htmlSnippet") {
            self.htmlSnippet = dict["htmlSnippet"] as! String
        }
        if dict.keys.contains("images") {
            self.images = dict["images"] as! [String]
        }
        if dict.keys.contains("link") {
            self.link = dict["link"] as! String
        }
        if dict.keys.contains("publishDisplayTime") {
            self.publishDisplayTime = dict["publishDisplayTime"] as! String
        }
        if dict.keys.contains("username") {
            self.username = dict["username"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("industry") {
            self.industry = dict["industry"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("timeRange") {
            self.timeRange = dict["timeRange"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("industry") {
                        self.industry = dict["industry"] as! String
                    }
                    if dict.keys.contains("page") {
                        self.page = dict["page"] as! Int32
                    }
                    if dict.keys.contains("query") {
                        self.query = dict["query"] as! String
                    }
                    if dict.keys.contains("timeRange") {
                        self.timeRange = dict["timeRange"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("enabled") {
                        self.enabled = dict["enabled"] as! Bool
                    }
                    if dict.keys.contains("timeRange") {
                        self.timeRange = dict["timeRange"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("originalQuery") {
                    var model = AiSearchResponseBody.Header.QueryContext.OriginalQuery()
                    model.fromMap(dict["originalQuery"] as! [String: Any])
                    self.originalQuery = model
                }
                if dict.keys.contains("rewrite") {
                    var model = AiSearchResponseBody.Header.QueryContext.Rewrite()
                    model.fromMap(dict["rewrite"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("event") {
                self.event = dict["event"] as! String
            }
            if dict.keys.contains("eventId") {
                self.eventId = dict["eventId"] as! String
            }
            if dict.keys.contains("queryContext") {
                var model = AiSearchResponseBody.Header.QueryContext()
                model.fromMap(dict["queryContext"] as! [String: Any])
                self.queryContext = model
            }
            if dict.keys.contains("responseTime") {
                self.responseTime = dict["responseTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("header") {
            var model = AiSearchResponseBody.Header()
            model.fromMap(dict["header"] as! [String: Any])
            self.header = model
        }
        if dict.keys.contains("payload") {
            self.payload = dict["payload"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AiSearchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("industry") {
            self.industry = dict["industry"] as! String
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("timeRange") {
            self.timeRange = dict["timeRange"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenericSearchResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenericSearchRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("industry") {
            self.industry = dict["industry"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("timeRange") {
            self.timeRange = dict["timeRange"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenericSearchResult()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
