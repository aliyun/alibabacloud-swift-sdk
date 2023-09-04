import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAndAnalyzeNetworkPathRequest : Tea.TeaModel {
    public var protocol_: String?

    public var regionId: String?

    public var sourceId: String?

    public var sourceIpAddress: String?

    public var sourcePort: Int32?

    public var sourceType: String?

    public var targetId: String?

    public var targetIpAddress: String?

    public var targetPort: Int32?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceIpAddress != nil {
            map["SourceIpAddress"] = self.sourceIpAddress!
        }
        if self.sourcePort != nil {
            map["SourcePort"] = self.sourcePort!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetIpAddress != nil {
            map["TargetIpAddress"] = self.targetIpAddress!
        }
        if self.targetPort != nil {
            map["TargetPort"] = self.targetPort!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceIpAddress") && dict["SourceIpAddress"] != nil {
            self.sourceIpAddress = dict["SourceIpAddress"] as! String
        }
        if dict.keys.contains("SourcePort") && dict["SourcePort"] != nil {
            self.sourcePort = dict["SourcePort"] as! Int32
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("TargetId") && dict["TargetId"] != nil {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetIpAddress") && dict["TargetIpAddress"] != nil {
            self.targetIpAddress = dict["TargetIpAddress"] as! String
        }
        if dict.keys.contains("TargetPort") && dict["TargetPort"] != nil {
            self.targetPort = dict["TargetPort"] as! Int32
        }
        if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class CreateAndAnalyzeNetworkPathResponseBody : Tea.TeaModel {
    public var networkReachableAnalysisId: String?

    public var protocol_: String?

    public var requestId: String?

    public var sourceId: String?

    public var sourceIpAddress: String?

    public var sourcePort: String?

    public var sourceType: String?

    public var targetId: String?

    public var targetIpAddress: String?

    public var targetPort: String?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkReachableAnalysisId != nil {
            map["NetworkReachableAnalysisId"] = self.networkReachableAnalysisId!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceIpAddress != nil {
            map["SourceIpAddress"] = self.sourceIpAddress!
        }
        if self.sourcePort != nil {
            map["SourcePort"] = self.sourcePort!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetIpAddress != nil {
            map["TargetIpAddress"] = self.targetIpAddress!
        }
        if self.targetPort != nil {
            map["TargetPort"] = self.targetPort!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkReachableAnalysisId") && dict["NetworkReachableAnalysisId"] != nil {
            self.networkReachableAnalysisId = dict["NetworkReachableAnalysisId"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceIpAddress") && dict["SourceIpAddress"] != nil {
            self.sourceIpAddress = dict["SourceIpAddress"] as! String
        }
        if dict.keys.contains("SourcePort") && dict["SourcePort"] != nil {
            self.sourcePort = dict["SourcePort"] as! String
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("TargetId") && dict["TargetId"] != nil {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetIpAddress") && dict["TargetIpAddress"] != nil {
            self.targetIpAddress = dict["TargetIpAddress"] as! String
        }
        if dict.keys.contains("TargetPort") && dict["TargetPort"] != nil {
            self.targetPort = dict["TargetPort"] as! String
        }
        if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class CreateAndAnalyzeNetworkPathResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAndAnalyzeNetworkPathResponseBody?

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
            var model = CreateAndAnalyzeNetworkPathResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateNetworkPathRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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
    public var networkPathDescription: String?

    public var networkPathName: String?

    public var protocol_: String?

    public var regionId: String?

    public var sourceId: String?

    public var sourceIpAddress: String?

    public var sourcePort: Int32?

    public var sourceType: String?

    public var tag: [CreateNetworkPathRequest.Tag]?

    public var targetId: String?

    public var targetIpAddress: String?

    public var targetPort: Int32?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkPathDescription != nil {
            map["NetworkPathDescription"] = self.networkPathDescription!
        }
        if self.networkPathName != nil {
            map["NetworkPathName"] = self.networkPathName!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.sourceIpAddress != nil {
            map["SourceIpAddress"] = self.sourceIpAddress!
        }
        if self.sourcePort != nil {
            map["SourcePort"] = self.sourcePort!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetIpAddress != nil {
            map["TargetIpAddress"] = self.targetIpAddress!
        }
        if self.targetPort != nil {
            map["TargetPort"] = self.targetPort!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkPathDescription") && dict["NetworkPathDescription"] != nil {
            self.networkPathDescription = dict["NetworkPathDescription"] as! String
        }
        if dict.keys.contains("NetworkPathName") && dict["NetworkPathName"] != nil {
            self.networkPathName = dict["NetworkPathName"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceIpAddress") && dict["SourceIpAddress"] != nil {
            self.sourceIpAddress = dict["SourceIpAddress"] as! String
        }
        if dict.keys.contains("SourcePort") && dict["SourcePort"] != nil {
            self.sourcePort = dict["SourcePort"] as! Int32
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateNetworkPathRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateNetworkPathRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TargetId") && dict["TargetId"] != nil {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetIpAddress") && dict["TargetIpAddress"] != nil {
            self.targetIpAddress = dict["TargetIpAddress"] as! String
        }
        if dict.keys.contains("TargetPort") && dict["TargetPort"] != nil {
            self.targetPort = dict["TargetPort"] as! Int32
        }
        if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class CreateNetworkPathResponseBody : Tea.TeaModel {
    public var networkPathId: String?

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
        if self.networkPathId != nil {
            map["NetworkPathId"] = self.networkPathId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkPathId") && dict["NetworkPathId"] != nil {
            self.networkPathId = dict["NetworkPathId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateNetworkPathResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNetworkPathResponseBody?

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
            var model = CreateNetworkPathResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateNetworkReachableAnalysisRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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
    public var networkPathId: String?

    public var regionId: String?

    public var tag: [CreateNetworkReachableAnalysisRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkPathId != nil {
            map["NetworkPathId"] = self.networkPathId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkPathId") && dict["NetworkPathId"] != nil {
            self.networkPathId = dict["NetworkPathId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateNetworkReachableAnalysisRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateNetworkReachableAnalysisRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class CreateNetworkReachableAnalysisResponseBody : Tea.TeaModel {
    public var networkReachableAnalysisId: String?

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
        if self.networkReachableAnalysisId != nil {
            map["NetworkReachableAnalysisId"] = self.networkReachableAnalysisId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkReachableAnalysisId") && dict["NetworkReachableAnalysisId"] != nil {
            self.networkReachableAnalysisId = dict["NetworkReachableAnalysisId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateNetworkReachableAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNetworkReachableAnalysisResponseBody?

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
            var model = CreateNetworkReachableAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNetworkPathRequest : Tea.TeaModel {
    public var networkPathIds: [String]?

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
        if self.networkPathIds != nil {
            map["NetworkPathIds"] = self.networkPathIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkPathIds") && dict["NetworkPathIds"] != nil {
            self.networkPathIds = dict["NetworkPathIds"] as! [String]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteNetworkPathShrinkRequest : Tea.TeaModel {
    public var networkPathIdsShrink: String?

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
        if self.networkPathIdsShrink != nil {
            map["NetworkPathIds"] = self.networkPathIdsShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkPathIds") && dict["NetworkPathIds"] != nil {
            self.networkPathIdsShrink = dict["NetworkPathIds"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteNetworkPathResponseBody : Tea.TeaModel {
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

public class DeleteNetworkPathResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNetworkPathResponseBody?

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
            var model = DeleteNetworkPathResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNetworkReachableAnalysisRequest : Tea.TeaModel {
    public var networkReachableAnalysisIds: [String]?

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
        if self.networkReachableAnalysisIds != nil {
            map["NetworkReachableAnalysisIds"] = self.networkReachableAnalysisIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkReachableAnalysisIds") && dict["NetworkReachableAnalysisIds"] != nil {
            self.networkReachableAnalysisIds = dict["NetworkReachableAnalysisIds"] as! [String]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteNetworkReachableAnalysisShrinkRequest : Tea.TeaModel {
    public var networkReachableAnalysisIdsShrink: String?

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
        if self.networkReachableAnalysisIdsShrink != nil {
            map["NetworkReachableAnalysisIds"] = self.networkReachableAnalysisIdsShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkReachableAnalysisIds") && dict["NetworkReachableAnalysisIds"] != nil {
            self.networkReachableAnalysisIdsShrink = dict["NetworkReachableAnalysisIds"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteNetworkReachableAnalysisResponseBody : Tea.TeaModel {
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

public class DeleteNetworkReachableAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNetworkReachableAnalysisResponseBody?

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
            var model = DeleteNetworkReachableAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInternetTupleRequest : Tea.TeaModel {
    public var accountIds: [String]?

    public var beginTime: Int64?

    public var cloudIp: String?

    public var cloudIsp: String?

    public var cloudPort: String?

    public var direction: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var instanceList: [String]?

    public var orderBy: String?

    public var otherCity: String?

    public var otherCountry: String?

    public var otherIp: String?

    public var otherIsp: String?

    public var otherPort: String?

    public var protocol_: String?

    public var regionId: String?

    public var sort: String?

    public var topN: Int32?

    public var tupleType: Int32?

    public var useMultiAccount: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIds != nil {
            map["AccountIds"] = self.accountIds!
        }
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.cloudIp != nil {
            map["CloudIp"] = self.cloudIp!
        }
        if self.cloudIsp != nil {
            map["CloudIsp"] = self.cloudIsp!
        }
        if self.cloudPort != nil {
            map["CloudPort"] = self.cloudPort!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceList != nil {
            map["InstanceList"] = self.instanceList!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.otherCity != nil {
            map["OtherCity"] = self.otherCity!
        }
        if self.otherCountry != nil {
            map["OtherCountry"] = self.otherCountry!
        }
        if self.otherIp != nil {
            map["OtherIp"] = self.otherIp!
        }
        if self.otherIsp != nil {
            map["OtherIsp"] = self.otherIsp!
        }
        if self.otherPort != nil {
            map["OtherPort"] = self.otherPort!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.topN != nil {
            map["TopN"] = self.topN!
        }
        if self.tupleType != nil {
            map["TupleType"] = self.tupleType!
        }
        if self.useMultiAccount != nil {
            map["UseMultiAccount"] = self.useMultiAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") && dict["AccountIds"] != nil {
            self.accountIds = dict["AccountIds"] as! [String]
        }
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CloudIp") && dict["CloudIp"] != nil {
            self.cloudIp = dict["CloudIp"] as! String
        }
        if dict.keys.contains("CloudIsp") && dict["CloudIsp"] != nil {
            self.cloudIsp = dict["CloudIsp"] as! String
        }
        if dict.keys.contains("CloudPort") && dict["CloudPort"] != nil {
            self.cloudPort = dict["CloudPort"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceList") && dict["InstanceList"] != nil {
            self.instanceList = dict["InstanceList"] as! [String]
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OtherCity") && dict["OtherCity"] != nil {
            self.otherCity = dict["OtherCity"] as! String
        }
        if dict.keys.contains("OtherCountry") && dict["OtherCountry"] != nil {
            self.otherCountry = dict["OtherCountry"] as! String
        }
        if dict.keys.contains("OtherIp") && dict["OtherIp"] != nil {
            self.otherIp = dict["OtherIp"] as! String
        }
        if dict.keys.contains("OtherIsp") && dict["OtherIsp"] != nil {
            self.otherIsp = dict["OtherIsp"] as! String
        }
        if dict.keys.contains("OtherPort") && dict["OtherPort"] != nil {
            self.otherPort = dict["OtherPort"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") && dict["Sort"] != nil {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("TopN") && dict["TopN"] != nil {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("TupleType") && dict["TupleType"] != nil {
            self.tupleType = dict["TupleType"] as! Int32
        }
        if dict.keys.contains("UseMultiAccount") && dict["UseMultiAccount"] != nil {
            self.useMultiAccount = dict["UseMultiAccount"] as! Bool
        }
    }
}

public class GetInternetTupleShrinkRequest : Tea.TeaModel {
    public var accountIds: [String]?

    public var beginTime: Int64?

    public var cloudIp: String?

    public var cloudIsp: String?

    public var cloudPort: String?

    public var direction: String?

    public var endTime: Int64?

    public var instanceId: String?

    public var instanceListShrink: String?

    public var orderBy: String?

    public var otherCity: String?

    public var otherCountry: String?

    public var otherIp: String?

    public var otherIsp: String?

    public var otherPort: String?

    public var protocol_: String?

    public var regionId: String?

    public var sort: String?

    public var topN: Int32?

    public var tupleType: Int32?

    public var useMultiAccount: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIds != nil {
            map["AccountIds"] = self.accountIds!
        }
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.cloudIp != nil {
            map["CloudIp"] = self.cloudIp!
        }
        if self.cloudIsp != nil {
            map["CloudIsp"] = self.cloudIsp!
        }
        if self.cloudPort != nil {
            map["CloudPort"] = self.cloudPort!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceListShrink != nil {
            map["InstanceList"] = self.instanceListShrink!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.otherCity != nil {
            map["OtherCity"] = self.otherCity!
        }
        if self.otherCountry != nil {
            map["OtherCountry"] = self.otherCountry!
        }
        if self.otherIp != nil {
            map["OtherIp"] = self.otherIp!
        }
        if self.otherIsp != nil {
            map["OtherIsp"] = self.otherIsp!
        }
        if self.otherPort != nil {
            map["OtherPort"] = self.otherPort!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.topN != nil {
            map["TopN"] = self.topN!
        }
        if self.tupleType != nil {
            map["TupleType"] = self.tupleType!
        }
        if self.useMultiAccount != nil {
            map["UseMultiAccount"] = self.useMultiAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") && dict["AccountIds"] != nil {
            self.accountIds = dict["AccountIds"] as! [String]
        }
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CloudIp") && dict["CloudIp"] != nil {
            self.cloudIp = dict["CloudIp"] as! String
        }
        if dict.keys.contains("CloudIsp") && dict["CloudIsp"] != nil {
            self.cloudIsp = dict["CloudIsp"] as! String
        }
        if dict.keys.contains("CloudPort") && dict["CloudPort"] != nil {
            self.cloudPort = dict["CloudPort"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceList") && dict["InstanceList"] != nil {
            self.instanceListShrink = dict["InstanceList"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OtherCity") && dict["OtherCity"] != nil {
            self.otherCity = dict["OtherCity"] as! String
        }
        if dict.keys.contains("OtherCountry") && dict["OtherCountry"] != nil {
            self.otherCountry = dict["OtherCountry"] as! String
        }
        if dict.keys.contains("OtherIp") && dict["OtherIp"] != nil {
            self.otherIp = dict["OtherIp"] as! String
        }
        if dict.keys.contains("OtherIsp") && dict["OtherIsp"] != nil {
            self.otherIsp = dict["OtherIsp"] as! String
        }
        if dict.keys.contains("OtherPort") && dict["OtherPort"] != nil {
            self.otherPort = dict["OtherPort"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") && dict["Sort"] != nil {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("TopN") && dict["TopN"] != nil {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("TupleType") && dict["TupleType"] != nil {
            self.tupleType = dict["TupleType"] as! Int32
        }
        if dict.keys.contains("UseMultiAccount") && dict["UseMultiAccount"] != nil {
            self.useMultiAccount = dict["UseMultiAccount"] as! Bool
        }
    }
}

public class GetInternetTupleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessRegion: String?

        public var beginTime: String?

        public var byteCount: Double?

        public var cloudCity: String?

        public var cloudCountry: String?

        public var cloudIp: String?

        public var cloudIsp: String?

        public var cloudPort: String?

        public var cloudProduct: String?

        public var cloudProvince: String?

        public var direction: String?

        public var inByteCount: Double?

        public var inOutOrderCount: Double?

        public var inPacketCount: Double?

        public var inRetranCount: Double?

        public var instanceId: String?

        public var otherCity: String?

        public var otherCountry: String?

        public var otherIp: String?

        public var otherIsp: String?

        public var otherPort: String?

        public var otherProduct: String?

        public var otherProvince: String?

        public var outByteCount: Double?

        public var outOrderCount: Double?

        public var outOutOrderCount: Double?

        public var outPacketCount: Double?

        public var outRetranCount: Double?

        public var packetCount: Double?

        public var protocol_: String?

        public var retranCount: Double?

        public var rtt: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessRegion != nil {
                map["AccessRegion"] = self.accessRegion!
            }
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.byteCount != nil {
                map["ByteCount"] = self.byteCount!
            }
            if self.cloudCity != nil {
                map["CloudCity"] = self.cloudCity!
            }
            if self.cloudCountry != nil {
                map["CloudCountry"] = self.cloudCountry!
            }
            if self.cloudIp != nil {
                map["CloudIp"] = self.cloudIp!
            }
            if self.cloudIsp != nil {
                map["CloudIsp"] = self.cloudIsp!
            }
            if self.cloudPort != nil {
                map["CloudPort"] = self.cloudPort!
            }
            if self.cloudProduct != nil {
                map["CloudProduct"] = self.cloudProduct!
            }
            if self.cloudProvince != nil {
                map["CloudProvince"] = self.cloudProvince!
            }
            if self.direction != nil {
                map["Direction"] = self.direction!
            }
            if self.inByteCount != nil {
                map["InByteCount"] = self.inByteCount!
            }
            if self.inOutOrderCount != nil {
                map["InOutOrderCount"] = self.inOutOrderCount!
            }
            if self.inPacketCount != nil {
                map["InPacketCount"] = self.inPacketCount!
            }
            if self.inRetranCount != nil {
                map["InRetranCount"] = self.inRetranCount!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.otherCity != nil {
                map["OtherCity"] = self.otherCity!
            }
            if self.otherCountry != nil {
                map["OtherCountry"] = self.otherCountry!
            }
            if self.otherIp != nil {
                map["OtherIp"] = self.otherIp!
            }
            if self.otherIsp != nil {
                map["OtherIsp"] = self.otherIsp!
            }
            if self.otherPort != nil {
                map["OtherPort"] = self.otherPort!
            }
            if self.otherProduct != nil {
                map["OtherProduct"] = self.otherProduct!
            }
            if self.otherProvince != nil {
                map["OtherProvince"] = self.otherProvince!
            }
            if self.outByteCount != nil {
                map["OutByteCount"] = self.outByteCount!
            }
            if self.outOrderCount != nil {
                map["OutOrderCount"] = self.outOrderCount!
            }
            if self.outOutOrderCount != nil {
                map["OutOutOrderCount"] = self.outOutOrderCount!
            }
            if self.outPacketCount != nil {
                map["OutPacketCount"] = self.outPacketCount!
            }
            if self.outRetranCount != nil {
                map["OutRetranCount"] = self.outRetranCount!
            }
            if self.packetCount != nil {
                map["PacketCount"] = self.packetCount!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.retranCount != nil {
                map["RetranCount"] = self.retranCount!
            }
            if self.rtt != nil {
                map["Rtt"] = self.rtt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessRegion") && dict["AccessRegion"] != nil {
                self.accessRegion = dict["AccessRegion"] as! String
            }
            if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
                self.beginTime = dict["BeginTime"] as! String
            }
            if dict.keys.contains("ByteCount") && dict["ByteCount"] != nil {
                self.byteCount = dict["ByteCount"] as! Double
            }
            if dict.keys.contains("CloudCity") && dict["CloudCity"] != nil {
                self.cloudCity = dict["CloudCity"] as! String
            }
            if dict.keys.contains("CloudCountry") && dict["CloudCountry"] != nil {
                self.cloudCountry = dict["CloudCountry"] as! String
            }
            if dict.keys.contains("CloudIp") && dict["CloudIp"] != nil {
                self.cloudIp = dict["CloudIp"] as! String
            }
            if dict.keys.contains("CloudIsp") && dict["CloudIsp"] != nil {
                self.cloudIsp = dict["CloudIsp"] as! String
            }
            if dict.keys.contains("CloudPort") && dict["CloudPort"] != nil {
                self.cloudPort = dict["CloudPort"] as! String
            }
            if dict.keys.contains("CloudProduct") && dict["CloudProduct"] != nil {
                self.cloudProduct = dict["CloudProduct"] as! String
            }
            if dict.keys.contains("CloudProvince") && dict["CloudProvince"] != nil {
                self.cloudProvince = dict["CloudProvince"] as! String
            }
            if dict.keys.contains("Direction") && dict["Direction"] != nil {
                self.direction = dict["Direction"] as! String
            }
            if dict.keys.contains("InByteCount") && dict["InByteCount"] != nil {
                self.inByteCount = dict["InByteCount"] as! Double
            }
            if dict.keys.contains("InOutOrderCount") && dict["InOutOrderCount"] != nil {
                self.inOutOrderCount = dict["InOutOrderCount"] as! Double
            }
            if dict.keys.contains("InPacketCount") && dict["InPacketCount"] != nil {
                self.inPacketCount = dict["InPacketCount"] as! Double
            }
            if dict.keys.contains("InRetranCount") && dict["InRetranCount"] != nil {
                self.inRetranCount = dict["InRetranCount"] as! Double
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OtherCity") && dict["OtherCity"] != nil {
                self.otherCity = dict["OtherCity"] as! String
            }
            if dict.keys.contains("OtherCountry") && dict["OtherCountry"] != nil {
                self.otherCountry = dict["OtherCountry"] as! String
            }
            if dict.keys.contains("OtherIp") && dict["OtherIp"] != nil {
                self.otherIp = dict["OtherIp"] as! String
            }
            if dict.keys.contains("OtherIsp") && dict["OtherIsp"] != nil {
                self.otherIsp = dict["OtherIsp"] as! String
            }
            if dict.keys.contains("OtherPort") && dict["OtherPort"] != nil {
                self.otherPort = dict["OtherPort"] as! String
            }
            if dict.keys.contains("OtherProduct") && dict["OtherProduct"] != nil {
                self.otherProduct = dict["OtherProduct"] as! String
            }
            if dict.keys.contains("OtherProvince") && dict["OtherProvince"] != nil {
                self.otherProvince = dict["OtherProvince"] as! String
            }
            if dict.keys.contains("OutByteCount") && dict["OutByteCount"] != nil {
                self.outByteCount = dict["OutByteCount"] as! Double
            }
            if dict.keys.contains("OutOrderCount") && dict["OutOrderCount"] != nil {
                self.outOrderCount = dict["OutOrderCount"] as! Double
            }
            if dict.keys.contains("OutOutOrderCount") && dict["OutOutOrderCount"] != nil {
                self.outOutOrderCount = dict["OutOutOrderCount"] as! Double
            }
            if dict.keys.contains("OutPacketCount") && dict["OutPacketCount"] != nil {
                self.outPacketCount = dict["OutPacketCount"] as! Double
            }
            if dict.keys.contains("OutRetranCount") && dict["OutRetranCount"] != nil {
                self.outRetranCount = dict["OutRetranCount"] as! Double
            }
            if dict.keys.contains("PacketCount") && dict["PacketCount"] != nil {
                self.packetCount = dict["PacketCount"] as! Double
            }
            if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("RetranCount") && dict["RetranCount"] != nil {
                self.retranCount = dict["RetranCount"] as! Double
            }
            if dict.keys.contains("Rtt") && dict["Rtt"] != nil {
                self.rtt = dict["Rtt"] as! Double
            }
        }
    }
    public var data: [GetInternetTupleResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [GetInternetTupleResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetInternetTupleResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetInternetTupleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInternetTupleResponseBody?

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
            var model = GetInternetTupleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNatTopNRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var endTime: Int64?

    public var ip: String?

    public var natGatewayId: String?

    public var orderBy: String?

    public var regionId: String?

    public var topN: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.natGatewayId != nil {
            map["NatGatewayId"] = self.natGatewayId!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.topN != nil {
            map["TopN"] = self.topN!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Ip") && dict["Ip"] != nil {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("NatGatewayId") && dict["NatGatewayId"] != nil {
            self.natGatewayId = dict["NatGatewayId"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TopN") && dict["TopN"] != nil {
            self.topN = dict["TopN"] as! Int32
        }
    }
}

public class GetNatTopNResponseBody : Tea.TeaModel {
    public class NatGatewayTopN : Tea.TeaModel {
        public var activeSessionCount: Double?

        public var inBps: Double?

        public var inFlowPerMinute: Double?

        public var inPps: Double?

        public var ip: String?

        public var newSessionPerSecond: Double?

        public var outBps: Double?

        public var outFlowPerMinute: Double?

        public var outPps: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeSessionCount != nil {
                map["ActiveSessionCount"] = self.activeSessionCount!
            }
            if self.inBps != nil {
                map["InBps"] = self.inBps!
            }
            if self.inFlowPerMinute != nil {
                map["InFlowPerMinute"] = self.inFlowPerMinute!
            }
            if self.inPps != nil {
                map["InPps"] = self.inPps!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.newSessionPerSecond != nil {
                map["NewSessionPerSecond"] = self.newSessionPerSecond!
            }
            if self.outBps != nil {
                map["OutBps"] = self.outBps!
            }
            if self.outFlowPerMinute != nil {
                map["OutFlowPerMinute"] = self.outFlowPerMinute!
            }
            if self.outPps != nil {
                map["OutPps"] = self.outPps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveSessionCount") && dict["ActiveSessionCount"] != nil {
                self.activeSessionCount = dict["ActiveSessionCount"] as! Double
            }
            if dict.keys.contains("InBps") && dict["InBps"] != nil {
                self.inBps = dict["InBps"] as! Double
            }
            if dict.keys.contains("InFlowPerMinute") && dict["InFlowPerMinute"] != nil {
                self.inFlowPerMinute = dict["InFlowPerMinute"] as! Double
            }
            if dict.keys.contains("InPps") && dict["InPps"] != nil {
                self.inPps = dict["InPps"] as! Double
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("NewSessionPerSecond") && dict["NewSessionPerSecond"] != nil {
                self.newSessionPerSecond = dict["NewSessionPerSecond"] as! Double
            }
            if dict.keys.contains("OutBps") && dict["OutBps"] != nil {
                self.outBps = dict["OutBps"] as! Double
            }
            if dict.keys.contains("OutFlowPerMinute") && dict["OutFlowPerMinute"] != nil {
                self.outFlowPerMinute = dict["OutFlowPerMinute"] as! Double
            }
            if dict.keys.contains("OutPps") && dict["OutPps"] != nil {
                self.outPps = dict["OutPps"] as! Double
            }
        }
    }
    public var isTopNOpen: Bool?

    public var natGatewayTopN: [GetNatTopNResponseBody.NatGatewayTopN]?

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
        if self.isTopNOpen != nil {
            map["IsTopNOpen"] = self.isTopNOpen!
        }
        if self.natGatewayTopN != nil {
            var tmp : [Any] = []
            for k in self.natGatewayTopN! {
                tmp.append(k.toMap())
            }
            map["NatGatewayTopN"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTopNOpen") && dict["IsTopNOpen"] != nil {
            self.isTopNOpen = dict["IsTopNOpen"] as! Bool
        }
        if dict.keys.contains("NatGatewayTopN") && dict["NatGatewayTopN"] != nil {
            var tmp : [GetNatTopNResponseBody.NatGatewayTopN] = []
            for v in dict["NatGatewayTopN"] as! [Any] {
                var model = GetNatTopNResponseBody.NatGatewayTopN()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.natGatewayTopN = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetNatTopNResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNatTopNResponseBody?

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
            var model = GetNatTopNResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNetworkReachableAnalysisRequest : Tea.TeaModel {
    public var networkReachableAnalysisId: String?

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
        if self.networkReachableAnalysisId != nil {
            map["NetworkReachableAnalysisId"] = self.networkReachableAnalysisId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NetworkReachableAnalysisId") && dict["NetworkReachableAnalysisId"] != nil {
            self.networkReachableAnalysisId = dict["NetworkReachableAnalysisId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetNetworkReachableAnalysisResponseBody : Tea.TeaModel {
    public var aliUid: Int64?

    public var createTime: String?

    public var networkPathId: String?

    public var networkPathParameter: String?

    public var networkReachableAnalysisId: String?

    public var networkReachableAnalysisResult: String?

    public var networkReachableAnalysisStatus: String?

    public var reachable: Bool?

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
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.networkPathId != nil {
            map["NetworkPathId"] = self.networkPathId!
        }
        if self.networkPathParameter != nil {
            map["NetworkPathParameter"] = self.networkPathParameter!
        }
        if self.networkReachableAnalysisId != nil {
            map["NetworkReachableAnalysisId"] = self.networkReachableAnalysisId!
        }
        if self.networkReachableAnalysisResult != nil {
            map["NetworkReachableAnalysisResult"] = self.networkReachableAnalysisResult!
        }
        if self.networkReachableAnalysisStatus != nil {
            map["NetworkReachableAnalysisStatus"] = self.networkReachableAnalysisStatus!
        }
        if self.reachable != nil {
            map["Reachable"] = self.reachable!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("NetworkPathId") && dict["NetworkPathId"] != nil {
            self.networkPathId = dict["NetworkPathId"] as! String
        }
        if dict.keys.contains("NetworkPathParameter") && dict["NetworkPathParameter"] != nil {
            self.networkPathParameter = dict["NetworkPathParameter"] as! String
        }
        if dict.keys.contains("NetworkReachableAnalysisId") && dict["NetworkReachableAnalysisId"] != nil {
            self.networkReachableAnalysisId = dict["NetworkReachableAnalysisId"] as! String
        }
        if dict.keys.contains("NetworkReachableAnalysisResult") && dict["NetworkReachableAnalysisResult"] != nil {
            self.networkReachableAnalysisResult = dict["NetworkReachableAnalysisResult"] as! String
        }
        if dict.keys.contains("NetworkReachableAnalysisStatus") && dict["NetworkReachableAnalysisStatus"] != nil {
            self.networkReachableAnalysisStatus = dict["NetworkReachableAnalysisStatus"] as! String
        }
        if dict.keys.contains("Reachable") && dict["Reachable"] != nil {
            self.reachable = dict["Reachable"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetNetworkReachableAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNetworkReachableAnalysisResponseBody?

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
            var model = GetNetworkReachableAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTransitRouterFlowTopNRequest : Tea.TeaModel {
    public var accountIds: [String]?

    public var bandwithPackageId: String?

    public var beginTime: Int64?

    public var cenId: String?

    public var direction: String?

    public var endTime: Int64?

    public var groupBy: String?

    public var orderBy: String?

    public var otherIp: String?

    public var otherPort: String?

    public var otherRegion: String?

    public var protocol_: String?

    public var sort: String?

    public var thisIp: String?

    public var thisPort: String?

    public var thisRegion: String?

    public var topN: Int32?

    public var useMultiAccount: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIds != nil {
            map["AccountIds"] = self.accountIds!
        }
        if self.bandwithPackageId != nil {
            map["BandwithPackageId"] = self.bandwithPackageId!
        }
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupBy != nil {
            map["GroupBy"] = self.groupBy!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.otherIp != nil {
            map["OtherIp"] = self.otherIp!
        }
        if self.otherPort != nil {
            map["OtherPort"] = self.otherPort!
        }
        if self.otherRegion != nil {
            map["OtherRegion"] = self.otherRegion!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.thisIp != nil {
            map["ThisIp"] = self.thisIp!
        }
        if self.thisPort != nil {
            map["ThisPort"] = self.thisPort!
        }
        if self.thisRegion != nil {
            map["ThisRegion"] = self.thisRegion!
        }
        if self.topN != nil {
            map["TopN"] = self.topN!
        }
        if self.useMultiAccount != nil {
            map["UseMultiAccount"] = self.useMultiAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") && dict["AccountIds"] != nil {
            self.accountIds = dict["AccountIds"] as! [String]
        }
        if dict.keys.contains("BandwithPackageId") && dict["BandwithPackageId"] != nil {
            self.bandwithPackageId = dict["BandwithPackageId"] as! String
        }
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CenId") && dict["CenId"] != nil {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("GroupBy") && dict["GroupBy"] != nil {
            self.groupBy = dict["GroupBy"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OtherIp") && dict["OtherIp"] != nil {
            self.otherIp = dict["OtherIp"] as! String
        }
        if dict.keys.contains("OtherPort") && dict["OtherPort"] != nil {
            self.otherPort = dict["OtherPort"] as! String
        }
        if dict.keys.contains("OtherRegion") && dict["OtherRegion"] != nil {
            self.otherRegion = dict["OtherRegion"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("Sort") && dict["Sort"] != nil {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("ThisIp") && dict["ThisIp"] != nil {
            self.thisIp = dict["ThisIp"] as! String
        }
        if dict.keys.contains("ThisPort") && dict["ThisPort"] != nil {
            self.thisPort = dict["ThisPort"] as! String
        }
        if dict.keys.contains("ThisRegion") && dict["ThisRegion"] != nil {
            self.thisRegion = dict["ThisRegion"] as! String
        }
        if dict.keys.contains("TopN") && dict["TopN"] != nil {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("UseMultiAccount") && dict["UseMultiAccount"] != nil {
            self.useMultiAccount = dict["UseMultiAccount"] as! Bool
        }
    }
}

public class GetTransitRouterFlowTopNShrinkRequest : Tea.TeaModel {
    public var accountIdsShrink: String?

    public var bandwithPackageId: String?

    public var beginTime: Int64?

    public var cenId: String?

    public var direction: String?

    public var endTime: Int64?

    public var groupBy: String?

    public var orderBy: String?

    public var otherIp: String?

    public var otherPort: String?

    public var otherRegion: String?

    public var protocol_: String?

    public var sort: String?

    public var thisIp: String?

    public var thisPort: String?

    public var thisRegion: String?

    public var topN: Int32?

    public var useMultiAccount: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIdsShrink != nil {
            map["AccountIds"] = self.accountIdsShrink!
        }
        if self.bandwithPackageId != nil {
            map["BandwithPackageId"] = self.bandwithPackageId!
        }
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupBy != nil {
            map["GroupBy"] = self.groupBy!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.otherIp != nil {
            map["OtherIp"] = self.otherIp!
        }
        if self.otherPort != nil {
            map["OtherPort"] = self.otherPort!
        }
        if self.otherRegion != nil {
            map["OtherRegion"] = self.otherRegion!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.thisIp != nil {
            map["ThisIp"] = self.thisIp!
        }
        if self.thisPort != nil {
            map["ThisPort"] = self.thisPort!
        }
        if self.thisRegion != nil {
            map["ThisRegion"] = self.thisRegion!
        }
        if self.topN != nil {
            map["TopN"] = self.topN!
        }
        if self.useMultiAccount != nil {
            map["UseMultiAccount"] = self.useMultiAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") && dict["AccountIds"] != nil {
            self.accountIdsShrink = dict["AccountIds"] as! String
        }
        if dict.keys.contains("BandwithPackageId") && dict["BandwithPackageId"] != nil {
            self.bandwithPackageId = dict["BandwithPackageId"] as! String
        }
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CenId") && dict["CenId"] != nil {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("GroupBy") && dict["GroupBy"] != nil {
            self.groupBy = dict["GroupBy"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OtherIp") && dict["OtherIp"] != nil {
            self.otherIp = dict["OtherIp"] as! String
        }
        if dict.keys.contains("OtherPort") && dict["OtherPort"] != nil {
            self.otherPort = dict["OtherPort"] as! String
        }
        if dict.keys.contains("OtherRegion") && dict["OtherRegion"] != nil {
            self.otherRegion = dict["OtherRegion"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("Sort") && dict["Sort"] != nil {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("ThisIp") && dict["ThisIp"] != nil {
            self.thisIp = dict["ThisIp"] as! String
        }
        if dict.keys.contains("ThisPort") && dict["ThisPort"] != nil {
            self.thisPort = dict["ThisPort"] as! String
        }
        if dict.keys.contains("ThisRegion") && dict["ThisRegion"] != nil {
            self.thisRegion = dict["ThisRegion"] as! String
        }
        if dict.keys.contains("TopN") && dict["TopN"] != nil {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("UseMultiAccount") && dict["UseMultiAccount"] != nil {
            self.useMultiAccount = dict["UseMultiAccount"] as! Bool
        }
    }
}

public class GetTransitRouterFlowTopNResponseBody : Tea.TeaModel {
    public class TransitRouterFlowTopN : Tea.TeaModel {
        public var accountId: String?

        public var bandwithPackageId: String?

        public var bytes: Double?

        public var cenId: String?

        public var endTime: String?

        public var otherIp: String?

        public var otherPort: String?

        public var otherRegion: String?

        public var packets: Double?

        public var protocol_: String?

        public var startTime: String?

        public var thisIp: String?

        public var thisPort: String?

        public var thisRegion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.bandwithPackageId != nil {
                map["BandwithPackageId"] = self.bandwithPackageId!
            }
            if self.bytes != nil {
                map["Bytes"] = self.bytes!
            }
            if self.cenId != nil {
                map["CenId"] = self.cenId!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.otherIp != nil {
                map["OtherIp"] = self.otherIp!
            }
            if self.otherPort != nil {
                map["OtherPort"] = self.otherPort!
            }
            if self.otherRegion != nil {
                map["OtherRegion"] = self.otherRegion!
            }
            if self.packets != nil {
                map["Packets"] = self.packets!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.thisIp != nil {
                map["ThisIp"] = self.thisIp!
            }
            if self.thisPort != nil {
                map["ThisPort"] = self.thisPort!
            }
            if self.thisRegion != nil {
                map["ThisRegion"] = self.thisRegion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("BandwithPackageId") && dict["BandwithPackageId"] != nil {
                self.bandwithPackageId = dict["BandwithPackageId"] as! String
            }
            if dict.keys.contains("Bytes") && dict["Bytes"] != nil {
                self.bytes = dict["Bytes"] as! Double
            }
            if dict.keys.contains("CenId") && dict["CenId"] != nil {
                self.cenId = dict["CenId"] as! String
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("OtherIp") && dict["OtherIp"] != nil {
                self.otherIp = dict["OtherIp"] as! String
            }
            if dict.keys.contains("OtherPort") && dict["OtherPort"] != nil {
                self.otherPort = dict["OtherPort"] as! String
            }
            if dict.keys.contains("OtherRegion") && dict["OtherRegion"] != nil {
                self.otherRegion = dict["OtherRegion"] as! String
            }
            if dict.keys.contains("Packets") && dict["Packets"] != nil {
                self.packets = dict["Packets"] as! Double
            }
            if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("ThisIp") && dict["ThisIp"] != nil {
                self.thisIp = dict["ThisIp"] as! String
            }
            if dict.keys.contains("ThisPort") && dict["ThisPort"] != nil {
                self.thisPort = dict["ThisPort"] as! String
            }
            if dict.keys.contains("ThisRegion") && dict["ThisRegion"] != nil {
                self.thisRegion = dict["ThisRegion"] as! String
            }
        }
    }
    public var requestId: String?

    public var transitRouterFlowTopN: [GetTransitRouterFlowTopNResponseBody.TransitRouterFlowTopN]?

    public override init() {
        super.init()
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
        if self.transitRouterFlowTopN != nil {
            var tmp : [Any] = []
            for k in self.transitRouterFlowTopN! {
                tmp.append(k.toMap())
            }
            map["TransitRouterFlowTopN"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransitRouterFlowTopN") && dict["TransitRouterFlowTopN"] != nil {
            var tmp : [GetTransitRouterFlowTopNResponseBody.TransitRouterFlowTopN] = []
            for v in dict["TransitRouterFlowTopN"] as! [Any] {
                var model = GetTransitRouterFlowTopNResponseBody.TransitRouterFlowTopN()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.transitRouterFlowTopN = tmp
        }
    }
}

public class GetTransitRouterFlowTopNResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTransitRouterFlowTopNResponseBody?

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
            var model = GetTransitRouterFlowTopNResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVbrFlowTopNRequest : Tea.TeaModel {
    public var accountIds: [String]?

    public var attachmentId: String?

    public var beginTime: Int64?

    public var cenId: String?

    public var cloudIp: String?

    public var cloudPort: String?

    public var direction: String?

    public var endTime: Int64?

    public var groupBy: String?

    public var orderBy: String?

    public var otherIp: String?

    public var otherPort: String?

    public var protocol_: String?

    public var regionId: String?

    public var sort: String?

    public var topN: Int32?

    public var useMultiAccount: Bool?

    public var virtualBorderRouterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIds != nil {
            map["AccountIds"] = self.accountIds!
        }
        if self.attachmentId != nil {
            map["AttachmentId"] = self.attachmentId!
        }
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.cloudIp != nil {
            map["CloudIp"] = self.cloudIp!
        }
        if self.cloudPort != nil {
            map["CloudPort"] = self.cloudPort!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupBy != nil {
            map["GroupBy"] = self.groupBy!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.otherIp != nil {
            map["OtherIp"] = self.otherIp!
        }
        if self.otherPort != nil {
            map["OtherPort"] = self.otherPort!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.topN != nil {
            map["TopN"] = self.topN!
        }
        if self.useMultiAccount != nil {
            map["UseMultiAccount"] = self.useMultiAccount!
        }
        if self.virtualBorderRouterId != nil {
            map["VirtualBorderRouterId"] = self.virtualBorderRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") && dict["AccountIds"] != nil {
            self.accountIds = dict["AccountIds"] as! [String]
        }
        if dict.keys.contains("AttachmentId") && dict["AttachmentId"] != nil {
            self.attachmentId = dict["AttachmentId"] as! String
        }
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CenId") && dict["CenId"] != nil {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CloudIp") && dict["CloudIp"] != nil {
            self.cloudIp = dict["CloudIp"] as! String
        }
        if dict.keys.contains("CloudPort") && dict["CloudPort"] != nil {
            self.cloudPort = dict["CloudPort"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("GroupBy") && dict["GroupBy"] != nil {
            self.groupBy = dict["GroupBy"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OtherIp") && dict["OtherIp"] != nil {
            self.otherIp = dict["OtherIp"] as! String
        }
        if dict.keys.contains("OtherPort") && dict["OtherPort"] != nil {
            self.otherPort = dict["OtherPort"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") && dict["Sort"] != nil {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("TopN") && dict["TopN"] != nil {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("UseMultiAccount") && dict["UseMultiAccount"] != nil {
            self.useMultiAccount = dict["UseMultiAccount"] as! Bool
        }
        if dict.keys.contains("VirtualBorderRouterId") && dict["VirtualBorderRouterId"] != nil {
            self.virtualBorderRouterId = dict["VirtualBorderRouterId"] as! String
        }
    }
}

public class GetVbrFlowTopNShrinkRequest : Tea.TeaModel {
    public var accountIdsShrink: String?

    public var attachmentId: String?

    public var beginTime: Int64?

    public var cenId: String?

    public var cloudIp: String?

    public var cloudPort: String?

    public var direction: String?

    public var endTime: Int64?

    public var groupBy: String?

    public var orderBy: String?

    public var otherIp: String?

    public var otherPort: String?

    public var protocol_: String?

    public var regionId: String?

    public var sort: String?

    public var topN: Int32?

    public var useMultiAccount: Bool?

    public var virtualBorderRouterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountIdsShrink != nil {
            map["AccountIds"] = self.accountIdsShrink!
        }
        if self.attachmentId != nil {
            map["AttachmentId"] = self.attachmentId!
        }
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.cenId != nil {
            map["CenId"] = self.cenId!
        }
        if self.cloudIp != nil {
            map["CloudIp"] = self.cloudIp!
        }
        if self.cloudPort != nil {
            map["CloudPort"] = self.cloudPort!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.groupBy != nil {
            map["GroupBy"] = self.groupBy!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.otherIp != nil {
            map["OtherIp"] = self.otherIp!
        }
        if self.otherPort != nil {
            map["OtherPort"] = self.otherPort!
        }
        if self.protocol_ != nil {
            map["Protocol"] = self.protocol_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.topN != nil {
            map["TopN"] = self.topN!
        }
        if self.useMultiAccount != nil {
            map["UseMultiAccount"] = self.useMultiAccount!
        }
        if self.virtualBorderRouterId != nil {
            map["VirtualBorderRouterId"] = self.virtualBorderRouterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") && dict["AccountIds"] != nil {
            self.accountIdsShrink = dict["AccountIds"] as! String
        }
        if dict.keys.contains("AttachmentId") && dict["AttachmentId"] != nil {
            self.attachmentId = dict["AttachmentId"] as! String
        }
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CenId") && dict["CenId"] != nil {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CloudIp") && dict["CloudIp"] != nil {
            self.cloudIp = dict["CloudIp"] as! String
        }
        if dict.keys.contains("CloudPort") && dict["CloudPort"] != nil {
            self.cloudPort = dict["CloudPort"] as! String
        }
        if dict.keys.contains("Direction") && dict["Direction"] != nil {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("GroupBy") && dict["GroupBy"] != nil {
            self.groupBy = dict["GroupBy"] as! String
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OtherIp") && dict["OtherIp"] != nil {
            self.otherIp = dict["OtherIp"] as! String
        }
        if dict.keys.contains("OtherPort") && dict["OtherPort"] != nil {
            self.otherPort = dict["OtherPort"] as! String
        }
        if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") && dict["Sort"] != nil {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("TopN") && dict["TopN"] != nil {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("UseMultiAccount") && dict["UseMultiAccount"] != nil {
            self.useMultiAccount = dict["UseMultiAccount"] as! Bool
        }
        if dict.keys.contains("VirtualBorderRouterId") && dict["VirtualBorderRouterId"] != nil {
            self.virtualBorderRouterId = dict["VirtualBorderRouterId"] as! String
        }
    }
}

public class GetVbrFlowTopNResponseBody : Tea.TeaModel {
    public class VirtualBorderRouterFlowlogTopN : Tea.TeaModel {
        public var accountId: String?

        public var attachmentId: String?

        public var bytes: Double?

        public var cloudIp: String?

        public var cloudPort: String?

        public var cloudRegion: String?

        public var otherIp: String?

        public var otherPort: String?

        public var packets: Double?

        public var protocol_: String?

        public var virtualBorderRouterId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.attachmentId != nil {
                map["AttachmentId"] = self.attachmentId!
            }
            if self.bytes != nil {
                map["Bytes"] = self.bytes!
            }
            if self.cloudIp != nil {
                map["CloudIp"] = self.cloudIp!
            }
            if self.cloudPort != nil {
                map["CloudPort"] = self.cloudPort!
            }
            if self.cloudRegion != nil {
                map["CloudRegion"] = self.cloudRegion!
            }
            if self.otherIp != nil {
                map["OtherIp"] = self.otherIp!
            }
            if self.otherPort != nil {
                map["OtherPort"] = self.otherPort!
            }
            if self.packets != nil {
                map["Packets"] = self.packets!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.virtualBorderRouterId != nil {
                map["VirtualBorderRouterId"] = self.virtualBorderRouterId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AttachmentId") && dict["AttachmentId"] != nil {
                self.attachmentId = dict["AttachmentId"] as! String
            }
            if dict.keys.contains("Bytes") && dict["Bytes"] != nil {
                self.bytes = dict["Bytes"] as! Double
            }
            if dict.keys.contains("CloudIp") && dict["CloudIp"] != nil {
                self.cloudIp = dict["CloudIp"] as! String
            }
            if dict.keys.contains("CloudPort") && dict["CloudPort"] != nil {
                self.cloudPort = dict["CloudPort"] as! String
            }
            if dict.keys.contains("CloudRegion") && dict["CloudRegion"] != nil {
                self.cloudRegion = dict["CloudRegion"] as! String
            }
            if dict.keys.contains("OtherIp") && dict["OtherIp"] != nil {
                self.otherIp = dict["OtherIp"] as! String
            }
            if dict.keys.contains("OtherPort") && dict["OtherPort"] != nil {
                self.otherPort = dict["OtherPort"] as! String
            }
            if dict.keys.contains("Packets") && dict["Packets"] != nil {
                self.packets = dict["Packets"] as! Double
            }
            if dict.keys.contains("Protocol") && dict["Protocol"] != nil {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("VirtualBorderRouterId") && dict["VirtualBorderRouterId"] != nil {
                self.virtualBorderRouterId = dict["VirtualBorderRouterId"] as! String
            }
        }
    }
    public var requestId: String?

    public var virtualBorderRouterFlowlogTopN: [GetVbrFlowTopNResponseBody.VirtualBorderRouterFlowlogTopN]?

    public override init() {
        super.init()
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
        if self.virtualBorderRouterFlowlogTopN != nil {
            var tmp : [Any] = []
            for k in self.virtualBorderRouterFlowlogTopN! {
                tmp.append(k.toMap())
            }
            map["VirtualBorderRouterFlowlogTopN"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VirtualBorderRouterFlowlogTopN") && dict["VirtualBorderRouterFlowlogTopN"] != nil {
            var tmp : [GetVbrFlowTopNResponseBody.VirtualBorderRouterFlowlogTopN] = []
            for v in dict["VirtualBorderRouterFlowlogTopN"] as! [Any] {
                var model = GetVbrFlowTopNResponseBody.VirtualBorderRouterFlowlogTopN()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.virtualBorderRouterFlowlogTopN = tmp
        }
    }
}

public class GetVbrFlowTopNResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVbrFlowTopNResponseBody?

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
            var model = GetVbrFlowTopNResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
