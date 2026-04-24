import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class QuerySuccessIcpDataRequest : Tea.TeaModel {
    public var caller: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caller != nil {
            map["Caller"] = self.caller!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Caller"] as? String {
            self.caller = value
        }
    }
}

public class QuerySuccessIcpDataResponseBody : Tea.TeaModel {
    public class BaSuccessDataWithRiskList : Tea.TeaModel {
        public class AppList : Tea.TeaModel {
            public var appName: String?

            public var appRecordNum: String?

            public var domainList: [String]?

            public var responsiblePersonName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appRecordNum != nil {
                    map["AppRecordNum"] = self.appRecordNum!
                }
                if self.domainList != nil {
                    map["DomainList"] = self.domainList!
                }
                if self.responsiblePersonName != nil {
                    map["ResponsiblePersonName"] = self.responsiblePersonName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppName"] as? String {
                    self.appName = value
                }
                if let value = dict["AppRecordNum"] as? String {
                    self.appRecordNum = value
                }
                if let value = dict["DomainList"] as? [String] {
                    self.domainList = value
                }
                if let value = dict["ResponsiblePersonName"] as? String {
                    self.responsiblePersonName = value
                }
            }
        }
        public class RiskList : Tea.TeaModel {
            public class RiskDetailList : Tea.TeaModel {
                public var rectifySuggestList: [String]?

                public var riskSource: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.rectifySuggestList != nil {
                        map["RectifySuggestList"] = self.rectifySuggestList!
                    }
                    if self.riskSource != nil {
                        map["RiskSource"] = self.riskSource!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RectifySuggestList"] as? [String] {
                        self.rectifySuggestList = value
                    }
                    if let value = dict["RiskSource"] as? String {
                        self.riskSource = value
                    }
                }
            }
            public var deadLine: String?

            public var riskDetailList: [QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList.RiskList.RiskDetailList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deadLine != nil {
                    map["DeadLine"] = self.deadLine!
                }
                if self.riskDetailList != nil {
                    var tmp : [Any] = []
                    for k in self.riskDetailList! {
                        tmp.append(k.toMap())
                    }
                    map["RiskDetailList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeadLine"] as? String {
                    self.deadLine = value
                }
                if let value = dict["RiskDetailList"] as? [Any?] {
                    var tmp : [QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList.RiskList.RiskDetailList] = []
                    for v in value {
                        if v != nil {
                            var model = QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList.RiskList.RiskDetailList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.riskDetailList = tmp
                }
            }
        }
        public class WebsiteList : Tea.TeaModel {
            public var domainList: [String]?

            public var responsiblePersonName: String?

            public var siteName: String?

            public var siteRecordNum: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domainList != nil {
                    map["DomainList"] = self.domainList!
                }
                if self.responsiblePersonName != nil {
                    map["ResponsiblePersonName"] = self.responsiblePersonName!
                }
                if self.siteName != nil {
                    map["SiteName"] = self.siteName!
                }
                if self.siteRecordNum != nil {
                    map["SiteRecordNum"] = self.siteRecordNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DomainList"] as? [String] {
                    self.domainList = value
                }
                if let value = dict["ResponsiblePersonName"] as? String {
                    self.responsiblePersonName = value
                }
                if let value = dict["SiteName"] as? String {
                    self.siteName = value
                }
                if let value = dict["SiteRecordNum"] as? String {
                    self.siteRecordNum = value
                }
            }
        }
        public var appList: [QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList.AppList]?

        public var icpNumber: String?

        public var organizersName: String?

        public var organizersNature: String?

        public var responsiblePersonName: String?

        public var riskList: [QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList.RiskList]?

        public var websiteList: [QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList.WebsiteList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appList != nil {
                var tmp : [Any] = []
                for k in self.appList! {
                    tmp.append(k.toMap())
                }
                map["AppList"] = tmp
            }
            if self.icpNumber != nil {
                map["IcpNumber"] = self.icpNumber!
            }
            if self.organizersName != nil {
                map["OrganizersName"] = self.organizersName!
            }
            if self.organizersNature != nil {
                map["OrganizersNature"] = self.organizersNature!
            }
            if self.responsiblePersonName != nil {
                map["ResponsiblePersonName"] = self.responsiblePersonName!
            }
            if self.riskList != nil {
                var tmp : [Any] = []
                for k in self.riskList! {
                    tmp.append(k.toMap())
                }
                map["RiskList"] = tmp
            }
            if self.websiteList != nil {
                var tmp : [Any] = []
                for k in self.websiteList! {
                    tmp.append(k.toMap())
                }
                map["WebsiteList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppList"] as? [Any?] {
                var tmp : [QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList.AppList] = []
                for v in value {
                    if v != nil {
                        var model = QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList.AppList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.appList = tmp
            }
            if let value = dict["IcpNumber"] as? String {
                self.icpNumber = value
            }
            if let value = dict["OrganizersName"] as? String {
                self.organizersName = value
            }
            if let value = dict["OrganizersNature"] as? String {
                self.organizersNature = value
            }
            if let value = dict["ResponsiblePersonName"] as? String {
                self.responsiblePersonName = value
            }
            if let value = dict["RiskList"] as? [Any?] {
                var tmp : [QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList.RiskList] = []
                for v in value {
                    if v != nil {
                        var model = QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList.RiskList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.riskList = tmp
            }
            if let value = dict["WebsiteList"] as? [Any?] {
                var tmp : [QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList.WebsiteList] = []
                for v in value {
                    if v != nil {
                        var model = QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList.WebsiteList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.websiteList = tmp
            }
        }
    }
    public var baSuccessDataWithRiskList: [QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList]?

    public var errorCode: Int32?

    public var errorMessage: String?

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
        if self.baSuccessDataWithRiskList != nil {
            var tmp : [Any] = []
            for k in self.baSuccessDataWithRiskList! {
                tmp.append(k.toMap())
            }
            map["BaSuccessDataWithRiskList"] = tmp
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if let value = dict["BaSuccessDataWithRiskList"] as? [Any?] {
            var tmp : [QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList] = []
            for v in value {
                if v != nil {
                    var model = QuerySuccessIcpDataResponseBody.BaSuccessDataWithRiskList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.baSuccessDataWithRiskList = tmp
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QuerySuccessIcpDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySuccessIcpDataResponseBody?

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
            var model = QuerySuccessIcpDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
