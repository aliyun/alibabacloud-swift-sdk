import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeProjectsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var query: String?

    public var sortBy: String?

    public var sortOrder: String?

    public override init() {
        super.init()
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
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.sortBy != nil {
            map["sortBy"] = self.sortBy!
        }
        if self.sortOrder != nil {
            map["sortOrder"] = self.sortOrder!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["sortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["sortOrder"] as? String {
            self.sortOrder = value
        }
    }
}

public class DescribeProjectsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Engines : Tea.TeaModel {
            public var sast: Bool?

            public var sca: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.sast != nil {
                    map["sast"] = self.sast!
                }
                if self.sca != nil {
                    map["sca"] = self.sca!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["sast"] as? Bool {
                    self.sast = value
                }
                if let value = dict["sca"] as? Bool {
                    self.sca = value
                }
            }
        }
        public class Source : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["type"] as? String {
                    self.type = value
                }
            }
        }
        public var configRevision: Int64?

        public var createdAt: String?

        public var createdBy: String?

        public var description_: String?

        public var engines: DescribeProjectsResponseBody.Items.Engines?

        public var id: Int64?

        public var instructionPrompt: String?

        public var lastScanTime: String?

        public var name: String?

        public var source: DescribeProjectsResponseBody.Items.Source?

        public var updatedAt: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.engines?.validate()
            try self.source?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configRevision != nil {
                map["configRevision"] = self.configRevision!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.createdBy != nil {
                map["createdBy"] = self.createdBy!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.engines != nil {
                map["engines"] = self.engines?.toMap()
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.instructionPrompt != nil {
                map["instructionPrompt"] = self.instructionPrompt!
            }
            if self.lastScanTime != nil {
                map["lastScanTime"] = self.lastScanTime!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.source != nil {
                map["source"] = self.source?.toMap()
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["configRevision"] as? Int64 {
                self.configRevision = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["createdBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["engines"] as? [String: Any?] {
                var model = DescribeProjectsResponseBody.Items.Engines()
                model.fromMap(value)
                self.engines = model
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["instructionPrompt"] as? String {
                self.instructionPrompt = value
            }
            if let value = dict["lastScanTime"] as? String {
                self.lastScanTime = value
            }
            if let value = dict["name"] as? String {
                self.name = value
            }
            if let value = dict["source"] as? [String: Any?] {
                var model = DescribeProjectsResponseBody.Items.Source()
                model.fromMap(value)
                self.source = model
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
        }
    }
    public var items: [DescribeProjectsResponseBody.Items]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [DescribeProjectsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeProjectsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["maxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProjectsResponseBody?

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
            var model = DescribeProjectsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeScanResultsByEngineRequest : Tea.TeaModel {
    public var baselineState: String?

    public var lang: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var packageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baselineState != nil {
            map["baselineState"] = self.baselineState!
        }
        if self.lang != nil {
            map["lang"] = self.lang!
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.packageName != nil {
            map["packageName"] = self.packageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["baselineState"] as? String {
            self.baselineState = value
        }
        if let value = dict["lang"] as? String {
            self.lang = value
        }
        if let value = dict["maxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["packageName"] as? String {
            self.packageName = value
        }
    }
}

public class DescribeScanResultsByEngineResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ScaComponent : Tea.TeaModel {
            public class CveDetails : Tea.TeaModel {
                public var cveId: String?

                public var cvss: Double?

                public var cvssVersion: String?

                public var description_: String?

                public var references: [String]?

                public var severity: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cveId != nil {
                        map["cveId"] = self.cveId!
                    }
                    if self.cvss != nil {
                        map["cvss"] = self.cvss!
                    }
                    if self.cvssVersion != nil {
                        map["cvssVersion"] = self.cvssVersion!
                    }
                    if self.description_ != nil {
                        map["description"] = self.description_!
                    }
                    if self.references != nil {
                        map["references"] = self.references!
                    }
                    if self.severity != nil {
                        map["severity"] = self.severity!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["cveId"] as? String {
                        self.cveId = value
                    }
                    if let value = dict["cvss"] as? Double {
                        self.cvss = value
                    }
                    if let value = dict["cvssVersion"] as? String {
                        self.cvssVersion = value
                    }
                    if let value = dict["description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["references"] as? [String] {
                        self.references = value
                    }
                    if let value = dict["severity"] as? String {
                        self.severity = value
                    }
                }
            }
            public var cveCount: Int64?

            public var cveDetails: [DescribeScanResultsByEngineResponseBody.Items.ScaComponent.CveDetails]?

            public var introPaths: [String]?

            public var isDirect: Bool?

            public var packageName: String?

            public var remediation: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cveCount != nil {
                    map["cveCount"] = self.cveCount!
                }
                if self.cveDetails != nil {
                    var tmp : [Any] = []
                    for k in self.cveDetails! {
                        tmp.append(k.toMap())
                    }
                    map["cveDetails"] = tmp
                }
                if self.introPaths != nil {
                    map["introPaths"] = self.introPaths!
                }
                if self.isDirect != nil {
                    map["isDirect"] = self.isDirect!
                }
                if self.packageName != nil {
                    map["packageName"] = self.packageName!
                }
                if self.remediation != nil {
                    map["remediation"] = self.remediation!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["cveCount"] as? Int64 {
                    self.cveCount = value
                }
                if let value = dict["cveDetails"] as? [Any?] {
                    var tmp : [DescribeScanResultsByEngineResponseBody.Items.ScaComponent.CveDetails] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeScanResultsByEngineResponseBody.Items.ScaComponent.CveDetails()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.cveDetails = tmp
                }
                if let value = dict["introPaths"] as? [String] {
                    self.introPaths = value
                }
                if let value = dict["isDirect"] as? Bool {
                    self.isDirect = value
                }
                if let value = dict["packageName"] as? String {
                    self.packageName = value
                }
                if let value = dict["remediation"] as? String {
                    self.remediation = value
                }
                if let value = dict["version"] as? String {
                    self.version = value
                }
            }
        }
        public class TaintFlow : Tea.TeaModel {
            public var code: String?

            public var file: String?

            public var kind: String?

            public var line: Int32?

            public var note: String?

            public var step: Int32?

            public override init() {
                super.init()
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
                if self.file != nil {
                    map["file"] = self.file!
                }
                if self.kind != nil {
                    map["kind"] = self.kind!
                }
                if self.line != nil {
                    map["line"] = self.line!
                }
                if self.note != nil {
                    map["note"] = self.note!
                }
                if self.step != nil {
                    map["step"] = self.step!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["code"] as? String {
                    self.code = value
                }
                if let value = dict["file"] as? String {
                    self.file = value
                }
                if let value = dict["kind"] as? String {
                    self.kind = value
                }
                if let value = dict["line"] as? Int32 {
                    self.line = value
                }
                if let value = dict["note"] as? String {
                    self.note = value
                }
                if let value = dict["step"] as? Int32 {
                    self.step = value
                }
            }
        }
        public var baselineState: String?

        public var category: String?

        public var codeSnippet: String?

        public var confidence: Double?

        public var createdAt: String?

        public var cweId: String?

        public var description_: String?

        public var endLine: Int64?

        public var filePath: String?

        public var id: Int64?

        public var itemSummary: String?

        public var owaspCategory: String?

        public var projectName: String?

        public var remediationCodeExample: String?

        public var remediationSuggestion: String?

        public var ruleId: String?

        public var scaComponent: DescribeScanResultsByEngineResponseBody.Items.ScaComponent?

        public var scanId: Int64?

        public var severity: String?

        public var source: String?

        public var startLine: Int64?

        public var status: String?

        public var taintFlow: [DescribeScanResultsByEngineResponseBody.Items.TaintFlow]?

        public var taintFlowSummary: String?

        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.scaComponent?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.baselineState != nil {
                map["baselineState"] = self.baselineState!
            }
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.codeSnippet != nil {
                map["codeSnippet"] = self.codeSnippet!
            }
            if self.confidence != nil {
                map["confidence"] = self.confidence!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.cweId != nil {
                map["cweId"] = self.cweId!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.endLine != nil {
                map["endLine"] = self.endLine!
            }
            if self.filePath != nil {
                map["filePath"] = self.filePath!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.itemSummary != nil {
                map["itemSummary"] = self.itemSummary!
            }
            if self.owaspCategory != nil {
                map["owaspCategory"] = self.owaspCategory!
            }
            if self.projectName != nil {
                map["projectName"] = self.projectName!
            }
            if self.remediationCodeExample != nil {
                map["remediationCodeExample"] = self.remediationCodeExample!
            }
            if self.remediationSuggestion != nil {
                map["remediationSuggestion"] = self.remediationSuggestion!
            }
            if self.ruleId != nil {
                map["ruleId"] = self.ruleId!
            }
            if self.scaComponent != nil {
                map["scaComponent"] = self.scaComponent?.toMap()
            }
            if self.scanId != nil {
                map["scanId"] = self.scanId!
            }
            if self.severity != nil {
                map["severity"] = self.severity!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.startLine != nil {
                map["startLine"] = self.startLine!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taintFlow != nil {
                var tmp : [Any] = []
                for k in self.taintFlow! {
                    tmp.append(k.toMap())
                }
                map["taintFlow"] = tmp
            }
            if self.taintFlowSummary != nil {
                map["taintFlowSummary"] = self.taintFlowSummary!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["baselineState"] as? String {
                self.baselineState = value
            }
            if let value = dict["category"] as? String {
                self.category = value
            }
            if let value = dict["codeSnippet"] as? String {
                self.codeSnippet = value
            }
            if let value = dict["confidence"] as? Double {
                self.confidence = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["cweId"] as? String {
                self.cweId = value
            }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["endLine"] as? Int64 {
                self.endLine = value
            }
            if let value = dict["filePath"] as? String {
                self.filePath = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["itemSummary"] as? String {
                self.itemSummary = value
            }
            if let value = dict["owaspCategory"] as? String {
                self.owaspCategory = value
            }
            if let value = dict["projectName"] as? String {
                self.projectName = value
            }
            if let value = dict["remediationCodeExample"] as? String {
                self.remediationCodeExample = value
            }
            if let value = dict["remediationSuggestion"] as? String {
                self.remediationSuggestion = value
            }
            if let value = dict["ruleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["scaComponent"] as? [String: Any?] {
                var model = DescribeScanResultsByEngineResponseBody.Items.ScaComponent()
                model.fromMap(value)
                self.scaComponent = model
            }
            if let value = dict["scanId"] as? Int64 {
                self.scanId = value
            }
            if let value = dict["severity"] as? String {
                self.severity = value
            }
            if let value = dict["source"] as? String {
                self.source = value
            }
            if let value = dict["startLine"] as? Int64 {
                self.startLine = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taintFlow"] as? [Any?] {
                var tmp : [DescribeScanResultsByEngineResponseBody.Items.TaintFlow] = []
                for v in value {
                    if v != nil {
                        var model = DescribeScanResultsByEngineResponseBody.Items.TaintFlow()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taintFlow = tmp
            }
            if let value = dict["taintFlowSummary"] as? String {
                self.taintFlowSummary = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
        }
    }
    public var engine: String?

    public var items: [DescribeScanResultsByEngineResponseBody.Items]?

    public var maxResults: Int64?

    public var nextToken: String?

    public var projectId: Int64?

    public var requestId: String?

    public var scanId: Int64?

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
        if self.engine != nil {
            map["engine"] = self.engine!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["nextToken"] = self.nextToken!
        }
        if self.projectId != nil {
            map["projectId"] = self.projectId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.scanId != nil {
            map["scanId"] = self.scanId!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["engine"] as? String {
            self.engine = value
        }
        if let value = dict["items"] as? [Any?] {
            var tmp : [DescribeScanResultsByEngineResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeScanResultsByEngineResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["maxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["projectId"] as? Int64 {
            self.projectId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["scanId"] as? Int64 {
            self.scanId = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeScanResultsByEngineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScanResultsByEngineResponseBody?

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
            var model = DescribeScanResultsByEngineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeScansRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var status: String?

    public var taskName: String?

    public override init() {
        super.init()
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
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["maxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["status"] as? String {
            self.status = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
    }
}

public class DescribeScansResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class EngineSnapshot : Tea.TeaModel {
            public var sast: Bool?

            public var sca: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.sast != nil {
                    map["sast"] = self.sast!
                }
                if self.sca != nil {
                    map["sca"] = self.sca!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["sast"] as? Bool {
                    self.sast = value
                }
                if let value = dict["sca"] as? Bool {
                    self.sca = value
                }
            }
        }
        public class ScanMetrics : Tea.TeaModel {
            public var credit: Double?

            public var fileCount: Int64?

            public var linesOfCode: Int64?

            public var tokenTotal: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.credit != nil {
                    map["credit"] = self.credit!
                }
                if self.fileCount != nil {
                    map["fileCount"] = self.fileCount!
                }
                if self.linesOfCode != nil {
                    map["linesOfCode"] = self.linesOfCode!
                }
                if self.tokenTotal != nil {
                    map["tokenTotal"] = self.tokenTotal!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["credit"] as? Double {
                    self.credit = value
                }
                if let value = dict["fileCount"] as? Int64 {
                    self.fileCount = value
                }
                if let value = dict["linesOfCode"] as? Int64 {
                    self.linesOfCode = value
                }
                if let value = dict["tokenTotal"] as? Int64 {
                    self.tokenTotal = value
                }
            }
        }
        public var codeBundleId: Int64?

        public var createdAt: String?

        public var createdBy: String?

        public var currentPhase: String?

        public var engineSnapshot: DescribeScansResponseBody.Items.EngineSnapshot?

        public var finishedAt: String?

        public var id: Int64?

        public var kind: String?

        public var projectId: Int64?

        public var scanMetrics: DescribeScansResponseBody.Items.ScanMetrics?

        public var scanProgress: Int64?

        public var startedAt: String?

        public var status: String?

        public var taskName: String?

        public var updatedAt: String?

        public var workerId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.engineSnapshot?.validate()
            try self.scanMetrics?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeBundleId != nil {
                map["codeBundleId"] = self.codeBundleId!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.createdBy != nil {
                map["createdBy"] = self.createdBy!
            }
            if self.currentPhase != nil {
                map["currentPhase"] = self.currentPhase!
            }
            if self.engineSnapshot != nil {
                map["engineSnapshot"] = self.engineSnapshot?.toMap()
            }
            if self.finishedAt != nil {
                map["finishedAt"] = self.finishedAt!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.kind != nil {
                map["kind"] = self.kind!
            }
            if self.projectId != nil {
                map["projectId"] = self.projectId!
            }
            if self.scanMetrics != nil {
                map["scanMetrics"] = self.scanMetrics?.toMap()
            }
            if self.scanProgress != nil {
                map["scanProgress"] = self.scanProgress!
            }
            if self.startedAt != nil {
                map["startedAt"] = self.startedAt!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskName != nil {
                map["taskName"] = self.taskName!
            }
            if self.updatedAt != nil {
                map["updatedAt"] = self.updatedAt!
            }
            if self.workerId != nil {
                map["workerId"] = self.workerId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["codeBundleId"] as? Int64 {
                self.codeBundleId = value
            }
            if let value = dict["createdAt"] as? String {
                self.createdAt = value
            }
            if let value = dict["createdBy"] as? String {
                self.createdBy = value
            }
            if let value = dict["currentPhase"] as? String {
                self.currentPhase = value
            }
            if let value = dict["engineSnapshot"] as? [String: Any?] {
                var model = DescribeScansResponseBody.Items.EngineSnapshot()
                model.fromMap(value)
                self.engineSnapshot = model
            }
            if let value = dict["finishedAt"] as? String {
                self.finishedAt = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["kind"] as? String {
                self.kind = value
            }
            if let value = dict["projectId"] as? Int64 {
                self.projectId = value
            }
            if let value = dict["scanMetrics"] as? [String: Any?] {
                var model = DescribeScansResponseBody.Items.ScanMetrics()
                model.fromMap(value)
                self.scanMetrics = model
            }
            if let value = dict["scanProgress"] as? Int64 {
                self.scanProgress = value
            }
            if let value = dict["startedAt"] as? String {
                self.startedAt = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskName"] as? String {
                self.taskName = value
            }
            if let value = dict["updatedAt"] as? String {
                self.updatedAt = value
            }
            if let value = dict["workerId"] as? String {
                self.workerId = value
            }
        }
    }
    public var items: [DescribeScansResponseBody.Items]?

    public var maxResults: Int64?

    public var nextToken: String?

    public var requestId: String?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["items"] = tmp
        }
        if self.maxResults != nil {
            map["maxResults"] = self.maxResults!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["items"] as? [Any?] {
            var tmp : [DescribeScansResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeScansResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["maxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["nextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["totalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeScansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScansResponseBody?

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
            var model = DescribeScansResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
