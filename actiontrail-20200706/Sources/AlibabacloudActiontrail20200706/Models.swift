import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateDeliveryHistoryJobRequest : Tea.TeaModel {
    public var clientToken: String?

    public var trailName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.trailName != nil {
            map["TrailName"] = self.trailName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("TrailName") && dict["TrailName"] != nil {
            self.trailName = dict["TrailName"] as! String
        }
    }
}

public class CreateDeliveryHistoryJobResponseBody : Tea.TeaModel {
    public var jobId: Int32?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDeliveryHistoryJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeliveryHistoryJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateDeliveryHistoryJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTrailRequest : Tea.TeaModel {
    public var eventRW: String?

    public var isOrganizationTrail: Bool?

    public var maxComputeProjectArn: String?

    public var maxComputeWriteRoleArn: String?

    public var name: String?

    public var ossBucketName: String?

    public var ossKeyPrefix: String?

    public var ossWriteRoleArn: String?

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
        if self.maxComputeProjectArn != nil {
            map["MaxComputeProjectArn"] = self.maxComputeProjectArn!
        }
        if self.maxComputeWriteRoleArn != nil {
            map["MaxComputeWriteRoleArn"] = self.maxComputeWriteRoleArn!
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
        if self.ossWriteRoleArn != nil {
            map["OssWriteRoleArn"] = self.ossWriteRoleArn!
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
        if dict.keys.contains("EventRW") && dict["EventRW"] != nil {
            self.eventRW = dict["EventRW"] as! String
        }
        if dict.keys.contains("IsOrganizationTrail") && dict["IsOrganizationTrail"] != nil {
            self.isOrganizationTrail = dict["IsOrganizationTrail"] as! Bool
        }
        if dict.keys.contains("MaxComputeProjectArn") && dict["MaxComputeProjectArn"] != nil {
            self.maxComputeProjectArn = dict["MaxComputeProjectArn"] as! String
        }
        if dict.keys.contains("MaxComputeWriteRoleArn") && dict["MaxComputeWriteRoleArn"] != nil {
            self.maxComputeWriteRoleArn = dict["MaxComputeWriteRoleArn"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucketName") && dict["OssBucketName"] != nil {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssKeyPrefix") && dict["OssKeyPrefix"] != nil {
            self.ossKeyPrefix = dict["OssKeyPrefix"] as! String
        }
        if dict.keys.contains("OssWriteRoleArn") && dict["OssWriteRoleArn"] != nil {
            self.ossWriteRoleArn = dict["OssWriteRoleArn"] as! String
        }
        if dict.keys.contains("SlsProjectArn") && dict["SlsProjectArn"] != nil {
            self.slsProjectArn = dict["SlsProjectArn"] as! String
        }
        if dict.keys.contains("SlsWriteRoleArn") && dict["SlsWriteRoleArn"] != nil {
            self.slsWriteRoleArn = dict["SlsWriteRoleArn"] as! String
        }
        if dict.keys.contains("TrailRegion") && dict["TrailRegion"] != nil {
            self.trailRegion = dict["TrailRegion"] as! String
        }
    }
}

public class CreateTrailResponseBody : Tea.TeaModel {
    public var eventRW: String?

    public var homeRegion: String?

    public var maxComputeProjectArn: String?

    public var maxComputeWriteRoleArn: String?

    public var name: String?

    public var ossBucketName: String?

    public var ossKeyPrefix: String?

    public var ossWriteRoleArn: String?

    public var requestId: String?

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
        if self.maxComputeProjectArn != nil {
            map["MaxComputeProjectArn"] = self.maxComputeProjectArn!
        }
        if self.maxComputeWriteRoleArn != nil {
            map["MaxComputeWriteRoleArn"] = self.maxComputeWriteRoleArn!
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
        if self.ossWriteRoleArn != nil {
            map["OssWriteRoleArn"] = self.ossWriteRoleArn!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("EventRW") && dict["EventRW"] != nil {
            self.eventRW = dict["EventRW"] as! String
        }
        if dict.keys.contains("HomeRegion") && dict["HomeRegion"] != nil {
            self.homeRegion = dict["HomeRegion"] as! String
        }
        if dict.keys.contains("MaxComputeProjectArn") && dict["MaxComputeProjectArn"] != nil {
            self.maxComputeProjectArn = dict["MaxComputeProjectArn"] as! String
        }
        if dict.keys.contains("MaxComputeWriteRoleArn") && dict["MaxComputeWriteRoleArn"] != nil {
            self.maxComputeWriteRoleArn = dict["MaxComputeWriteRoleArn"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucketName") && dict["OssBucketName"] != nil {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssKeyPrefix") && dict["OssKeyPrefix"] != nil {
            self.ossKeyPrefix = dict["OssKeyPrefix"] as! String
        }
        if dict.keys.contains("OssWriteRoleArn") && dict["OssWriteRoleArn"] != nil {
            self.ossWriteRoleArn = dict["OssWriteRoleArn"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlsProjectArn") && dict["SlsProjectArn"] != nil {
            self.slsProjectArn = dict["SlsProjectArn"] as! String
        }
        if dict.keys.contains("SlsWriteRoleArn") && dict["SlsWriteRoleArn"] != nil {
            self.slsWriteRoleArn = dict["SlsWriteRoleArn"] as! String
        }
        if dict.keys.contains("TrailRegion") && dict["TrailRegion"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateTrailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDeliveryHistoryJobRequest : Tea.TeaModel {
    public var jobId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! Int32
        }
    }
}

public class DeleteDeliveryHistoryJobResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDeliveryHistoryJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDeliveryHistoryJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteDeliveryHistoryJobResponseBody()
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
        if dict.keys.contains("Name") && dict["Name"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteTrailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public var localName: String?

            public var regionEndpoint: String?

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
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.regionEndpoint != nil {
                    map["RegionEndpoint"] = self.regionEndpoint!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionEndpoint") && dict["RegionEndpoint"] != nil {
                    self.regionEndpoint = dict["RegionEndpoint"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
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
            if dict.keys.contains("Region") && dict["Region"] != nil {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.region = tmp
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
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("IncludeOrganizationTrail") && dict["IncludeOrganizationTrail"] != nil {
            self.includeOrganizationTrail = dict["IncludeOrganizationTrail"] as! Bool
        }
        if dict.keys.contains("IncludeShadowTrails") && dict["IncludeShadowTrails"] != nil {
            self.includeShadowTrails = dict["IncludeShadowTrails"] as! Bool
        }
        if dict.keys.contains("NameList") && dict["NameList"] != nil {
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

        public var maxComputeProjectArn: String?

        public var maxComputeWriteRoleArn: String?

        public var name: String?

        public var organizationId: String?

        public var ossBucketLocation: String?

        public var ossBucketName: String?

        public var ossKeyPrefix: String?

        public var ossWriteRoleArn: String?

        public var region: String?

        public var slsProjectArn: String?

        public var slsWriteRoleArn: String?

        public var startLoggingTime: String?

        public var status: String?

        public var stopLoggingTime: String?

        public var trailArn: String?

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
            if self.maxComputeProjectArn != nil {
                map["MaxComputeProjectArn"] = self.maxComputeProjectArn!
            }
            if self.maxComputeWriteRoleArn != nil {
                map["MaxComputeWriteRoleArn"] = self.maxComputeWriteRoleArn!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.ossBucketLocation != nil {
                map["OssBucketLocation"] = self.ossBucketLocation!
            }
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.ossKeyPrefix != nil {
                map["OssKeyPrefix"] = self.ossKeyPrefix!
            }
            if self.ossWriteRoleArn != nil {
                map["OssWriteRoleArn"] = self.ossWriteRoleArn!
            }
            if self.region != nil {
                map["Region"] = self.region!
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
            if self.trailArn != nil {
                map["TrailArn"] = self.trailArn!
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
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EventRW") && dict["EventRW"] != nil {
                self.eventRW = dict["EventRW"] as! String
            }
            if dict.keys.contains("HomeRegion") && dict["HomeRegion"] != nil {
                self.homeRegion = dict["HomeRegion"] as! String
            }
            if dict.keys.contains("IsOrganizationTrail") && dict["IsOrganizationTrail"] != nil {
                self.isOrganizationTrail = dict["IsOrganizationTrail"] as! Bool
            }
            if dict.keys.contains("MaxComputeProjectArn") && dict["MaxComputeProjectArn"] != nil {
                self.maxComputeProjectArn = dict["MaxComputeProjectArn"] as! String
            }
            if dict.keys.contains("MaxComputeWriteRoleArn") && dict["MaxComputeWriteRoleArn"] != nil {
                self.maxComputeWriteRoleArn = dict["MaxComputeWriteRoleArn"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OrganizationId") && dict["OrganizationId"] != nil {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("OssBucketLocation") && dict["OssBucketLocation"] != nil {
                self.ossBucketLocation = dict["OssBucketLocation"] as! String
            }
            if dict.keys.contains("OssBucketName") && dict["OssBucketName"] != nil {
                self.ossBucketName = dict["OssBucketName"] as! String
            }
            if dict.keys.contains("OssKeyPrefix") && dict["OssKeyPrefix"] != nil {
                self.ossKeyPrefix = dict["OssKeyPrefix"] as! String
            }
            if dict.keys.contains("OssWriteRoleArn") && dict["OssWriteRoleArn"] != nil {
                self.ossWriteRoleArn = dict["OssWriteRoleArn"] as! String
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("SlsProjectArn") && dict["SlsProjectArn"] != nil {
                self.slsProjectArn = dict["SlsProjectArn"] as! String
            }
            if dict.keys.contains("SlsWriteRoleArn") && dict["SlsWriteRoleArn"] != nil {
                self.slsWriteRoleArn = dict["SlsWriteRoleArn"] as! String
            }
            if dict.keys.contains("StartLoggingTime") && dict["StartLoggingTime"] != nil {
                self.startLoggingTime = dict["StartLoggingTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StopLoggingTime") && dict["StopLoggingTime"] != nil {
                self.stopLoggingTime = dict["StopLoggingTime"] as! String
            }
            if dict.keys.contains("TrailArn") && dict["TrailArn"] != nil {
                self.trailArn = dict["TrailArn"] as! String
            }
            if dict.keys.contains("TrailRegion") && dict["TrailRegion"] != nil {
                self.trailRegion = dict["TrailRegion"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrailList") && dict["TrailList"] != nil {
            var tmp : [DescribeTrailsResponseBody.TrailList] = []
            for v in dict["TrailList"] as! [Any] {
                var model = DescribeTrailsResponseBody.TrailList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.trailList = tmp
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTrailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccessKeyLastUsedEventsRequest : Tea.TeaModel {
    public var accessKey: String?

    public var nextToken: String?

    public var pageSize: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKey") && dict["AccessKey"] != nil {
            self.accessKey = dict["AccessKey"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class GetAccessKeyLastUsedEventsResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public var detail: String?

        public var eventName: String?

        public var source: String?

        public var usedTimestamp: Int64?

        public override init() {
            super.init()
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
                map["Detail"] = self.detail!
            }
            if self.eventName != nil {
                map["EventName"] = self.eventName!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.usedTimestamp != nil {
                map["UsedTimestamp"] = self.usedTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("EventName") && dict["EventName"] != nil {
                self.eventName = dict["EventName"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("UsedTimestamp") && dict["UsedTimestamp"] != nil {
                self.usedTimestamp = dict["UsedTimestamp"] as! Int64
            }
        }
    }
    public var events: [GetAccessKeyLastUsedEventsResponseBody.Events]?

    public var nextToken: String?

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
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["Events"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Events") && dict["Events"] != nil {
            var tmp : [GetAccessKeyLastUsedEventsResponseBody.Events] = []
            for v in dict["Events"] as! [Any] {
                var model = GetAccessKeyLastUsedEventsResponseBody.Events()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.events = tmp
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccessKeyLastUsedEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyLastUsedEventsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetAccessKeyLastUsedEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccessKeyLastUsedInfoRequest : Tea.TeaModel {
    public var accessKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKey") && dict["AccessKey"] != nil {
            self.accessKey = dict["AccessKey"] as! String
        }
    }
}

public class GetAccessKeyLastUsedInfoResponseBody : Tea.TeaModel {
    public var accessKeyId: String?

    public var accountId: String?

    public var accountType: String?

    public var detail: String?

    public var ownerId: String?

    public var requestId: String?

    public var serviceName: String?

    public var serviceNameCn: String?

    public var serviceNameEn: String?

    public var source: String?

    public var usedTimestamp: Int64?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKeyId != nil {
            map["AccessKeyId"] = self.accessKeyId!
        }
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceNameCn != nil {
            map["ServiceNameCn"] = self.serviceNameCn!
        }
        if self.serviceNameEn != nil {
            map["ServiceNameEn"] = self.serviceNameEn!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.usedTimestamp != nil {
            map["UsedTimestamp"] = self.usedTimestamp!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
            self.accessKeyId = dict["AccessKeyId"] as! String
        }
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("AccountType") && dict["AccountType"] != nil {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("ServiceNameCn") && dict["ServiceNameCn"] != nil {
            self.serviceNameCn = dict["ServiceNameCn"] as! String
        }
        if dict.keys.contains("ServiceNameEn") && dict["ServiceNameEn"] != nil {
            self.serviceNameEn = dict["ServiceNameEn"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("UsedTimestamp") && dict["UsedTimestamp"] != nil {
            self.usedTimestamp = dict["UsedTimestamp"] as! Int64
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class GetAccessKeyLastUsedInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyLastUsedInfoResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetAccessKeyLastUsedInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccessKeyLastUsedIpsRequest : Tea.TeaModel {
    public var accessKey: String?

    public var nextToken: String?

    public var pageSize: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKey") && dict["AccessKey"] != nil {
            self.accessKey = dict["AccessKey"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class GetAccessKeyLastUsedIpsResponseBody : Tea.TeaModel {
    public class Ips : Tea.TeaModel {
        public var detail: String?

        public var ip: String?

        public var source: String?

        public var usedTimestamp: Int64?

        public override init() {
            super.init()
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
                map["Detail"] = self.detail!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.usedTimestamp != nil {
                map["UsedTimestamp"] = self.usedTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("UsedTimestamp") && dict["UsedTimestamp"] != nil {
                self.usedTimestamp = dict["UsedTimestamp"] as! Int64
            }
        }
    }
    public var ips: [GetAccessKeyLastUsedIpsResponseBody.Ips]?

    public var nextToken: String?

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
        if self.ips != nil {
            var tmp : [Any] = []
            for k in self.ips! {
                tmp.append(k.toMap())
            }
            map["Ips"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ips") && dict["Ips"] != nil {
            var tmp : [GetAccessKeyLastUsedIpsResponseBody.Ips] = []
            for v in dict["Ips"] as! [Any] {
                var model = GetAccessKeyLastUsedIpsResponseBody.Ips()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ips = tmp
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccessKeyLastUsedIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyLastUsedIpsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetAccessKeyLastUsedIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccessKeyLastUsedProductsRequest : Tea.TeaModel {
    public var accessKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKey") && dict["AccessKey"] != nil {
            self.accessKey = dict["AccessKey"] as! String
        }
    }
}

public class GetAccessKeyLastUsedProductsResponseBody : Tea.TeaModel {
    public class Products : Tea.TeaModel {
        public var detail: String?

        public var serviceName: String?

        public var serviceNameCn: String?

        public var serviceNameEn: String?

        public var source: String?

        public var usedTimestamp: Int64?

        public override init() {
            super.init()
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
                map["Detail"] = self.detail!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.serviceNameCn != nil {
                map["ServiceNameCn"] = self.serviceNameCn!
            }
            if self.serviceNameEn != nil {
                map["ServiceNameEn"] = self.serviceNameEn!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.usedTimestamp != nil {
                map["UsedTimestamp"] = self.usedTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("ServiceNameCn") && dict["ServiceNameCn"] != nil {
                self.serviceNameCn = dict["ServiceNameCn"] as! String
            }
            if dict.keys.contains("ServiceNameEn") && dict["ServiceNameEn"] != nil {
                self.serviceNameEn = dict["ServiceNameEn"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("UsedTimestamp") && dict["UsedTimestamp"] != nil {
                self.usedTimestamp = dict["UsedTimestamp"] as! Int64
            }
        }
    }
    public var products: [GetAccessKeyLastUsedProductsResponseBody.Products]?

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
        if self.products != nil {
            var tmp : [Any] = []
            for k in self.products! {
                tmp.append(k.toMap())
            }
            map["Products"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Products") && dict["Products"] != nil {
            var tmp : [GetAccessKeyLastUsedProductsResponseBody.Products] = []
            for v in dict["Products"] as! [Any] {
                var model = GetAccessKeyLastUsedProductsResponseBody.Products()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.products = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccessKeyLastUsedProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyLastUsedProductsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetAccessKeyLastUsedProductsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccessKeyLastUsedResourcesRequest : Tea.TeaModel {
    public var accessKey: String?

    public var nextToken: String?

    public var pageSize: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKey") && dict["AccessKey"] != nil {
            self.accessKey = dict["AccessKey"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
    }
}

public class GetAccessKeyLastUsedResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var detail: String?

        public var resourceName: String?

        public var resourceType: String?

        public var source: String?

        public var usedTimestamp: Int64?

        public override init() {
            super.init()
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
                map["Detail"] = self.detail!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.usedTimestamp != nil {
                map["UsedTimestamp"] = self.usedTimestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("Source") && dict["Source"] != nil {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("UsedTimestamp") && dict["UsedTimestamp"] != nil {
                self.usedTimestamp = dict["UsedTimestamp"] as! Int64
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var resources: [GetAccessKeyLastUsedResourcesResponseBody.Resources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
            var tmp : [GetAccessKeyLastUsedResourcesResponseBody.Resources] = []
            for v in dict["Resources"] as! [Any] {
                var model = GetAccessKeyLastUsedResourcesResponseBody.Resources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
    }
}

public class GetAccessKeyLastUsedResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyLastUsedResourcesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetAccessKeyLastUsedResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeliveryHistoryJobRequest : Tea.TeaModel {
    public var jobId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! Int64
        }
    }
}

public class GetDeliveryHistoryJobResponseBody : Tea.TeaModel {
    public class Status : Tea.TeaModel {
        public var region: String?

        public var status: Int32?

        public override init() {
            super.init()
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
                map["Region"] = self.region!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
        }
    }
    public var createdTime: String?

    public var endTime: String?

    public var homeRegion: String?

    public var jobId: Int64?

    public var jobStatus: Int32?

    public var requestId: String?

    public var startTime: String?

    public var status: [GetDeliveryHistoryJobResponseBody.Status]?

    public var trailName: String?

    public var updatedTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.homeRegion != nil {
            map["HomeRegion"] = self.homeRegion!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobStatus != nil {
            map["JobStatus"] = self.jobStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            var tmp : [Any] = []
            for k in self.status! {
                tmp.append(k.toMap())
            }
            map["Status"] = tmp
        }
        if self.trailName != nil {
            map["TrailName"] = self.trailName!
        }
        if self.updatedTime != nil {
            map["UpdatedTime"] = self.updatedTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("HomeRegion") && dict["HomeRegion"] != nil {
            self.homeRegion = dict["HomeRegion"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! Int64
        }
        if dict.keys.contains("JobStatus") && dict["JobStatus"] != nil {
            self.jobStatus = dict["JobStatus"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            var tmp : [GetDeliveryHistoryJobResponseBody.Status] = []
            for v in dict["Status"] as! [Any] {
                var model = GetDeliveryHistoryJobResponseBody.Status()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.status = tmp
        }
        if dict.keys.contains("TrailName") && dict["TrailName"] != nil {
            self.trailName = dict["TrailName"] as! String
        }
        if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
            self.updatedTime = dict["UpdatedTime"] as! String
        }
    }
}

public class GetDeliveryHistoryJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeliveryHistoryJobResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetDeliveryHistoryJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGlobalEventsStorageRegionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var storageRegion: String?

    public override init() {
        super.init()
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
        if self.storageRegion != nil {
            map["StorageRegion"] = self.storageRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StorageRegion") && dict["StorageRegion"] != nil {
            self.storageRegion = dict["StorageRegion"] as! String
        }
    }
}

public class GetGlobalEventsStorageRegionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGlobalEventsStorageRegionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetGlobalEventsStorageRegionResponseBody()
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
        if dict.keys.contains("IsOrganizationTrail") && dict["IsOrganizationTrail"] != nil {
            self.isOrganizationTrail = dict["IsOrganizationTrail"] as! Bool
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
    }
}

public class GetTrailStatusResponseBody : Tea.TeaModel {
    public var isLogging: Bool?

    public var latestDeliveryError: String?

    public var latestDeliveryLogServiceError: String?

    public var latestDeliveryLogServiceTime: String?

    public var latestDeliveryTime: String?

    public var ossBucketStatus: Bool?

    public var requestId: String?

    public var slsLogStoreStatus: Bool?

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
        if self.latestDeliveryLogServiceError != nil {
            map["LatestDeliveryLogServiceError"] = self.latestDeliveryLogServiceError!
        }
        if self.latestDeliveryLogServiceTime != nil {
            map["LatestDeliveryLogServiceTime"] = self.latestDeliveryLogServiceTime!
        }
        if self.latestDeliveryTime != nil {
            map["LatestDeliveryTime"] = self.latestDeliveryTime!
        }
        if self.ossBucketStatus != nil {
            map["OssBucketStatus"] = self.ossBucketStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slsLogStoreStatus != nil {
            map["SlsLogStoreStatus"] = self.slsLogStoreStatus!
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
        if dict.keys.contains("IsLogging") && dict["IsLogging"] != nil {
            self.isLogging = dict["IsLogging"] as! Bool
        }
        if dict.keys.contains("LatestDeliveryError") && dict["LatestDeliveryError"] != nil {
            self.latestDeliveryError = dict["LatestDeliveryError"] as! String
        }
        if dict.keys.contains("LatestDeliveryLogServiceError") && dict["LatestDeliveryLogServiceError"] != nil {
            self.latestDeliveryLogServiceError = dict["LatestDeliveryLogServiceError"] as! String
        }
        if dict.keys.contains("LatestDeliveryLogServiceTime") && dict["LatestDeliveryLogServiceTime"] != nil {
            self.latestDeliveryLogServiceTime = dict["LatestDeliveryLogServiceTime"] as! String
        }
        if dict.keys.contains("LatestDeliveryTime") && dict["LatestDeliveryTime"] != nil {
            self.latestDeliveryTime = dict["LatestDeliveryTime"] as! String
        }
        if dict.keys.contains("OssBucketStatus") && dict["OssBucketStatus"] != nil {
            self.ossBucketStatus = dict["OssBucketStatus"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlsLogStoreStatus") && dict["SlsLogStoreStatus"] != nil {
            self.slsLogStoreStatus = dict["SlsLogStoreStatus"] as! Bool
        }
        if dict.keys.contains("StartLoggingTime") && dict["StartLoggingTime"] != nil {
            self.startLoggingTime = dict["StartLoggingTime"] as! String
        }
        if dict.keys.contains("StopLoggingTime") && dict["StopLoggingTime"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTrailStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeliveryHistoryJobsRequest : Tea.TeaModel {
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListDeliveryHistoryJobsResponseBody : Tea.TeaModel {
    public class DeliveryHistoryJobs : Tea.TeaModel {
        public var createdTime: String?

        public var endTime: String?

        public var homeRegion: String?

        public var jobId: Int64?

        public var jobStatus: Int32?

        public var startTime: String?

        public var trailName: String?

        public var updatedTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.homeRegion != nil {
                map["HomeRegion"] = self.homeRegion!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobStatus != nil {
                map["JobStatus"] = self.jobStatus!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.trailName != nil {
                map["TrailName"] = self.trailName!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("HomeRegion") && dict["HomeRegion"] != nil {
                self.homeRegion = dict["HomeRegion"] as! String
            }
            if dict.keys.contains("JobId") && dict["JobId"] != nil {
                self.jobId = dict["JobId"] as! Int64
            }
            if dict.keys.contains("JobStatus") && dict["JobStatus"] != nil {
                self.jobStatus = dict["JobStatus"] as! Int32
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("TrailName") && dict["TrailName"] != nil {
                self.trailName = dict["TrailName"] as! String
            }
            if dict.keys.contains("UpdatedTime") && dict["UpdatedTime"] != nil {
                self.updatedTime = dict["UpdatedTime"] as! String
            }
        }
    }
    public var deliveryHistoryJobs: [ListDeliveryHistoryJobsResponseBody.DeliveryHistoryJobs]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.deliveryHistoryJobs != nil {
            var tmp : [Any] = []
            for k in self.deliveryHistoryJobs! {
                tmp.append(k.toMap())
            }
            map["DeliveryHistoryJobs"] = tmp
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
        if dict.keys.contains("DeliveryHistoryJobs") && dict["DeliveryHistoryJobs"] != nil {
            var tmp : [ListDeliveryHistoryJobsResponseBody.DeliveryHistoryJobs] = []
            for v in dict["DeliveryHistoryJobs"] as! [Any] {
                var model = ListDeliveryHistoryJobsResponseBody.DeliveryHistoryJobs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.deliveryHistoryJobs = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListDeliveryHistoryJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeliveryHistoryJobsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListDeliveryHistoryJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LookupEventsRequest : Tea.TeaModel {
    public class LookupAttribute : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var direction: String?

    public var endTime: String?

    public var lookupAttribute: [LookupEventsRequest.LookupAttribute]?

    public var maxResults: String?

    public var nextToken: String?

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
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.lookupAttribute != nil {
            var tmp : [Any] = []
            for k in self.lookupAttribute! {
                tmp.append(k.toMap())
            }
            map["LookupAttribute"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("LookupAttribute") && dict["LookupAttribute"] != nil {
            var tmp : [LookupEventsRequest.LookupAttribute] = []
            for v in dict["LookupAttribute"] as! [Any] {
                var model = LookupEventsRequest.LookupAttribute()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.lookupAttribute = tmp
        }
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
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
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Events") && dict["Events"] != nil {
            self.events = dict["Events"] as! [[String: Any]]
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Name") && dict["Name"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Name") && dict["Name"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = StopLoggingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGlobalEventsStorageRegionRequest : Tea.TeaModel {
    public var storageRegion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.storageRegion != nil {
            map["StorageRegion"] = self.storageRegion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("StorageRegion") && dict["StorageRegion"] != nil {
            self.storageRegion = dict["StorageRegion"] as! String
        }
    }
}

public class UpdateGlobalEventsStorageRegionResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateGlobalEventsStorageRegionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGlobalEventsStorageRegionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateGlobalEventsStorageRegionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTrailRequest : Tea.TeaModel {
    public var eventRW: String?

    public var maxComputeProjectArn: String?

    public var maxComputeWriteRoleArn: String?

    public var name: String?

    public var ossBucketName: String?

    public var ossKeyPrefix: String?

    public var ossWriteRoleArn: String?

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
        if self.maxComputeProjectArn != nil {
            map["MaxComputeProjectArn"] = self.maxComputeProjectArn!
        }
        if self.maxComputeWriteRoleArn != nil {
            map["MaxComputeWriteRoleArn"] = self.maxComputeWriteRoleArn!
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
        if self.ossWriteRoleArn != nil {
            map["OssWriteRoleArn"] = self.ossWriteRoleArn!
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
        if dict.keys.contains("EventRW") && dict["EventRW"] != nil {
            self.eventRW = dict["EventRW"] as! String
        }
        if dict.keys.contains("MaxComputeProjectArn") && dict["MaxComputeProjectArn"] != nil {
            self.maxComputeProjectArn = dict["MaxComputeProjectArn"] as! String
        }
        if dict.keys.contains("MaxComputeWriteRoleArn") && dict["MaxComputeWriteRoleArn"] != nil {
            self.maxComputeWriteRoleArn = dict["MaxComputeWriteRoleArn"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucketName") && dict["OssBucketName"] != nil {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssKeyPrefix") && dict["OssKeyPrefix"] != nil {
            self.ossKeyPrefix = dict["OssKeyPrefix"] as! String
        }
        if dict.keys.contains("OssWriteRoleArn") && dict["OssWriteRoleArn"] != nil {
            self.ossWriteRoleArn = dict["OssWriteRoleArn"] as! String
        }
        if dict.keys.contains("SlsProjectArn") && dict["SlsProjectArn"] != nil {
            self.slsProjectArn = dict["SlsProjectArn"] as! String
        }
        if dict.keys.contains("SlsWriteRoleArn") && dict["SlsWriteRoleArn"] != nil {
            self.slsWriteRoleArn = dict["SlsWriteRoleArn"] as! String
        }
        if dict.keys.contains("TrailRegion") && dict["TrailRegion"] != nil {
            self.trailRegion = dict["TrailRegion"] as! String
        }
    }
}

public class UpdateTrailResponseBody : Tea.TeaModel {
    public var eventRW: String?

    public var homeRegion: String?

    public var maxComputeProjectArn: String?

    public var maxComputeWriteRoleArn: String?

    public var name: String?

    public var ossBucketName: String?

    public var ossKeyPrefix: String?

    public var ossWriteRoleArn: String?

    public var requestId: String?

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
        if self.maxComputeProjectArn != nil {
            map["MaxComputeProjectArn"] = self.maxComputeProjectArn!
        }
        if self.maxComputeWriteRoleArn != nil {
            map["MaxComputeWriteRoleArn"] = self.maxComputeWriteRoleArn!
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
        if self.ossWriteRoleArn != nil {
            map["OssWriteRoleArn"] = self.ossWriteRoleArn!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("EventRW") && dict["EventRW"] != nil {
            self.eventRW = dict["EventRW"] as! String
        }
        if dict.keys.contains("HomeRegion") && dict["HomeRegion"] != nil {
            self.homeRegion = dict["HomeRegion"] as! String
        }
        if dict.keys.contains("MaxComputeProjectArn") && dict["MaxComputeProjectArn"] != nil {
            self.maxComputeProjectArn = dict["MaxComputeProjectArn"] as! String
        }
        if dict.keys.contains("MaxComputeWriteRoleArn") && dict["MaxComputeWriteRoleArn"] != nil {
            self.maxComputeWriteRoleArn = dict["MaxComputeWriteRoleArn"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OssBucketName") && dict["OssBucketName"] != nil {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssKeyPrefix") && dict["OssKeyPrefix"] != nil {
            self.ossKeyPrefix = dict["OssKeyPrefix"] as! String
        }
        if dict.keys.contains("OssWriteRoleArn") && dict["OssWriteRoleArn"] != nil {
            self.ossWriteRoleArn = dict["OssWriteRoleArn"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SlsProjectArn") && dict["SlsProjectArn"] != nil {
            self.slsProjectArn = dict["SlsProjectArn"] as! String
        }
        if dict.keys.contains("SlsWriteRoleArn") && dict["SlsWriteRoleArn"] != nil {
            self.slsWriteRoleArn = dict["SlsWriteRoleArn"] as! String
        }
        if dict.keys.contains("TrailRegion") && dict["TrailRegion"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateTrailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
