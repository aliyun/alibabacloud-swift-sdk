import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddCdnDomainRequest : Tea.TeaModel {
    public var cdnType: String?

    public var checkUrl: String?

    public var domainName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var priorities: String?

    public var region: String?

    public var resourceGroupId: String?

    public var scope: String?

    public var securityToken: String?

    public var sourcePort: Int32?

    public var sourceType: String?

    public var sources: String?

    public var topLevelDomain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cdnType != nil {
            map["CdnType"] = self.cdnType!
        }
        if self.checkUrl != nil {
            map["CheckUrl"] = self.checkUrl!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.priorities != nil {
            map["Priorities"] = self.priorities!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.scope != nil {
            map["Scope"] = self.scope!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sourcePort != nil {
            map["SourcePort"] = self.sourcePort!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.sources != nil {
            map["Sources"] = self.sources!
        }
        if self.topLevelDomain != nil {
            map["TopLevelDomain"] = self.topLevelDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CdnType") {
            self.cdnType = dict["CdnType"] as! String
        }
        if dict.keys.contains("CheckUrl") {
            self.checkUrl = dict["CheckUrl"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Priorities") {
            self.priorities = dict["Priorities"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Scope") {
            self.scope = dict["Scope"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SourcePort") {
            self.sourcePort = dict["SourcePort"] as! Int32
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sources = dict["Sources"] as! String
        }
        if dict.keys.contains("TopLevelDomain") {
            self.topLevelDomain = dict["TopLevelDomain"] as! String
        }
    }
}

public class AddCdnDomainResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddCdnDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCdnDomainResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddCdnDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCdnDomainDetailRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeCdnDomainDetailResponseBody : Tea.TeaModel {
    public class GetDomainDetailModel : Tea.TeaModel {
        public class SourceModels : Tea.TeaModel {
            public class SourceModel : Tea.TeaModel {
                public var content: String?

                public var enabled: String?

                public var port: Int32?

                public var priority: String?

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
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.enabled != nil {
                        map["Enabled"] = self.enabled!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.priority != nil {
                        map["Priority"] = self.priority!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Content") {
                        self.content = dict["Content"] as! String
                    }
                    if dict.keys.contains("Enabled") {
                        self.enabled = dict["Enabled"] as! String
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Priority") {
                        self.priority = dict["Priority"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var sourceModel: [DescribeCdnDomainDetailResponseBody.GetDomainDetailModel.SourceModels.SourceModel]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.sourceModel != nil {
                    var tmp : [Any] = []
                    for k in self.sourceModel! {
                        tmp.append(k.toMap())
                    }
                    map["SourceModel"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SourceModel") {
                    self.sourceModel = dict["SourceModel"] as! [DescribeCdnDomainDetailResponseBody.GetDomainDetailModel.SourceModels.SourceModel]
                }
            }
        }
        public class Sources : Tea.TeaModel {
            public var source: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.source != nil {
                    map["Source"] = self.source!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! [String]
                }
            }
        }
        public var cdnType: String?

        public var cname: String?

        public var description_: String?

        public var domainName: String?

        public var domainStatus: String?

        public var gmtCreated: String?

        public var gmtModified: String?

        public var httpsCname: String?

        public var region: String?

        public var resourceGroupId: String?

        public var scope: String?

        public var serverCertificateStatus: String?

        public var sourceModels: DescribeCdnDomainDetailResponseBody.GetDomainDetailModel.SourceModels?

        public var sourcePort: Int32?

        public var sourceType: String?

        public var sources: DescribeCdnDomainDetailResponseBody.GetDomainDetailModel.Sources?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sourceModels?.validate()
            try self.sources?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cdnType != nil {
                map["CdnType"] = self.cdnType!
            }
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            if self.domainStatus != nil {
                map["DomainStatus"] = self.domainStatus!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.httpsCname != nil {
                map["HttpsCname"] = self.httpsCname!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            if self.serverCertificateStatus != nil {
                map["ServerCertificateStatus"] = self.serverCertificateStatus!
            }
            if self.sourceModels != nil {
                map["SourceModels"] = self.sourceModels?.toMap()
            }
            if self.sourcePort != nil {
                map["SourcePort"] = self.sourcePort!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.sources != nil {
                map["Sources"] = self.sources?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CdnType") {
                self.cdnType = dict["CdnType"] as! String
            }
            if dict.keys.contains("Cname") {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
            if dict.keys.contains("DomainStatus") {
                self.domainStatus = dict["DomainStatus"] as! String
            }
            if dict.keys.contains("GmtCreated") {
                self.gmtCreated = dict["GmtCreated"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("HttpsCname") {
                self.httpsCname = dict["HttpsCname"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Scope") {
                self.scope = dict["Scope"] as! String
            }
            if dict.keys.contains("ServerCertificateStatus") {
                self.serverCertificateStatus = dict["ServerCertificateStatus"] as! String
            }
            if dict.keys.contains("SourceModels") {
                var model = DescribeCdnDomainDetailResponseBody.GetDomainDetailModel.SourceModels()
                model.fromMap(dict["SourceModels"] as! [String: Any])
                self.sourceModels = model
            }
            if dict.keys.contains("SourcePort") {
                self.sourcePort = dict["SourcePort"] as! Int32
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Sources") {
                var model = DescribeCdnDomainDetailResponseBody.GetDomainDetailModel.Sources()
                model.fromMap(dict["Sources"] as! [String: Any])
                self.sources = model
            }
        }
    }
    public var getDomainDetailModel: DescribeCdnDomainDetailResponseBody.GetDomainDetailModel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.getDomainDetailModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.getDomainDetailModel != nil {
            map["GetDomainDetailModel"] = self.getDomainDetailModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GetDomainDetailModel") {
            var model = DescribeCdnDomainDetailResponseBody.GetDomainDetailModel()
            model.fromMap(dict["GetDomainDetailModel"] as! [String: Any])
            self.getDomainDetailModel = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCdnDomainDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCdnDomainDetailResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCdnDomainDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCdnDomainLogsRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var logDay: String?

    public var ownerId: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var securityToken: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.logDay != nil {
            map["LogDay"] = self.logDay!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("LogDay") {
            self.logDay = dict["LogDay"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeCdnDomainLogsResponseBody : Tea.TeaModel {
    public class DomainLogModel : Tea.TeaModel {
        public class DomainLogDetails : Tea.TeaModel {
            public class DomainLogDetail : Tea.TeaModel {
                public var endTime: String?

                public var logName: String?

                public var logPath: String?

                public var logSize: Int64?

                public var startTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.logName != nil {
                        map["LogName"] = self.logName!
                    }
                    if self.logPath != nil {
                        map["LogPath"] = self.logPath!
                    }
                    if self.logSize != nil {
                        map["LogSize"] = self.logSize!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("LogName") {
                        self.logName = dict["LogName"] as! String
                    }
                    if dict.keys.contains("LogPath") {
                        self.logPath = dict["LogPath"] as! String
                    }
                    if dict.keys.contains("LogSize") {
                        self.logSize = dict["LogSize"] as! Int64
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                }
            }
            public var domainLogDetail: [DescribeCdnDomainLogsResponseBody.DomainLogModel.DomainLogDetails.DomainLogDetail]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domainLogDetail != nil {
                    var tmp : [Any] = []
                    for k in self.domainLogDetail! {
                        tmp.append(k.toMap())
                    }
                    map["DomainLogDetail"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomainLogDetail") {
                    self.domainLogDetail = dict["DomainLogDetail"] as! [DescribeCdnDomainLogsResponseBody.DomainLogModel.DomainLogDetails.DomainLogDetail]
                }
            }
        }
        public var domainLogDetails: DescribeCdnDomainLogsResponseBody.DomainLogModel.DomainLogDetails?

        public var domainName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.domainLogDetails?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainLogDetails != nil {
                map["DomainLogDetails"] = self.domainLogDetails?.toMap()
            }
            if self.domainName != nil {
                map["DomainName"] = self.domainName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainLogDetails") {
                var model = DescribeCdnDomainLogsResponseBody.DomainLogModel.DomainLogDetails()
                model.fromMap(dict["DomainLogDetails"] as! [String: Any])
                self.domainLogDetails = model
            }
            if dict.keys.contains("DomainName") {
                self.domainName = dict["DomainName"] as! String
            }
        }
    }
    public var domainLogModel: DescribeCdnDomainLogsResponseBody.DomainLogModel?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        try self.domainLogModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainLogModel != nil {
            map["DomainLogModel"] = self.domainLogModel?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainLogModel") {
            var model = DescribeCdnDomainLogsResponseBody.DomainLogModel()
            model.fromMap(dict["DomainLogModel"] as! [String: Any])
            self.domainLogModel = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeCdnDomainLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCdnDomainLogsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCdnDomainLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCdnServiceRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class DescribeCdnServiceResponseBody : Tea.TeaModel {
    public class OperationLocks : Tea.TeaModel {
        public class LockReason : Tea.TeaModel {
            public var lockReason: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LockReason") {
                    self.lockReason = dict["LockReason"] as! String
                }
            }
        }
        public var lockReason: [DescribeCdnServiceResponseBody.OperationLocks.LockReason]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lockReason != nil {
                var tmp : [Any] = []
                for k in self.lockReason! {
                    tmp.append(k.toMap())
                }
                map["LockReason"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LockReason") {
                self.lockReason = dict["LockReason"] as! [DescribeCdnServiceResponseBody.OperationLocks.LockReason]
            }
        }
    }
    public var changingAffectTime: String?

    public var changingChargeType: String?

    public var instanceId: String?

    public var internetChargeType: String?

    public var openingTime: String?

    public var operationLocks: DescribeCdnServiceResponseBody.OperationLocks?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.operationLocks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changingAffectTime != nil {
            map["ChangingAffectTime"] = self.changingAffectTime!
        }
        if self.changingChargeType != nil {
            map["ChangingChargeType"] = self.changingChargeType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.openingTime != nil {
            map["OpeningTime"] = self.openingTime!
        }
        if self.operationLocks != nil {
            map["OperationLocks"] = self.operationLocks?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangingAffectTime") {
            self.changingAffectTime = dict["ChangingAffectTime"] as! String
        }
        if dict.keys.contains("ChangingChargeType") {
            self.changingChargeType = dict["ChangingChargeType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("OpeningTime") {
            self.openingTime = dict["OpeningTime"] as! String
        }
        if dict.keys.contains("OperationLocks") {
            var model = DescribeCdnServiceResponseBody.OperationLocks()
            model.fromMap(dict["OperationLocks"] as! [String: Any])
            self.operationLocks = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCdnServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCdnServiceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCdnServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainBpsDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var domainType: String?

    public var endTime: String?

    public var interval: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

    public var startTime: String?

    public var timeMerge: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainType != nil {
            map["DomainType"] = self.domainType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeMerge != nil {
            map["TimeMerge"] = self.timeMerge!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainType") {
            self.domainType = dict["DomainType"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TimeMerge") {
            self.timeMerge = dict["TimeMerge"] as! String
        }
    }
}

public class DescribeDomainBpsDataResponseBody : Tea.TeaModel {
    public class BpsDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var domesticL2Value: String?

            public var domesticValue: String?

            public var dynamicDomesticValue: String?

            public var dynamicOverseasValue: String?

            public var dynamicValue: String?

            public var l2Value: String?

            public var overseasL2Value: String?

            public var overseasValue: String?

            public var staticDomesticValue: String?

            public var staticOverseasValue: String?

            public var staticValue: String?

            public var timeStamp: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domesticL2Value != nil {
                    map["DomesticL2Value"] = self.domesticL2Value!
                }
                if self.domesticValue != nil {
                    map["DomesticValue"] = self.domesticValue!
                }
                if self.dynamicDomesticValue != nil {
                    map["DynamicDomesticValue"] = self.dynamicDomesticValue!
                }
                if self.dynamicOverseasValue != nil {
                    map["DynamicOverseasValue"] = self.dynamicOverseasValue!
                }
                if self.dynamicValue != nil {
                    map["DynamicValue"] = self.dynamicValue!
                }
                if self.l2Value != nil {
                    map["L2Value"] = self.l2Value!
                }
                if self.overseasL2Value != nil {
                    map["OverseasL2Value"] = self.overseasL2Value!
                }
                if self.overseasValue != nil {
                    map["OverseasValue"] = self.overseasValue!
                }
                if self.staticDomesticValue != nil {
                    map["StaticDomesticValue"] = self.staticDomesticValue!
                }
                if self.staticOverseasValue != nil {
                    map["StaticOverseasValue"] = self.staticOverseasValue!
                }
                if self.staticValue != nil {
                    map["StaticValue"] = self.staticValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomesticL2Value") {
                    self.domesticL2Value = dict["DomesticL2Value"] as! String
                }
                if dict.keys.contains("DomesticValue") {
                    self.domesticValue = dict["DomesticValue"] as! String
                }
                if dict.keys.contains("DynamicDomesticValue") {
                    self.dynamicDomesticValue = dict["DynamicDomesticValue"] as! String
                }
                if dict.keys.contains("DynamicOverseasValue") {
                    self.dynamicOverseasValue = dict["DynamicOverseasValue"] as! String
                }
                if dict.keys.contains("DynamicValue") {
                    self.dynamicValue = dict["DynamicValue"] as! String
                }
                if dict.keys.contains("L2Value") {
                    self.l2Value = dict["L2Value"] as! String
                }
                if dict.keys.contains("OverseasL2Value") {
                    self.overseasL2Value = dict["OverseasL2Value"] as! String
                }
                if dict.keys.contains("OverseasValue") {
                    self.overseasValue = dict["OverseasValue"] as! String
                }
                if dict.keys.contains("StaticDomesticValue") {
                    self.staticDomesticValue = dict["StaticDomesticValue"] as! String
                }
                if dict.keys.contains("StaticOverseasValue") {
                    self.staticOverseasValue = dict["StaticOverseasValue"] as! String
                }
                if dict.keys.contains("StaticValue") {
                    self.staticValue = dict["StaticValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var dataModule: [DescribeDomainBpsDataResponseBody.BpsDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeDomainBpsDataResponseBody.BpsDataPerInterval.DataModule]
            }
        }
    }
    public var bpsDataPerInterval: DescribeDomainBpsDataResponseBody.BpsDataPerInterval?

    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var ispName: String?

    public var ispNameEn: String?

    public var locationName: String?

    public var locationNameEn: String?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bpsDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bpsDataPerInterval != nil {
            map["BpsDataPerInterval"] = self.bpsDataPerInterval?.toMap()
        }
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ispName != nil {
            map["IspName"] = self.ispName!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationName != nil {
            map["LocationName"] = self.locationName!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BpsDataPerInterval") {
            var model = DescribeDomainBpsDataResponseBody.BpsDataPerInterval()
            model.fromMap(dict["BpsDataPerInterval"] as! [String: Any])
            self.bpsDataPerInterval = model
        }
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IspName") {
            self.ispName = dict["IspName"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationName") {
            self.locationName = dict["LocationName"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDomainBpsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainBpsDataResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainBpsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainBpsDataByTimeStampRequest : Tea.TeaModel {
    public var domainName: String?

    public var ispNames: String?

    public var locationNames: String?

    public var timePoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ispNames != nil {
            map["IspNames"] = self.ispNames!
        }
        if self.locationNames != nil {
            map["LocationNames"] = self.locationNames!
        }
        if self.timePoint != nil {
            map["TimePoint"] = self.timePoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("IspNames") {
            self.ispNames = dict["IspNames"] as! String
        }
        if dict.keys.contains("LocationNames") {
            self.locationNames = dict["LocationNames"] as! String
        }
        if dict.keys.contains("TimePoint") {
            self.timePoint = dict["TimePoint"] as! String
        }
    }
}

public class DescribeDomainBpsDataByTimeStampResponseBody : Tea.TeaModel {
    public class BpsDataList : Tea.TeaModel {
        public class BpsDataModel : Tea.TeaModel {
            public var bps: Int64?

            public var ispName: String?

            public var locationName: String?

            public var timeStamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bps != nil {
                    map["Bps"] = self.bps!
                }
                if self.ispName != nil {
                    map["IspName"] = self.ispName!
                }
                if self.locationName != nil {
                    map["LocationName"] = self.locationName!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Bps") {
                    self.bps = dict["Bps"] as! Int64
                }
                if dict.keys.contains("IspName") {
                    self.ispName = dict["IspName"] as! String
                }
                if dict.keys.contains("LocationName") {
                    self.locationName = dict["LocationName"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
            }
        }
        public var bpsDataModel: [DescribeDomainBpsDataByTimeStampResponseBody.BpsDataList.BpsDataModel]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bpsDataModel != nil {
                var tmp : [Any] = []
                for k in self.bpsDataModel! {
                    tmp.append(k.toMap())
                }
                map["BpsDataModel"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BpsDataModel") {
                self.bpsDataModel = dict["BpsDataModel"] as! [DescribeDomainBpsDataByTimeStampResponseBody.BpsDataList.BpsDataModel]
            }
        }
    }
    public var bpsDataList: DescribeDomainBpsDataByTimeStampResponseBody.BpsDataList?

    public var domainName: String?

    public var requestId: String?

    public var timeStamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bpsDataList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bpsDataList != nil {
            map["BpsDataList"] = self.bpsDataList?.toMap()
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timeStamp != nil {
            map["TimeStamp"] = self.timeStamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BpsDataList") {
            var model = DescribeDomainBpsDataByTimeStampResponseBody.BpsDataList()
            model.fromMap(dict["BpsDataList"] as! [String: Any])
            self.bpsDataList = model
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TimeStamp") {
            self.timeStamp = dict["TimeStamp"] as! String
        }
    }
}

public class DescribeDomainBpsDataByTimeStampResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainBpsDataByTimeStampResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainBpsDataByTimeStampResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainHitRateDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDomainHitRateDataResponseBody : Tea.TeaModel {
    public class HitRateInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var timeStamp: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var dataModule: [DescribeDomainHitRateDataResponseBody.HitRateInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeDomainHitRateDataResponseBody.HitRateInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var hitRateInterval: DescribeDomainHitRateDataResponseBody.HitRateInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hitRateInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.hitRateInterval != nil {
            map["HitRateInterval"] = self.hitRateInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("HitRateInterval") {
            var model = DescribeDomainHitRateDataResponseBody.HitRateInterval()
            model.fromMap(dict["HitRateInterval"] as! [String: Any])
            self.hitRateInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDomainHitRateDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainHitRateDataResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainHitRateDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainHttpCodeDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

    public var startTime: String?

    public var timeMerge: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeMerge != nil {
            map["TimeMerge"] = self.timeMerge!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TimeMerge") {
            self.timeMerge = dict["TimeMerge"] as! String
        }
    }
}

public class DescribeDomainHttpCodeDataResponseBody : Tea.TeaModel {
    public class HttpCodeData : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public class Value : Tea.TeaModel {
                public class CodeProportionData : Tea.TeaModel {
                    public var code: String?

                    public var count: String?

                    public var proportion: String?

                    public override init() {
                        super.init()
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
                        if self.count != nil {
                            map["Count"] = self.count!
                        }
                        if self.proportion != nil {
                            map["Proportion"] = self.proportion!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Code") {
                            self.code = dict["Code"] as! String
                        }
                        if dict.keys.contains("Count") {
                            self.count = dict["Count"] as! String
                        }
                        if dict.keys.contains("Proportion") {
                            self.proportion = dict["Proportion"] as! String
                        }
                    }
                }
                public var codeProportionData: [DescribeDomainHttpCodeDataResponseBody.HttpCodeData.UsageData.Value.CodeProportionData]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.codeProportionData != nil {
                        var tmp : [Any] = []
                        for k in self.codeProportionData! {
                            tmp.append(k.toMap())
                        }
                        map["CodeProportionData"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CodeProportionData") {
                        self.codeProportionData = dict["CodeProportionData"] as! [DescribeDomainHttpCodeDataResponseBody.HttpCodeData.UsageData.Value.CodeProportionData]
                    }
                }
            }
            public var timeStamp: String?

            public var value: DescribeDomainHttpCodeDataResponseBody.HttpCodeData.UsageData.Value?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.value?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    var model = DescribeDomainHttpCodeDataResponseBody.HttpCodeData.UsageData.Value()
                    model.fromMap(dict["Value"] as! [String: Any])
                    self.value = model
                }
            }
        }
        public var usageData: [DescribeDomainHttpCodeDataResponseBody.HttpCodeData.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [DescribeDomainHttpCodeDataResponseBody.HttpCodeData.UsageData]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var httpCodeData: DescribeDomainHttpCodeDataResponseBody.HttpCodeData?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.httpCodeData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.httpCodeData != nil {
            map["HttpCodeData"] = self.httpCodeData?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("HttpCodeData") {
            var model = DescribeDomainHttpCodeDataResponseBody.HttpCodeData()
            model.fromMap(dict["HttpCodeData"] as! [String: Any])
            self.httpCodeData = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDomainHttpCodeDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainHttpCodeDataResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainHttpCodeDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainQpsDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var domainType: String?

    public var endTime: String?

    public var interval: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

    public var startTime: String?

    public var timeMerge: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainType != nil {
            map["DomainType"] = self.domainType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeMerge != nil {
            map["TimeMerge"] = self.timeMerge!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainType") {
            self.domainType = dict["DomainType"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TimeMerge") {
            self.timeMerge = dict["TimeMerge"] as! String
        }
    }
}

public class DescribeDomainQpsDataResponseBody : Tea.TeaModel {
    public class QpsDataInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var accDomesticValue: String?

            public var accOverseasValue: String?

            public var accValue: String?

            public var domesticValue: String?

            public var dynamicDomesticValue: String?

            public var dynamicOverseasValue: String?

            public var dynamicValue: String?

            public var overseasValue: String?

            public var staticDomesticValue: String?

            public var staticOverseasValue: String?

            public var staticValue: String?

            public var timeStamp: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accDomesticValue != nil {
                    map["AccDomesticValue"] = self.accDomesticValue!
                }
                if self.accOverseasValue != nil {
                    map["AccOverseasValue"] = self.accOverseasValue!
                }
                if self.accValue != nil {
                    map["AccValue"] = self.accValue!
                }
                if self.domesticValue != nil {
                    map["DomesticValue"] = self.domesticValue!
                }
                if self.dynamicDomesticValue != nil {
                    map["DynamicDomesticValue"] = self.dynamicDomesticValue!
                }
                if self.dynamicOverseasValue != nil {
                    map["DynamicOverseasValue"] = self.dynamicOverseasValue!
                }
                if self.dynamicValue != nil {
                    map["DynamicValue"] = self.dynamicValue!
                }
                if self.overseasValue != nil {
                    map["OverseasValue"] = self.overseasValue!
                }
                if self.staticDomesticValue != nil {
                    map["StaticDomesticValue"] = self.staticDomesticValue!
                }
                if self.staticOverseasValue != nil {
                    map["StaticOverseasValue"] = self.staticOverseasValue!
                }
                if self.staticValue != nil {
                    map["StaticValue"] = self.staticValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccDomesticValue") {
                    self.accDomesticValue = dict["AccDomesticValue"] as! String
                }
                if dict.keys.contains("AccOverseasValue") {
                    self.accOverseasValue = dict["AccOverseasValue"] as! String
                }
                if dict.keys.contains("AccValue") {
                    self.accValue = dict["AccValue"] as! String
                }
                if dict.keys.contains("DomesticValue") {
                    self.domesticValue = dict["DomesticValue"] as! String
                }
                if dict.keys.contains("DynamicDomesticValue") {
                    self.dynamicDomesticValue = dict["DynamicDomesticValue"] as! String
                }
                if dict.keys.contains("DynamicOverseasValue") {
                    self.dynamicOverseasValue = dict["DynamicOverseasValue"] as! String
                }
                if dict.keys.contains("DynamicValue") {
                    self.dynamicValue = dict["DynamicValue"] as! String
                }
                if dict.keys.contains("OverseasValue") {
                    self.overseasValue = dict["OverseasValue"] as! String
                }
                if dict.keys.contains("StaticDomesticValue") {
                    self.staticDomesticValue = dict["StaticDomesticValue"] as! String
                }
                if dict.keys.contains("StaticOverseasValue") {
                    self.staticOverseasValue = dict["StaticOverseasValue"] as! String
                }
                if dict.keys.contains("StaticValue") {
                    self.staticValue = dict["StaticValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var dataModule: [DescribeDomainQpsDataResponseBody.QpsDataInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeDomainQpsDataResponseBody.QpsDataInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var qpsDataInterval: DescribeDomainQpsDataResponseBody.QpsDataInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.qpsDataInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.qpsDataInterval != nil {
            map["QpsDataInterval"] = self.qpsDataInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("QpsDataInterval") {
            var model = DescribeDomainQpsDataResponseBody.QpsDataInterval()
            model.fromMap(dict["QpsDataInterval"] as! [String: Any])
            self.qpsDataInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDomainQpsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainQpsDataResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainQpsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainReqHitRateDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var interval: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDomainReqHitRateDataResponseBody : Tea.TeaModel {
    public class ReqHitRateInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var timeStamp: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var dataModule: [DescribeDomainReqHitRateDataResponseBody.ReqHitRateInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeDomainReqHitRateDataResponseBody.ReqHitRateInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var reqHitRateInterval: DescribeDomainReqHitRateDataResponseBody.ReqHitRateInterval?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.reqHitRateInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.reqHitRateInterval != nil {
            map["ReqHitRateInterval"] = self.reqHitRateInterval?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ReqHitRateInterval") {
            var model = DescribeDomainReqHitRateDataResponseBody.ReqHitRateInterval()
            model.fromMap(dict["ReqHitRateInterval"] as! [String: Any])
            self.reqHitRateInterval = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDomainReqHitRateDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainReqHitRateDataResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainReqHitRateDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainSrcBpsDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var fixTimeGap: String?

    public var interval: String?

    public var startTime: String?

    public var timeMerge: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.fixTimeGap != nil {
            map["FixTimeGap"] = self.fixTimeGap!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeMerge != nil {
            map["TimeMerge"] = self.timeMerge!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FixTimeGap") {
            self.fixTimeGap = dict["FixTimeGap"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TimeMerge") {
            self.timeMerge = dict["TimeMerge"] as! String
        }
    }
}

public class DescribeDomainSrcBpsDataResponseBody : Tea.TeaModel {
    public class SrcBpsDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var timeStamp: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var dataModule: [DescribeDomainSrcBpsDataResponseBody.SrcBpsDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeDomainSrcBpsDataResponseBody.SrcBpsDataPerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var srcBpsDataPerInterval: DescribeDomainSrcBpsDataResponseBody.SrcBpsDataPerInterval?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.srcBpsDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.srcBpsDataPerInterval != nil {
            map["SrcBpsDataPerInterval"] = self.srcBpsDataPerInterval?.toMap()
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SrcBpsDataPerInterval") {
            var model = DescribeDomainSrcBpsDataResponseBody.SrcBpsDataPerInterval()
            model.fromMap(dict["SrcBpsDataPerInterval"] as! [String: Any])
            self.srcBpsDataPerInterval = model
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDomainSrcBpsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainSrcBpsDataResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainSrcBpsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainSrcFlowDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var fixTimeGap: String?

    public var interval: String?

    public var startTime: String?

    public var timeMerge: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.fixTimeGap != nil {
            map["FixTimeGap"] = self.fixTimeGap!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeMerge != nil {
            map["TimeMerge"] = self.timeMerge!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("FixTimeGap") {
            self.fixTimeGap = dict["FixTimeGap"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TimeMerge") {
            self.timeMerge = dict["TimeMerge"] as! String
        }
    }
}

public class DescribeDomainSrcFlowDataResponseBody : Tea.TeaModel {
    public class SrcFlowDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var timeStamp: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var dataModule: [DescribeDomainSrcFlowDataResponseBody.SrcFlowDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [DescribeDomainSrcFlowDataResponseBody.SrcFlowDataPerInterval.DataModule]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var srcFlowDataPerInterval: DescribeDomainSrcFlowDataResponseBody.SrcFlowDataPerInterval?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.srcFlowDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.srcFlowDataPerInterval != nil {
            map["SrcFlowDataPerInterval"] = self.srcFlowDataPerInterval?.toMap()
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SrcFlowDataPerInterval") {
            var model = DescribeDomainSrcFlowDataResponseBody.SrcFlowDataPerInterval()
            model.fromMap(dict["SrcFlowDataPerInterval"] as! [String: Any])
            self.srcFlowDataPerInterval = model
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDomainSrcFlowDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainSrcFlowDataResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainSrcFlowDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainUvDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var endTime: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeDomainUvDataResponseBody : Tea.TeaModel {
    public class UvDataInterval : Tea.TeaModel {
        public class UsageData : Tea.TeaModel {
            public var timeStamp: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var usageData: [DescribeDomainUvDataResponseBody.UvDataInterval.UsageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.usageData != nil {
                var tmp : [Any] = []
                for k in self.usageData! {
                    tmp.append(k.toMap())
                }
                map["UsageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UsageData") {
                self.usageData = dict["UsageData"] as! [DescribeDomainUvDataResponseBody.UvDataInterval.UsageData]
            }
        }
    }
    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var requestId: String?

    public var startTime: String?

    public var uvDataInterval: DescribeDomainUvDataResponseBody.UvDataInterval?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.uvDataInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.uvDataInterval != nil {
            map["UvDataInterval"] = self.uvDataInterval?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("UvDataInterval") {
            var model = DescribeDomainUvDataResponseBody.UvDataInterval()
            model.fromMap(dict["UvDataInterval"] as! [String: Any])
            self.uvDataInterval = model
        }
    }
}

public class DescribeDomainUvDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainUvDataResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDomainUvDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUserDomainsRequest : Tea.TeaModel {
    public var cdnType: String?

    public var checkDomainShow: Bool?

    public var domainName: String?

    public var domainSearchType: String?

    public var domainStatus: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var securityToken: String?

    public var sources: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cdnType != nil {
            map["CdnType"] = self.cdnType!
        }
        if self.checkDomainShow != nil {
            map["CheckDomainShow"] = self.checkDomainShow!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainSearchType != nil {
            map["DomainSearchType"] = self.domainSearchType!
        }
        if self.domainStatus != nil {
            map["DomainStatus"] = self.domainStatus!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sources != nil {
            map["Sources"] = self.sources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CdnType") {
            self.cdnType = dict["CdnType"] as! String
        }
        if dict.keys.contains("CheckDomainShow") {
            self.checkDomainShow = dict["CheckDomainShow"] as! Bool
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainSearchType") {
            self.domainSearchType = dict["DomainSearchType"] as! String
        }
        if dict.keys.contains("DomainStatus") {
            self.domainStatus = dict["DomainStatus"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sources = dict["Sources"] as! String
        }
    }
}

public class DescribeUserDomainsResponseBody : Tea.TeaModel {
    public class Domains : Tea.TeaModel {
        public class PageData : Tea.TeaModel {
            public class Sources : Tea.TeaModel {
                public var source: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.source != nil {
                        map["Source"] = self.source!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Source") {
                        self.source = dict["Source"] as! [String]
                    }
                }
            }
            public var cdnType: String?

            public var cname: String?

            public var description_: String?

            public var domainName: String?

            public var domainStatus: String?

            public var gmtCreated: String?

            public var gmtModified: String?

            public var resourceGroupId: String?

            public var sandbox: String?

            public var sourceType: String?

            public var sources: DescribeUserDomainsResponseBody.Domains.PageData.Sources?

            public var sslProtocol: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.sources?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cdnType != nil {
                    map["CdnType"] = self.cdnType!
                }
                if self.cname != nil {
                    map["Cname"] = self.cname!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.domainStatus != nil {
                    map["DomainStatus"] = self.domainStatus!
                }
                if self.gmtCreated != nil {
                    map["GmtCreated"] = self.gmtCreated!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.sandbox != nil {
                    map["Sandbox"] = self.sandbox!
                }
                if self.sourceType != nil {
                    map["SourceType"] = self.sourceType!
                }
                if self.sources != nil {
                    map["Sources"] = self.sources?.toMap()
                }
                if self.sslProtocol != nil {
                    map["SslProtocol"] = self.sslProtocol!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CdnType") {
                    self.cdnType = dict["CdnType"] as! String
                }
                if dict.keys.contains("Cname") {
                    self.cname = dict["Cname"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("DomainStatus") {
                    self.domainStatus = dict["DomainStatus"] as! String
                }
                if dict.keys.contains("GmtCreated") {
                    self.gmtCreated = dict["GmtCreated"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("Sandbox") {
                    self.sandbox = dict["Sandbox"] as! String
                }
                if dict.keys.contains("SourceType") {
                    self.sourceType = dict["SourceType"] as! String
                }
                if dict.keys.contains("Sources") {
                    var model = DescribeUserDomainsResponseBody.Domains.PageData.Sources()
                    model.fromMap(dict["Sources"] as! [String: Any])
                    self.sources = model
                }
                if dict.keys.contains("SslProtocol") {
                    self.sslProtocol = dict["SslProtocol"] as! String
                }
            }
        }
        public var pageData: [DescribeUserDomainsResponseBody.Domains.PageData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageData != nil {
                var tmp : [Any] = []
                for k in self.pageData! {
                    tmp.append(k.toMap())
                }
                map["PageData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageData") {
                self.pageData = dict["PageData"] as! [DescribeUserDomainsResponseBody.Domains.PageData]
            }
        }
    }
    public var domains: DescribeUserDomainsResponseBody.Domains?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        try self.domains?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domains != nil {
            map["Domains"] = self.domains?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domains") {
            var model = DescribeUserDomainsResponseBody.Domains()
            model.fromMap(dict["Domains"] as! [String: Any])
            self.domains = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class DescribeUserDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserDomainsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeUserDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenCdnServiceRequest : Tea.TeaModel {
    public var internetChargeType: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class OpenCdnServiceResponseBody : Tea.TeaModel {
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
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenCdnServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenCdnServiceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = OpenCdnServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PushObjectCacheRequest : Tea.TeaModel {
    public var area: String?

    public var objectPath: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.area != nil {
            map["Area"] = self.area!
        }
        if self.objectPath != nil {
            map["ObjectPath"] = self.objectPath!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Area") {
            self.area = dict["Area"] as! String
        }
        if dict.keys.contains("ObjectPath") {
            self.objectPath = dict["ObjectPath"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class PushObjectCacheResponseBody : Tea.TeaModel {
    public var pushTaskId: String?

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
        if self.pushTaskId != nil {
            map["PushTaskId"] = self.pushTaskId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PushTaskId") {
            self.pushTaskId = dict["PushTaskId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PushObjectCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PushObjectCacheResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PushObjectCacheResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshObjectCachesRequest : Tea.TeaModel {
    public var objectPath: String?

    public var objectType: String?

    public var ownerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.objectPath != nil {
            map["ObjectPath"] = self.objectPath!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ObjectPath") {
            self.objectPath = dict["ObjectPath"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") {
            self.securityToken = dict["SecurityToken"] as! String
        }
    }
}

public class RefreshObjectCachesResponseBody : Tea.TeaModel {
    public var refreshTaskId: String?

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
        if self.refreshTaskId != nil {
            map["RefreshTaskId"] = self.refreshTaskId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RefreshTaskId") {
            self.refreshTaskId = dict["RefreshTaskId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefreshObjectCachesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshObjectCachesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RefreshObjectCachesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TestDescribeDomainBpsDataRequest : Tea.TeaModel {
    public var domainName: String?

    public var domainType: String?

    public var endTime: String?

    public var interval: String?

    public var ispNameEn: String?

    public var locationNameEn: String?

    public var startTime: String?

    public var timeMerge: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainType != nil {
            map["DomainType"] = self.domainType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeMerge != nil {
            map["TimeMerge"] = self.timeMerge!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainType") {
            self.domainType = dict["DomainType"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TimeMerge") {
            self.timeMerge = dict["TimeMerge"] as! String
        }
    }
}

public class TestDescribeDomainBpsDataResponseBody : Tea.TeaModel {
    public class BpsDataPerInterval : Tea.TeaModel {
        public class DataModule : Tea.TeaModel {
            public var domesticL2Value: String?

            public var domesticValue: String?

            public var dynamicDomesticValue: String?

            public var dynamicOverseasValue: String?

            public var dynamicValue: String?

            public var l2Value: String?

            public var overseasL2Value: String?

            public var overseasValue: String?

            public var staticDomesticValue: String?

            public var staticOverseasValue: String?

            public var staticValue: String?

            public var timeStamp: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domesticL2Value != nil {
                    map["DomesticL2Value"] = self.domesticL2Value!
                }
                if self.domesticValue != nil {
                    map["DomesticValue"] = self.domesticValue!
                }
                if self.dynamicDomesticValue != nil {
                    map["DynamicDomesticValue"] = self.dynamicDomesticValue!
                }
                if self.dynamicOverseasValue != nil {
                    map["DynamicOverseasValue"] = self.dynamicOverseasValue!
                }
                if self.dynamicValue != nil {
                    map["DynamicValue"] = self.dynamicValue!
                }
                if self.l2Value != nil {
                    map["L2Value"] = self.l2Value!
                }
                if self.overseasL2Value != nil {
                    map["OverseasL2Value"] = self.overseasL2Value!
                }
                if self.overseasValue != nil {
                    map["OverseasValue"] = self.overseasValue!
                }
                if self.staticDomesticValue != nil {
                    map["StaticDomesticValue"] = self.staticDomesticValue!
                }
                if self.staticOverseasValue != nil {
                    map["StaticOverseasValue"] = self.staticOverseasValue!
                }
                if self.staticValue != nil {
                    map["StaticValue"] = self.staticValue!
                }
                if self.timeStamp != nil {
                    map["TimeStamp"] = self.timeStamp!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DomesticL2Value") {
                    self.domesticL2Value = dict["DomesticL2Value"] as! String
                }
                if dict.keys.contains("DomesticValue") {
                    self.domesticValue = dict["DomesticValue"] as! String
                }
                if dict.keys.contains("DynamicDomesticValue") {
                    self.dynamicDomesticValue = dict["DynamicDomesticValue"] as! String
                }
                if dict.keys.contains("DynamicOverseasValue") {
                    self.dynamicOverseasValue = dict["DynamicOverseasValue"] as! String
                }
                if dict.keys.contains("DynamicValue") {
                    self.dynamicValue = dict["DynamicValue"] as! String
                }
                if dict.keys.contains("L2Value") {
                    self.l2Value = dict["L2Value"] as! String
                }
                if dict.keys.contains("OverseasL2Value") {
                    self.overseasL2Value = dict["OverseasL2Value"] as! String
                }
                if dict.keys.contains("OverseasValue") {
                    self.overseasValue = dict["OverseasValue"] as! String
                }
                if dict.keys.contains("StaticDomesticValue") {
                    self.staticDomesticValue = dict["StaticDomesticValue"] as! String
                }
                if dict.keys.contains("StaticOverseasValue") {
                    self.staticOverseasValue = dict["StaticOverseasValue"] as! String
                }
                if dict.keys.contains("StaticValue") {
                    self.staticValue = dict["StaticValue"] as! String
                }
                if dict.keys.contains("TimeStamp") {
                    self.timeStamp = dict["TimeStamp"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var dataModule: [TestDescribeDomainBpsDataResponseBody.BpsDataPerInterval.DataModule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataModule != nil {
                var tmp : [Any] = []
                for k in self.dataModule! {
                    tmp.append(k.toMap())
                }
                map["DataModule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataModule") {
                self.dataModule = dict["DataModule"] as! [TestDescribeDomainBpsDataResponseBody.BpsDataPerInterval.DataModule]
            }
        }
    }
    public var bpsDataPerInterval: TestDescribeDomainBpsDataResponseBody.BpsDataPerInterval?

    public var dataInterval: String?

    public var domainName: String?

    public var endTime: String?

    public var ispName: String?

    public var ispNameEn: String?

    public var locationName: String?

    public var locationNameEn: String?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.bpsDataPerInterval?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bpsDataPerInterval != nil {
            map["BpsDataPerInterval"] = self.bpsDataPerInterval?.toMap()
        }
        if self.dataInterval != nil {
            map["DataInterval"] = self.dataInterval!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ispName != nil {
            map["IspName"] = self.ispName!
        }
        if self.ispNameEn != nil {
            map["IspNameEn"] = self.ispNameEn!
        }
        if self.locationName != nil {
            map["LocationName"] = self.locationName!
        }
        if self.locationNameEn != nil {
            map["LocationNameEn"] = self.locationNameEn!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BpsDataPerInterval") {
            var model = TestDescribeDomainBpsDataResponseBody.BpsDataPerInterval()
            model.fromMap(dict["BpsDataPerInterval"] as! [String: Any])
            self.bpsDataPerInterval = model
        }
        if dict.keys.contains("DataInterval") {
            self.dataInterval = dict["DataInterval"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("IspName") {
            self.ispName = dict["IspName"] as! String
        }
        if dict.keys.contains("IspNameEn") {
            self.ispNameEn = dict["IspNameEn"] as! String
        }
        if dict.keys.contains("LocationName") {
            self.locationName = dict["LocationName"] as! String
        }
        if dict.keys.contains("LocationNameEn") {
            self.locationNameEn = dict["LocationNameEn"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class TestDescribeDomainBpsDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TestDescribeDomainBpsDataResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TestDescribeDomainBpsDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
