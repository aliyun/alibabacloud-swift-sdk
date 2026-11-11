import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewayPOP
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActiveRightsRequest : Tea.TeaModel {
    public var clientIp: String?

    public var customImageId: String?

    public var dataDiskSize: Int32?

    public var desktopType: String?

    public var endTime: String?

    public var hibernate: Int32?

    public var language: String?

    public var officeSiteId: String?

    public var policyGroupId: String?

    public var resourceGroupId: String?

    public var rightsAssignedUser: [String]?

    public var rightsGpuSpec: String?

    public var rightsIds: [String]?

    public var rightsResourceArea: String?

    public var rightsResourceImageOs: String?

    public var rightsResourceRegion: String?

    public var rightsResourceType: String?

    public var rightsSpec: String?

    public var rootDiskSize: Int32?

    public var startTime: String?

    public var vSwitchId: String?

    public var workspaceIds: [String]?

    public var wyidList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.customImageId != nil {
            map["CustomImageId"] = self.customImageId!
        }
        if self.dataDiskSize != nil {
            map["DataDiskSize"] = self.dataDiskSize!
        }
        if self.desktopType != nil {
            map["DesktopType"] = self.desktopType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.hibernate != nil {
            map["Hibernate"] = self.hibernate!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.policyGroupId != nil {
            map["PolicyGroupId"] = self.policyGroupId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.rightsAssignedUser != nil {
            map["RightsAssignedUser"] = self.rightsAssignedUser!
        }
        if self.rightsGpuSpec != nil {
            map["RightsGpuSpec"] = self.rightsGpuSpec!
        }
        if self.rightsIds != nil {
            map["RightsIds"] = self.rightsIds!
        }
        if self.rightsResourceArea != nil {
            map["RightsResourceArea"] = self.rightsResourceArea!
        }
        if self.rightsResourceImageOs != nil {
            map["RightsResourceImageOs"] = self.rightsResourceImageOs!
        }
        if self.rightsResourceRegion != nil {
            map["RightsResourceRegion"] = self.rightsResourceRegion!
        }
        if self.rightsResourceType != nil {
            map["RightsResourceType"] = self.rightsResourceType!
        }
        if self.rightsSpec != nil {
            map["RightsSpec"] = self.rightsSpec!
        }
        if self.rootDiskSize != nil {
            map["RootDiskSize"] = self.rootDiskSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.workspaceIds != nil {
            map["WorkspaceIds"] = self.workspaceIds!
        }
        if self.wyidList != nil {
            map["WyidList"] = self.wyidList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["CustomImageId"] as? String {
            self.customImageId = value
        }
        if let value = dict["DataDiskSize"] as? Int32 {
            self.dataDiskSize = value
        }
        if let value = dict["DesktopType"] as? String {
            self.desktopType = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Hibernate"] as? Int32 {
            self.hibernate = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["PolicyGroupId"] as? String {
            self.policyGroupId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["RightsAssignedUser"] as? [String] {
            self.rightsAssignedUser = value
        }
        if let value = dict["RightsGpuSpec"] as? String {
            self.rightsGpuSpec = value
        }
        if let value = dict["RightsIds"] as? [String] {
            self.rightsIds = value
        }
        if let value = dict["RightsResourceArea"] as? String {
            self.rightsResourceArea = value
        }
        if let value = dict["RightsResourceImageOs"] as? String {
            self.rightsResourceImageOs = value
        }
        if let value = dict["RightsResourceRegion"] as? String {
            self.rightsResourceRegion = value
        }
        if let value = dict["RightsResourceType"] as? String {
            self.rightsResourceType = value
        }
        if let value = dict["RightsSpec"] as? String {
            self.rightsSpec = value
        }
        if let value = dict["RootDiskSize"] as? Int32 {
            self.rootDiskSize = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["WorkspaceIds"] as? [String] {
            self.workspaceIds = value
        }
        if let value = dict["WyidList"] as? [String] {
            self.wyidList = value
        }
    }
}

public class ActiveRightsResponseBody : Tea.TeaModel {
    public var code: String?

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
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ActiveRightsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActiveRightsResponseBody?

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
            var model = ActiveRightsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRightsRequest : Tea.TeaModel {
    public var aiDesktop: Bool?

    public var businessSceneCode: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderField: String?

    public var orderType: String?

    public var overseas: Int32?

    public var rightsActiveStatus: String?

    public var rightsAssignedUser: String?

    public var rightsIds: [String]?

    public var rightsPeriod: String?

    public var rightsResourceId: String?

    public var rightsResourceType: String?

    public var rightsResourceTypes: [String]?

    public var rightsSpec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aiDesktop != nil {
            map["AiDesktop"] = self.aiDesktop!
        }
        if self.businessSceneCode != nil {
            map["BusinessSceneCode"] = self.businessSceneCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderField != nil {
            map["OrderField"] = self.orderField!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.overseas != nil {
            map["Overseas"] = self.overseas!
        }
        if self.rightsActiveStatus != nil {
            map["RightsActiveStatus"] = self.rightsActiveStatus!
        }
        if self.rightsAssignedUser != nil {
            map["RightsAssignedUser"] = self.rightsAssignedUser!
        }
        if self.rightsIds != nil {
            map["RightsIds"] = self.rightsIds!
        }
        if self.rightsPeriod != nil {
            map["RightsPeriod"] = self.rightsPeriod!
        }
        if self.rightsResourceId != nil {
            map["RightsResourceId"] = self.rightsResourceId!
        }
        if self.rightsResourceType != nil {
            map["RightsResourceType"] = self.rightsResourceType!
        }
        if self.rightsResourceTypes != nil {
            map["RightsResourceTypes"] = self.rightsResourceTypes!
        }
        if self.rightsSpec != nil {
            map["RightsSpec"] = self.rightsSpec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AiDesktop"] as? Bool {
            self.aiDesktop = value
        }
        if let value = dict["BusinessSceneCode"] as? String {
            self.businessSceneCode = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderField"] as? String {
            self.orderField = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["Overseas"] as? Int32 {
            self.overseas = value
        }
        if let value = dict["RightsActiveStatus"] as? String {
            self.rightsActiveStatus = value
        }
        if let value = dict["RightsAssignedUser"] as? String {
            self.rightsAssignedUser = value
        }
        if let value = dict["RightsIds"] as? [String] {
            self.rightsIds = value
        }
        if let value = dict["RightsPeriod"] as? String {
            self.rightsPeriod = value
        }
        if let value = dict["RightsResourceId"] as? String {
            self.rightsResourceId = value
        }
        if let value = dict["RightsResourceType"] as? String {
            self.rightsResourceType = value
        }
        if let value = dict["RightsResourceTypes"] as? [String] {
            self.rightsResourceTypes = value
        }
        if let value = dict["RightsSpec"] as? String {
            self.rightsSpec = value
        }
    }
}

public class ListRightsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ValuePackageInfos : Tea.TeaModel {
            public var function: String?

            public var valuePackageCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.function != nil {
                    map["Function"] = self.function!
                }
                if self.valuePackageCode != nil {
                    map["ValuePackageCode"] = self.valuePackageCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Function"] as? String {
                    self.function = value
                }
                if let value = dict["ValuePackageCode"] as? String {
                    self.valuePackageCode = value
                }
            }
        }
        public var addDataDiskSize: Int32?

        public var addRootDiskSize: Int32?

        public var aiDesktop: Bool?

        public var businessSceneCode: String?

        public var calculatingCode: String?

        public var dataDiskSize: Int32?

        public var gmtCreate: String?

        public var hibernate: Int32?

        public var monthlyCredit: String?

        public var overseas: Int32?

        public var rightsActiveFailureCause: String?

        public var rightsActiveStatus: String?

        public var rightsActiveTime: String?

        public var rightsAssignedUser: String?

        public var rightsExpireTime: String?

        public var rightsGpuSpec: String?

        public var rightsId: String?

        public var rightsInventorySpec: String?

        public var rightsPeriod: String?

        public var rightsResourceArea: String?

        public var rightsResourceExpireTime: String?

        public var rightsResourceId: String?

        public var rightsResourceRegion: String?

        public var rightsResourceStatus: String?

        public var rightsResourceType: String?

        public var rightsSourceName: String?

        public var rightsSpec: String?

        public var systemDiskSize: Int32?

        public var valuePackageInfos: [ListRightsResponseBody.Data.ValuePackageInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addDataDiskSize != nil {
                map["AddDataDiskSize"] = self.addDataDiskSize!
            }
            if self.addRootDiskSize != nil {
                map["AddRootDiskSize"] = self.addRootDiskSize!
            }
            if self.aiDesktop != nil {
                map["AiDesktop"] = self.aiDesktop!
            }
            if self.businessSceneCode != nil {
                map["BusinessSceneCode"] = self.businessSceneCode!
            }
            if self.calculatingCode != nil {
                map["CalculatingCode"] = self.calculatingCode!
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.hibernate != nil {
                map["Hibernate"] = self.hibernate!
            }
            if self.monthlyCredit != nil {
                map["MonthlyCredit"] = self.monthlyCredit!
            }
            if self.overseas != nil {
                map["Overseas"] = self.overseas!
            }
            if self.rightsActiveFailureCause != nil {
                map["RightsActiveFailureCause"] = self.rightsActiveFailureCause!
            }
            if self.rightsActiveStatus != nil {
                map["RightsActiveStatus"] = self.rightsActiveStatus!
            }
            if self.rightsActiveTime != nil {
                map["RightsActiveTime"] = self.rightsActiveTime!
            }
            if self.rightsAssignedUser != nil {
                map["RightsAssignedUser"] = self.rightsAssignedUser!
            }
            if self.rightsExpireTime != nil {
                map["RightsExpireTime"] = self.rightsExpireTime!
            }
            if self.rightsGpuSpec != nil {
                map["RightsGpuSpec"] = self.rightsGpuSpec!
            }
            if self.rightsId != nil {
                map["RightsId"] = self.rightsId!
            }
            if self.rightsInventorySpec != nil {
                map["RightsInventorySpec"] = self.rightsInventorySpec!
            }
            if self.rightsPeriod != nil {
                map["RightsPeriod"] = self.rightsPeriod!
            }
            if self.rightsResourceArea != nil {
                map["RightsResourceArea"] = self.rightsResourceArea!
            }
            if self.rightsResourceExpireTime != nil {
                map["RightsResourceExpireTime"] = self.rightsResourceExpireTime!
            }
            if self.rightsResourceId != nil {
                map["RightsResourceId"] = self.rightsResourceId!
            }
            if self.rightsResourceRegion != nil {
                map["RightsResourceRegion"] = self.rightsResourceRegion!
            }
            if self.rightsResourceStatus != nil {
                map["RightsResourceStatus"] = self.rightsResourceStatus!
            }
            if self.rightsResourceType != nil {
                map["RightsResourceType"] = self.rightsResourceType!
            }
            if self.rightsSourceName != nil {
                map["RightsSourceName"] = self.rightsSourceName!
            }
            if self.rightsSpec != nil {
                map["RightsSpec"] = self.rightsSpec!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            if self.valuePackageInfos != nil {
                var tmp : [Any] = []
                for k in self.valuePackageInfos! {
                    tmp.append(k.toMap())
                }
                map["ValuePackageInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddDataDiskSize"] as? Int32 {
                self.addDataDiskSize = value
            }
            if let value = dict["AddRootDiskSize"] as? Int32 {
                self.addRootDiskSize = value
            }
            if let value = dict["AiDesktop"] as? Bool {
                self.aiDesktop = value
            }
            if let value = dict["BusinessSceneCode"] as? String {
                self.businessSceneCode = value
            }
            if let value = dict["CalculatingCode"] as? String {
                self.calculatingCode = value
            }
            if let value = dict["DataDiskSize"] as? Int32 {
                self.dataDiskSize = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["Hibernate"] as? Int32 {
                self.hibernate = value
            }
            if let value = dict["MonthlyCredit"] as? String {
                self.monthlyCredit = value
            }
            if let value = dict["Overseas"] as? Int32 {
                self.overseas = value
            }
            if let value = dict["RightsActiveFailureCause"] as? String {
                self.rightsActiveFailureCause = value
            }
            if let value = dict["RightsActiveStatus"] as? String {
                self.rightsActiveStatus = value
            }
            if let value = dict["RightsActiveTime"] as? String {
                self.rightsActiveTime = value
            }
            if let value = dict["RightsAssignedUser"] as? String {
                self.rightsAssignedUser = value
            }
            if let value = dict["RightsExpireTime"] as? String {
                self.rightsExpireTime = value
            }
            if let value = dict["RightsGpuSpec"] as? String {
                self.rightsGpuSpec = value
            }
            if let value = dict["RightsId"] as? String {
                self.rightsId = value
            }
            if let value = dict["RightsInventorySpec"] as? String {
                self.rightsInventorySpec = value
            }
            if let value = dict["RightsPeriod"] as? String {
                self.rightsPeriod = value
            }
            if let value = dict["RightsResourceArea"] as? String {
                self.rightsResourceArea = value
            }
            if let value = dict["RightsResourceExpireTime"] as? String {
                self.rightsResourceExpireTime = value
            }
            if let value = dict["RightsResourceId"] as? String {
                self.rightsResourceId = value
            }
            if let value = dict["RightsResourceRegion"] as? String {
                self.rightsResourceRegion = value
            }
            if let value = dict["RightsResourceStatus"] as? String {
                self.rightsResourceStatus = value
            }
            if let value = dict["RightsResourceType"] as? String {
                self.rightsResourceType = value
            }
            if let value = dict["RightsSourceName"] as? String {
                self.rightsSourceName = value
            }
            if let value = dict["RightsSpec"] as? String {
                self.rightsSpec = value
            }
            if let value = dict["SystemDiskSize"] as? Int32 {
                self.systemDiskSize = value
            }
            if let value = dict["ValuePackageInfos"] as? [Any?] {
                var tmp : [ListRightsResponseBody.Data.ValuePackageInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListRightsResponseBody.Data.ValuePackageInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.valuePackageInfos = tmp
            }
        }
    }
    public var code: String?

    public var data: [ListRightsResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListRightsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListRightsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListRightsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRightsResponseBody?

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
            var model = ListRightsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
