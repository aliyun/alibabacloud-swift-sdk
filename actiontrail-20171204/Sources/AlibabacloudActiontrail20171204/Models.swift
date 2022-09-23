import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateTrailRequest : Tea.TeaModel {
    public var eventRW: String?

    public var isOrganizationTrail: Bool?

    public var mnsTopicArn: String?

    public var name: String?

    public var ossBucketName: String?

    public var ossKeyPrefix: String?

    public var roleName: String?

    public var slsProjectArn: String?

    public var slsWriteRoleArn: String?

    public var trailRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventRW != nil {
            map["EventRW"] = self.eventRW!
        }
        if self.isOrganizationTrail != nil {
            map["IsOrganizationTrail"] = self.isOrganizationTrail!
        }
        if self.mnsTopicArn != nil {
            map["MnsTopicArn"] = self.mnsTopicArn!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossKeyPrefix != nil {
            map["OssKeyPrefix"] = self.ossKeyPrefix!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.slsProjectArn != nil {
            map["SlsProjectArn"] = self.slsProjectArn!
        }
        if self.slsWriteRoleArn != nil {
            map["SlsWriteRoleArn"] = self.slsWriteRoleArn!
        }
        if self.trailRegion != nil {
            map["TrailRegion"] = self.trailRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventRW") {
            self.eventRW = dict["EventRW"] as! String
        }
        if dict.keys.contains("IsOrganizationTrail") {
            self.isOrganizationTrail = dict["IsOrganizationTrail"] as! Bool
        }
        if dict.keys.contains("MnsTopicArn") {
            self.mnsTopicArn = dict["MnsTopicArn"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucketName") {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssKeyPrefix") {
            self.ossKeyPrefix = dict["OssKeyPrefix"] as! String
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
        if dict.keys.contains("SlsProjectArn") {
            self.slsProjectArn = dict["SlsProjectArn"] as! String
        }
        if dict.keys.contains("SlsWriteRoleArn") {
            self.slsWriteRoleArn = dict["SlsWriteRoleArn"] as! String
        }
        if dict.keys.contains("TrailRegion") {
            self.trailRegion = dict["TrailRegion"] as! String
        }
    }
}

public class CreateTrailResponseBody : Tea.TeaModel {
    public var eventRW: String?

    public var homeRegion: String?

    public var mnsTopicArn: String?

    public var name: String?

    public var ossBucketName: String?

    public var ossKeyPrefix: String?

    public var requestId: String?

    public var roleName: String?

    public var slsProjectArn: String?

    public var slsWriteRoleArn: String?

    public var trailRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventRW != nil {
            map["EventRW"] = self.eventRW!
        }
        if self.homeRegion != nil {
            map["HomeRegion"] = self.homeRegion!
        }
        if self.mnsTopicArn != nil {
            map["MnsTopicArn"] = self.mnsTopicArn!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossKeyPrefix != nil {
            map["OssKeyPrefix"] = self.ossKeyPrefix!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.slsProjectArn != nil {
            map["SlsProjectArn"] = self.slsProjectArn!
        }
        if self.slsWriteRoleArn != nil {
            map["SlsWriteRoleArn"] = self.slsWriteRoleArn!
        }
        if self.trailRegion != nil {
            map["TrailRegion"] = self.trailRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventRW") {
            self.eventRW = dict["EventRW"] as! String
        }
        if dict.keys.contains("HomeRegion") {
            self.homeRegion = dict["HomeRegion"] as! String
        }
        if dict.keys.contains("MnsTopicArn") {
            self.mnsTopicArn = dict["MnsTopicArn"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucketName") {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssKeyPrefix") {
            self.ossKeyPrefix = dict["OssKeyPrefix"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
        if dict.keys.contains("SlsProjectArn") {
            self.slsProjectArn = dict["SlsProjectArn"] as! String
        }
        if dict.keys.contains("SlsWriteRoleArn") {
            self.slsWriteRoleArn = dict["SlsWriteRoleArn"] as! String
        }
        if dict.keys.contains("TrailRegion") {
            self.trailRegion = dict["TrailRegion"] as! String
        }
    }
}

public class CreateTrailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTrailResponseBody?

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
            var model = CreateTrailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTrailRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class DeleteTrailResponseBody : Tea.TeaModel {
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

public class DeleteTrailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTrailResponseBody?

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
            var model = DeleteTrailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public var regionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! [DescribeRegionsResponseBody.Regions.Region]
            }
        }
    }
    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTrailsRequest : Tea.TeaModel {
    public var includeOrganizationTrail: Bool?

    public var includeShadowTrails: Bool?

    public var nameList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.includeOrganizationTrail != nil {
            map["IncludeOrganizationTrail"] = self.includeOrganizationTrail!
        }
        if self.includeShadowTrails != nil {
            map["IncludeShadowTrails"] = self.includeShadowTrails!
        }
        if self.nameList != nil {
            map["NameList"] = self.nameList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncludeOrganizationTrail") {
            self.includeOrganizationTrail = dict["IncludeOrganizationTrail"] as! Bool
        }
        if dict.keys.contains("IncludeShadowTrails") {
            self.includeShadowTrails = dict["IncludeShadowTrails"] as! Bool
        }
        if dict.keys.contains("NameList") {
            self.nameList = dict["NameList"] as! String
        }
    }
}

public class DescribeTrailsResponseBody : Tea.TeaModel {
    public class TrailList : Tea.TeaModel {
        public var createTime: String?

        public var eventRW: String?

        public var homeRegion: String?

        public var isOrganizationTrail: Bool?

        public var mnsTopicArn: String?

        public var name: String?

        public var ossBucketName: String?

        public var ossKeyPrefix: String?

        public var roleName: String?

        public var slsProjectArn: String?

        public var slsWriteRoleArn: String?

        public var startLoggingTime: String?

        public var status: String?

        public var stopLoggingTime: String?

        public var trailRegion: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.eventRW != nil {
                map["EventRW"] = self.eventRW!
            }
            if self.homeRegion != nil {
                map["HomeRegion"] = self.homeRegion!
            }
            if self.isOrganizationTrail != nil {
                map["IsOrganizationTrail"] = self.isOrganizationTrail!
            }
            if self.mnsTopicArn != nil {
                map["MnsTopicArn"] = self.mnsTopicArn!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.ossKeyPrefix != nil {
                map["OssKeyPrefix"] = self.ossKeyPrefix!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.slsProjectArn != nil {
                map["SlsProjectArn"] = self.slsProjectArn!
            }
            if self.slsWriteRoleArn != nil {
                map["SlsWriteRoleArn"] = self.slsWriteRoleArn!
            }
            if self.startLoggingTime != nil {
                map["StartLoggingTime"] = self.startLoggingTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.stopLoggingTime != nil {
                map["StopLoggingTime"] = self.stopLoggingTime!
            }
            if self.trailRegion != nil {
                map["TrailRegion"] = self.trailRegion!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EventRW") {
                self.eventRW = dict["EventRW"] as! String
            }
            if dict.keys.contains("HomeRegion") {
                self.homeRegion = dict["HomeRegion"] as! String
            }
            if dict.keys.contains("IsOrganizationTrail") {
                self.isOrganizationTrail = dict["IsOrganizationTrail"] as! Bool
            }
            if dict.keys.contains("MnsTopicArn") {
                self.mnsTopicArn = dict["MnsTopicArn"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OssBucketName") {
                self.ossBucketName = dict["OssBucketName"] as! String
            }
            if dict.keys.contains("OssKeyPrefix") {
                self.ossKeyPrefix = dict["OssKeyPrefix"] as! String
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
            }
            if dict.keys.contains("SlsProjectArn") {
                self.slsProjectArn = dict["SlsProjectArn"] as! String
            }
            if dict.keys.contains("SlsWriteRoleArn") {
                self.slsWriteRoleArn = dict["SlsWriteRoleArn"] as! String
            }
            if dict.keys.contains("StartLoggingTime") {
                self.startLoggingTime = dict["StartLoggingTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StopLoggingTime") {
                self.stopLoggingTime = dict["StopLoggingTime"] as! String
            }
            if dict.keys.contains("TrailRegion") {
                self.trailRegion = dict["TrailRegion"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var trailList: [DescribeTrailsResponseBody.TrailList]?

    public override init() {
        super.init()
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
        if self.trailList != nil {
            var tmp : [Any] = []
            for k in self.trailList! {
                tmp.append(k.toMap())
            }
            map["TrailList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrailList") {
            self.trailList = dict["TrailList"] as! [DescribeTrailsResponseBody.TrailList]
        }
    }
}

public class DescribeTrailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTrailsResponseBody?

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
            var model = DescribeTrailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTrailStatusRequest : Tea.TeaModel {
    public var isOrganizationTrail: Bool?

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
        if self.isOrganizationTrail != nil {
            map["IsOrganizationTrail"] = self.isOrganizationTrail!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsOrganizationTrail") {
            self.isOrganizationTrail = dict["IsOrganizationTrail"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class GetTrailStatusResponseBody : Tea.TeaModel {
    public var isLogging: Bool?

    public var latestDeliveryError: String?

    public var latestDeliveryTime: String?

    public var requestId: String?

    public var startLoggingTime: String?

    public var stopLoggingTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isLogging != nil {
            map["IsLogging"] = self.isLogging!
        }
        if self.latestDeliveryError != nil {
            map["LatestDeliveryError"] = self.latestDeliveryError!
        }
        if self.latestDeliveryTime != nil {
            map["LatestDeliveryTime"] = self.latestDeliveryTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startLoggingTime != nil {
            map["StartLoggingTime"] = self.startLoggingTime!
        }
        if self.stopLoggingTime != nil {
            map["StopLoggingTime"] = self.stopLoggingTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsLogging") {
            self.isLogging = dict["IsLogging"] as! Bool
        }
        if dict.keys.contains("LatestDeliveryError") {
            self.latestDeliveryError = dict["LatestDeliveryError"] as! String
        }
        if dict.keys.contains("LatestDeliveryTime") {
            self.latestDeliveryTime = dict["LatestDeliveryTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartLoggingTime") {
            self.startLoggingTime = dict["StartLoggingTime"] as! String
        }
        if dict.keys.contains("StopLoggingTime") {
            self.stopLoggingTime = dict["StopLoggingTime"] as! String
        }
    }
}

public class GetTrailStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrailStatusResponseBody?

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
            var model = GetTrailStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LookupEventsRequest : Tea.TeaModel {
    public var endTime: String?

    public var event: String?

    public var eventAccessKeyId: String?

    public var eventName: String?

    public var eventRW: String?

    public var eventType: String?

    public var maxResults: String?

    public var nextToken: String?

    public var request: String?

    public var resourceName: String?

    public var resourceType: String?

    public var serviceName: String?

    public var startTime: String?

    public var user: String?

    public override init() {
        super.init()
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
        if self.event != nil {
            map["Event"] = self.event!
        }
        if self.eventAccessKeyId != nil {
            map["EventAccessKeyId"] = self.eventAccessKeyId!
        }
        if self.eventName != nil {
            map["EventName"] = self.eventName!
        }
        if self.eventRW != nil {
            map["EventRW"] = self.eventRW!
        }
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.request != nil {
            map["Request"] = self.request!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Event") {
            self.event = dict["Event"] as! String
        }
        if dict.keys.contains("EventAccessKeyId") {
            self.eventAccessKeyId = dict["EventAccessKeyId"] as! String
        }
        if dict.keys.contains("EventName") {
            self.eventName = dict["EventName"] as! String
        }
        if dict.keys.contains("EventRW") {
            self.eventRW = dict["EventRW"] as! String
        }
        if dict.keys.contains("EventType") {
            self.eventType = dict["EventType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Request") {
            self.request = dict["Request"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
    }
}

public class LookupEventsResponseBody : Tea.TeaModel {
    public var endTime: String?

    public var events: [[String: Any]]?

    public var nextToken: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.events != nil {
            map["Events"] = self.events!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Events") {
            self.events = dict["Events"] as! [[String: Any]]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class LookupEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LookupEventsResponseBody?

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
            var model = LookupEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartLoggingRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class StartLoggingResponseBody : Tea.TeaModel {
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

public class StartLoggingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartLoggingResponseBody?

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
            var model = StartLoggingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopLoggingRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class StopLoggingResponseBody : Tea.TeaModel {
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

public class StopLoggingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopLoggingResponseBody?

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
            var model = StopLoggingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTrailRequest : Tea.TeaModel {
    public var eventRW: String?

    public var mnsTopicArn: String?

    public var name: String?

    public var ossBucketName: String?

    public var ossKeyPrefix: String?

    public var roleName: String?

    public var slsProjectArn: String?

    public var slsWriteRoleArn: String?

    public var trailRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventRW != nil {
            map["EventRW"] = self.eventRW!
        }
        if self.mnsTopicArn != nil {
            map["MnsTopicArn"] = self.mnsTopicArn!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossKeyPrefix != nil {
            map["OssKeyPrefix"] = self.ossKeyPrefix!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.slsProjectArn != nil {
            map["SlsProjectArn"] = self.slsProjectArn!
        }
        if self.slsWriteRoleArn != nil {
            map["SlsWriteRoleArn"] = self.slsWriteRoleArn!
        }
        if self.trailRegion != nil {
            map["TrailRegion"] = self.trailRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventRW") {
            self.eventRW = dict["EventRW"] as! String
        }
        if dict.keys.contains("MnsTopicArn") {
            self.mnsTopicArn = dict["MnsTopicArn"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucketName") {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssKeyPrefix") {
            self.ossKeyPrefix = dict["OssKeyPrefix"] as! String
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
        if dict.keys.contains("SlsProjectArn") {
            self.slsProjectArn = dict["SlsProjectArn"] as! String
        }
        if dict.keys.contains("SlsWriteRoleArn") {
            self.slsWriteRoleArn = dict["SlsWriteRoleArn"] as! String
        }
        if dict.keys.contains("TrailRegion") {
            self.trailRegion = dict["TrailRegion"] as! String
        }
    }
}

public class UpdateTrailResponseBody : Tea.TeaModel {
    public var eventRW: String?

    public var homeRegion: String?

    public var mnsTopicArn: String?

    public var name: String?

    public var ossBucketName: String?

    public var ossKeyPrefix: String?

    public var requestId: String?

    public var roleName: String?

    public var slsProjectArn: String?

    public var slsWriteRoleArn: String?

    public var trailRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventRW != nil {
            map["EventRW"] = self.eventRW!
        }
        if self.homeRegion != nil {
            map["HomeRegion"] = self.homeRegion!
        }
        if self.mnsTopicArn != nil {
            map["MnsTopicArn"] = self.mnsTopicArn!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossKeyPrefix != nil {
            map["OssKeyPrefix"] = self.ossKeyPrefix!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.slsProjectArn != nil {
            map["SlsProjectArn"] = self.slsProjectArn!
        }
        if self.slsWriteRoleArn != nil {
            map["SlsWriteRoleArn"] = self.slsWriteRoleArn!
        }
        if self.trailRegion != nil {
            map["TrailRegion"] = self.trailRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventRW") {
            self.eventRW = dict["EventRW"] as! String
        }
        if dict.keys.contains("HomeRegion") {
            self.homeRegion = dict["HomeRegion"] as! String
        }
        if dict.keys.contains("MnsTopicArn") {
            self.mnsTopicArn = dict["MnsTopicArn"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucketName") {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssKeyPrefix") {
            self.ossKeyPrefix = dict["OssKeyPrefix"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
        if dict.keys.contains("SlsProjectArn") {
            self.slsProjectArn = dict["SlsProjectArn"] as! String
        }
        if dict.keys.contains("SlsWriteRoleArn") {
            self.slsWriteRoleArn = dict["SlsWriteRoleArn"] as! String
        }
        if dict.keys.contains("TrailRegion") {
            self.trailRegion = dict["TrailRegion"] as! String
        }
    }
}

public class UpdateTrailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTrailResponseBody?

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
            var model = UpdateTrailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
