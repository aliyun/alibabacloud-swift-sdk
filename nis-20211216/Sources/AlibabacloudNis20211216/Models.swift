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
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceId") {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceIpAddress") {
            self.sourceIpAddress = dict["SourceIpAddress"] as! String
        }
        if dict.keys.contains("SourcePort") {
            self.sourcePort = dict["SourcePort"] as! Int32
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetIpAddress") {
            self.targetIpAddress = dict["TargetIpAddress"] as! String
        }
        if dict.keys.contains("TargetPort") {
            self.targetPort = dict["TargetPort"] as! Int32
        }
        if dict.keys.contains("TargetType") {
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
        if dict.keys.contains("NetworkReachableAnalysisId") {
            self.networkReachableAnalysisId = dict["NetworkReachableAnalysisId"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SourceId") {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceIpAddress") {
            self.sourceIpAddress = dict["SourceIpAddress"] as! String
        }
        if dict.keys.contains("SourcePort") {
            self.sourcePort = dict["SourcePort"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetIpAddress") {
            self.targetIpAddress = dict["TargetIpAddress"] as! String
        }
        if dict.keys.contains("TargetPort") {
            self.targetPort = dict["TargetPort"] as! String
        }
        if dict.keys.contains("TargetType") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var networkPathDescription: String?

    public var networkPathName: String?

    public var protocol_: String?

    public var regionId: String?

    public var resourceGroupId: String?

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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if dict.keys.contains("NetworkPathDescription") {
            self.networkPathDescription = dict["NetworkPathDescription"] as! String
        }
        if dict.keys.contains("NetworkPathName") {
            self.networkPathName = dict["NetworkPathName"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SourceId") {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SourceIpAddress") {
            self.sourceIpAddress = dict["SourceIpAddress"] as! String
        }
        if dict.keys.contains("SourcePort") {
            self.sourcePort = dict["SourcePort"] as! Int32
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Tag") {
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
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetIpAddress") {
            self.targetIpAddress = dict["TargetIpAddress"] as! String
        }
        if dict.keys.contains("TargetPort") {
            self.targetPort = dict["TargetPort"] as! Int32
        }
        if dict.keys.contains("TargetType") {
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
        if dict.keys.contains("NetworkPathId") {
            self.networkPathId = dict["NetworkPathId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
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
        if dict.keys.contains("NetworkPathId") {
            self.networkPathId = dict["NetworkPathId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tag") {
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
        if dict.keys.contains("NetworkReachableAnalysisId") {
            self.networkReachableAnalysisId = dict["NetworkReachableAnalysisId"] as! String
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("NetworkPathIds") {
            self.networkPathIds = dict["NetworkPathIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
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
        if dict.keys.contains("NetworkPathIds") {
            self.networkPathIdsShrink = dict["NetworkPathIds"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteNetworkPathResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("NetworkReachableAnalysisIds") {
            self.networkReachableAnalysisIds = dict["NetworkReachableAnalysisIds"] as! [String]
        }
        if dict.keys.contains("RegionId") {
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
        if dict.keys.contains("NetworkReachableAnalysisIds") {
            self.networkReachableAnalysisIdsShrink = dict["NetworkReachableAnalysisIds"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteNetworkReachableAnalysisResponseBody : Tea.TeaModel {
    public var data: Bool?

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
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") {
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
            var model = DeleteNetworkReachableAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetInternetTupleRequest : Tea.TeaModel {
    public var accountIds: [Int64]?

    public var beginTime: Int64?

    public var cloudIp: String?

    public var cloudIpList: [String]?

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
        if self.cloudIpList != nil {
            map["CloudIpList"] = self.cloudIpList!
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
        if dict.keys.contains("AccountIds") {
            self.accountIds = dict["AccountIds"] as! [Int64]
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CloudIp") {
            self.cloudIp = dict["CloudIp"] as! String
        }
        if dict.keys.contains("CloudIpList") {
            self.cloudIpList = dict["CloudIpList"] as! [String]
        }
        if dict.keys.contains("CloudIsp") {
            self.cloudIsp = dict["CloudIsp"] as! String
        }
        if dict.keys.contains("CloudPort") {
            self.cloudPort = dict["CloudPort"] as! String
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceList") {
            self.instanceList = dict["InstanceList"] as! [String]
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OtherCity") {
            self.otherCity = dict["OtherCity"] as! String
        }
        if dict.keys.contains("OtherCountry") {
            self.otherCountry = dict["OtherCountry"] as! String
        }
        if dict.keys.contains("OtherIp") {
            self.otherIp = dict["OtherIp"] as! String
        }
        if dict.keys.contains("OtherIsp") {
            self.otherIsp = dict["OtherIsp"] as! String
        }
        if dict.keys.contains("OtherPort") {
            self.otherPort = dict["OtherPort"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("TopN") {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("TupleType") {
            self.tupleType = dict["TupleType"] as! Int32
        }
        if dict.keys.contains("UseMultiAccount") {
            self.useMultiAccount = dict["UseMultiAccount"] as! Bool
        }
    }
}

public class GetInternetTupleShrinkRequest : Tea.TeaModel {
    public var accountIds: [Int64]?

    public var beginTime: Int64?

    public var cloudIp: String?

    public var cloudIpListShrink: String?

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
        if self.cloudIpListShrink != nil {
            map["CloudIpList"] = self.cloudIpListShrink!
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
        if dict.keys.contains("AccountIds") {
            self.accountIds = dict["AccountIds"] as! [Int64]
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CloudIp") {
            self.cloudIp = dict["CloudIp"] as! String
        }
        if dict.keys.contains("CloudIpList") {
            self.cloudIpListShrink = dict["CloudIpList"] as! String
        }
        if dict.keys.contains("CloudIsp") {
            self.cloudIsp = dict["CloudIsp"] as! String
        }
        if dict.keys.contains("CloudPort") {
            self.cloudPort = dict["CloudPort"] as! String
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceList") {
            self.instanceListShrink = dict["InstanceList"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OtherCity") {
            self.otherCity = dict["OtherCity"] as! String
        }
        if dict.keys.contains("OtherCountry") {
            self.otherCountry = dict["OtherCountry"] as! String
        }
        if dict.keys.contains("OtherIp") {
            self.otherIp = dict["OtherIp"] as! String
        }
        if dict.keys.contains("OtherIsp") {
            self.otherIsp = dict["OtherIsp"] as! String
        }
        if dict.keys.contains("OtherPort") {
            self.otherPort = dict["OtherPort"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("TopN") {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("TupleType") {
            self.tupleType = dict["TupleType"] as! Int32
        }
        if dict.keys.contains("UseMultiAccount") {
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

        public var retransmitRate: Double?

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
            if self.retransmitRate != nil {
                map["RetransmitRate"] = self.retransmitRate!
            }
            if self.rtt != nil {
                map["Rtt"] = self.rtt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessRegion") {
                self.accessRegion = dict["AccessRegion"] as! String
            }
            if dict.keys.contains("BeginTime") {
                self.beginTime = dict["BeginTime"] as! String
            }
            if dict.keys.contains("ByteCount") {
                self.byteCount = dict["ByteCount"] as! Double
            }
            if dict.keys.contains("CloudCity") {
                self.cloudCity = dict["CloudCity"] as! String
            }
            if dict.keys.contains("CloudCountry") {
                self.cloudCountry = dict["CloudCountry"] as! String
            }
            if dict.keys.contains("CloudIp") {
                self.cloudIp = dict["CloudIp"] as! String
            }
            if dict.keys.contains("CloudIsp") {
                self.cloudIsp = dict["CloudIsp"] as! String
            }
            if dict.keys.contains("CloudPort") {
                self.cloudPort = dict["CloudPort"] as! String
            }
            if dict.keys.contains("CloudProduct") {
                self.cloudProduct = dict["CloudProduct"] as! String
            }
            if dict.keys.contains("CloudProvince") {
                self.cloudProvince = dict["CloudProvince"] as! String
            }
            if dict.keys.contains("Direction") {
                self.direction = dict["Direction"] as! String
            }
            if dict.keys.contains("InByteCount") {
                self.inByteCount = dict["InByteCount"] as! Double
            }
            if dict.keys.contains("InOutOrderCount") {
                self.inOutOrderCount = dict["InOutOrderCount"] as! Double
            }
            if dict.keys.contains("InPacketCount") {
                self.inPacketCount = dict["InPacketCount"] as! Double
            }
            if dict.keys.contains("InRetranCount") {
                self.inRetranCount = dict["InRetranCount"] as! Double
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OtherCity") {
                self.otherCity = dict["OtherCity"] as! String
            }
            if dict.keys.contains("OtherCountry") {
                self.otherCountry = dict["OtherCountry"] as! String
            }
            if dict.keys.contains("OtherIp") {
                self.otherIp = dict["OtherIp"] as! String
            }
            if dict.keys.contains("OtherIsp") {
                self.otherIsp = dict["OtherIsp"] as! String
            }
            if dict.keys.contains("OtherPort") {
                self.otherPort = dict["OtherPort"] as! String
            }
            if dict.keys.contains("OtherProduct") {
                self.otherProduct = dict["OtherProduct"] as! String
            }
            if dict.keys.contains("OtherProvince") {
                self.otherProvince = dict["OtherProvince"] as! String
            }
            if dict.keys.contains("OutByteCount") {
                self.outByteCount = dict["OutByteCount"] as! Double
            }
            if dict.keys.contains("OutOrderCount") {
                self.outOrderCount = dict["OutOrderCount"] as! Double
            }
            if dict.keys.contains("OutOutOrderCount") {
                self.outOutOrderCount = dict["OutOutOrderCount"] as! Double
            }
            if dict.keys.contains("OutPacketCount") {
                self.outPacketCount = dict["OutPacketCount"] as! Double
            }
            if dict.keys.contains("OutRetranCount") {
                self.outRetranCount = dict["OutRetranCount"] as! Double
            }
            if dict.keys.contains("PacketCount") {
                self.packetCount = dict["PacketCount"] as! Double
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("RetransmitRate") {
                self.retransmitRate = dict["RetransmitRate"] as! Double
            }
            if dict.keys.contains("Rtt") {
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
        if dict.keys.contains("Data") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("NatGatewayId") {
            self.natGatewayId = dict["NatGatewayId"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TopN") {
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
            if dict.keys.contains("ActiveSessionCount") {
                self.activeSessionCount = dict["ActiveSessionCount"] as! Double
            }
            if dict.keys.contains("InBps") {
                self.inBps = dict["InBps"] as! Double
            }
            if dict.keys.contains("InFlowPerMinute") {
                self.inFlowPerMinute = dict["InFlowPerMinute"] as! Double
            }
            if dict.keys.contains("InPps") {
                self.inPps = dict["InPps"] as! Double
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("NewSessionPerSecond") {
                self.newSessionPerSecond = dict["NewSessionPerSecond"] as! Double
            }
            if dict.keys.contains("OutBps") {
                self.outBps = dict["OutBps"] as! Double
            }
            if dict.keys.contains("OutFlowPerMinute") {
                self.outFlowPerMinute = dict["OutFlowPerMinute"] as! Double
            }
            if dict.keys.contains("OutPps") {
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
        if dict.keys.contains("IsTopNOpen") {
            self.isTopNOpen = dict["IsTopNOpen"] as! Bool
        }
        if dict.keys.contains("NatGatewayTopN") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("NetworkReachableAnalysisId") {
            self.networkReachableAnalysisId = dict["NetworkReachableAnalysisId"] as! String
        }
        if dict.keys.contains("RegionId") {
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
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("NetworkPathId") {
            self.networkPathId = dict["NetworkPathId"] as! String
        }
        if dict.keys.contains("NetworkPathParameter") {
            self.networkPathParameter = dict["NetworkPathParameter"] as! String
        }
        if dict.keys.contains("NetworkReachableAnalysisId") {
            self.networkReachableAnalysisId = dict["NetworkReachableAnalysisId"] as! String
        }
        if dict.keys.contains("NetworkReachableAnalysisResult") {
            self.networkReachableAnalysisResult = dict["NetworkReachableAnalysisResult"] as! String
        }
        if dict.keys.contains("NetworkReachableAnalysisStatus") {
            self.networkReachableAnalysisStatus = dict["NetworkReachableAnalysisStatus"] as! String
        }
        if dict.keys.contains("Reachable") {
            self.reachable = dict["Reachable"] as! Bool
        }
        if dict.keys.contains("RequestId") {
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
            var model = GetNetworkReachableAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNisNetworkMetricsRequest : Tea.TeaModel {
    public class Dimensions : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var accountIds: [String]?

    public var beginTime: Int64?

    public var dimensions: [GetNisNetworkMetricsRequest.Dimensions]?

    public var endTime: Int64?

    public var metricName: String?

    public var regionNo: String?

    public var resourceType: String?

    public var scanBy: String?

    public var useCrossAccount: Bool?

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
        if self.dimensions != nil {
            var tmp : [Any] = []
            for k in self.dimensions! {
                tmp.append(k.toMap())
            }
            map["Dimensions"] = tmp
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scanBy != nil {
            map["ScanBy"] = self.scanBy!
        }
        if self.useCrossAccount != nil {
            map["UseCrossAccount"] = self.useCrossAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") {
            self.accountIds = dict["AccountIds"] as! [String]
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("Dimensions") {
            var tmp : [GetNisNetworkMetricsRequest.Dimensions] = []
            for v in dict["Dimensions"] as! [Any] {
                var model = GetNisNetworkMetricsRequest.Dimensions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dimensions = tmp
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("MetricName") {
            self.metricName = dict["MetricName"] as! String
        }
        if dict.keys.contains("RegionNo") {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ScanBy") {
            self.scanBy = dict["ScanBy"] as! String
        }
        if dict.keys.contains("UseCrossAccount") {
            self.useCrossAccount = dict["UseCrossAccount"] as! Bool
        }
    }
}

public class GetNisNetworkMetricsShrinkRequest : Tea.TeaModel {
    public var accountIds: [String]?

    public var beginTime: Int64?

    public var dimensionsShrink: String?

    public var endTime: Int64?

    public var metricName: String?

    public var regionNo: String?

    public var resourceType: String?

    public var scanBy: String?

    public var useCrossAccount: Bool?

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
        if self.dimensionsShrink != nil {
            map["Dimensions"] = self.dimensionsShrink!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.scanBy != nil {
            map["ScanBy"] = self.scanBy!
        }
        if self.useCrossAccount != nil {
            map["UseCrossAccount"] = self.useCrossAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") {
            self.accountIds = dict["AccountIds"] as! [String]
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("Dimensions") {
            self.dimensionsShrink = dict["Dimensions"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("MetricName") {
            self.metricName = dict["MetricName"] as! String
        }
        if dict.keys.contains("RegionNo") {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ScanBy") {
            self.scanBy = dict["ScanBy"] as! String
        }
        if dict.keys.contains("UseCrossAccount") {
            self.useCrossAccount = dict["UseCrossAccount"] as! Bool
        }
    }
}

public class GetNisNetworkMetricsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Metrics : Tea.TeaModel {
            public var timeStamp: Int64?

            public var value: Double?

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
                    self.timeStamp = dict["TimeStamp"] as! Int64
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! Double
                }
            }
        }
        public var metrics: [GetNisNetworkMetricsResponseBody.Data.Metrics]?

        public var unit: String?

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
            if self.metrics != nil {
                var tmp : [Any] = []
                for k in self.metrics! {
                    tmp.append(k.toMap())
                }
                map["Metrics"] = tmp
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Metrics") {
                var tmp : [GetNisNetworkMetricsResponseBody.Data.Metrics] = []
                for v in dict["Metrics"] as! [Any] {
                    var model = GetNisNetworkMetricsResponseBody.Data.Metrics()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.metrics = tmp
            }
            if dict.keys.contains("Unit") {
                self.unit = dict["Unit"] as! String
            }
        }
    }
    public var data: GetNisNetworkMetricsResponseBody.Data?

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
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetNisNetworkMetricsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetNisNetworkMetricsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNisNetworkMetricsResponseBody?

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
            var model = GetNisNetworkMetricsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetNisNetworkRankingRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var accountIds: [String]?

    public var beginTime: Int64?

    public var direction: String?

    public var endTime: Int64?

    public var filter: [GetNisNetworkRankingRequest.Filter]?

    public var groupBy: String?

    public var orderBy: String?

    public var regionNo: String?

    public var resourceType: String?

    public var sort: String?

    public var topN: Int32?

    public var useCrossAccount: Bool?

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
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filter != nil {
            var tmp : [Any] = []
            for k in self.filter! {
                tmp.append(k.toMap())
            }
            map["Filter"] = tmp
        }
        if self.groupBy != nil {
            map["GroupBy"] = self.groupBy!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.topN != nil {
            map["TopN"] = self.topN!
        }
        if self.useCrossAccount != nil {
            map["UseCrossAccount"] = self.useCrossAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") {
            self.accountIds = dict["AccountIds"] as! [String]
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Filter") {
            var tmp : [GetNisNetworkRankingRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = GetNisNetworkRankingRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("GroupBy") {
            self.groupBy = dict["GroupBy"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("RegionNo") {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("TopN") {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("UseCrossAccount") {
            self.useCrossAccount = dict["UseCrossAccount"] as! Bool
        }
    }
}

public class GetNisNetworkRankingShrinkRequest : Tea.TeaModel {
    public var accountIds: [String]?

    public var beginTime: Int64?

    public var direction: String?

    public var endTime: Int64?

    public var filterShrink: String?

    public var groupBy: String?

    public var orderBy: String?

    public var regionNo: String?

    public var resourceType: String?

    public var sort: String?

    public var topN: Int32?

    public var useCrossAccount: Bool?

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
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterShrink != nil {
            map["Filter"] = self.filterShrink!
        }
        if self.groupBy != nil {
            map["GroupBy"] = self.groupBy!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.topN != nil {
            map["TopN"] = self.topN!
        }
        if self.useCrossAccount != nil {
            map["UseCrossAccount"] = self.useCrossAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountIds") {
            self.accountIds = dict["AccountIds"] as! [String]
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Filter") {
            self.filterShrink = dict["Filter"] as! String
        }
        if dict.keys.contains("GroupBy") {
            self.groupBy = dict["GroupBy"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("RegionNo") {
            self.regionNo = dict["RegionNo"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("TopN") {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("UseCrossAccount") {
            self.useCrossAccount = dict["UseCrossAccount"] as! Bool
        }
    }
}

public class GetNisNetworkRankingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var activeSessionCount: Double?

        public var asn: String?

        public var attachmentId: String?

        public var bandwidthPackageId: String?

        public var byteCount: Double?

        public var city: String?

        public var country: String?

        public var destinationIp: String?

        public var destinationIsp: String?

        public var destinationPort: String?

        public var destinationRegionNo: String?

        public var destinationZone: String?

        public var IP: String?

        public var inBps: Double?

        public var inPps: Double?

        public var instanceId: String?

        public var isp: String?

        public var newSessionPerSecond: Double?

        public var outBps: Double?

        public var outPps: Double?

        public var packetCount: Double?

        public var protocol_: String?

        public var province: String?

        public var RTT: Double?

        public var regionNo: String?

        public var retransmitRate: Double?

        public var sourceIp: String?

        public var sourceIsp: String?

        public var sourcePort: String?

        public var sourceZone: String?

        public var vbrId: String?

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
            if self.asn != nil {
                map["Asn"] = self.asn!
            }
            if self.attachmentId != nil {
                map["AttachmentId"] = self.attachmentId!
            }
            if self.bandwidthPackageId != nil {
                map["BandwidthPackageId"] = self.bandwidthPackageId!
            }
            if self.byteCount != nil {
                map["ByteCount"] = self.byteCount!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.destinationIp != nil {
                map["DestinationIp"] = self.destinationIp!
            }
            if self.destinationIsp != nil {
                map["DestinationIsp"] = self.destinationIsp!
            }
            if self.destinationPort != nil {
                map["DestinationPort"] = self.destinationPort!
            }
            if self.destinationRegionNo != nil {
                map["DestinationRegionNo"] = self.destinationRegionNo!
            }
            if self.destinationZone != nil {
                map["DestinationZone"] = self.destinationZone!
            }
            if self.IP != nil {
                map["IP"] = self.IP!
            }
            if self.inBps != nil {
                map["InBps"] = self.inBps!
            }
            if self.inPps != nil {
                map["InPps"] = self.inPps!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.isp != nil {
                map["Isp"] = self.isp!
            }
            if self.newSessionPerSecond != nil {
                map["NewSessionPerSecond"] = self.newSessionPerSecond!
            }
            if self.outBps != nil {
                map["OutBps"] = self.outBps!
            }
            if self.outPps != nil {
                map["OutPps"] = self.outPps!
            }
            if self.packetCount != nil {
                map["PacketCount"] = self.packetCount!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.RTT != nil {
                map["RTT"] = self.RTT!
            }
            if self.regionNo != nil {
                map["RegionNo"] = self.regionNo!
            }
            if self.retransmitRate != nil {
                map["RetransmitRate"] = self.retransmitRate!
            }
            if self.sourceIp != nil {
                map["SourceIp"] = self.sourceIp!
            }
            if self.sourceIsp != nil {
                map["SourceIsp"] = self.sourceIsp!
            }
            if self.sourcePort != nil {
                map["SourcePort"] = self.sourcePort!
            }
            if self.sourceZone != nil {
                map["SourceZone"] = self.sourceZone!
            }
            if self.vbrId != nil {
                map["VbrId"] = self.vbrId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveSessionCount") {
                self.activeSessionCount = dict["ActiveSessionCount"] as! Double
            }
            if dict.keys.contains("Asn") {
                self.asn = dict["Asn"] as! String
            }
            if dict.keys.contains("AttachmentId") {
                self.attachmentId = dict["AttachmentId"] as! String
            }
            if dict.keys.contains("BandwidthPackageId") {
                self.bandwidthPackageId = dict["BandwidthPackageId"] as! String
            }
            if dict.keys.contains("ByteCount") {
                self.byteCount = dict["ByteCount"] as! Double
            }
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("Country") {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("DestinationIp") {
                self.destinationIp = dict["DestinationIp"] as! String
            }
            if dict.keys.contains("DestinationIsp") {
                self.destinationIsp = dict["DestinationIsp"] as! String
            }
            if dict.keys.contains("DestinationPort") {
                self.destinationPort = dict["DestinationPort"] as! String
            }
            if dict.keys.contains("DestinationRegionNo") {
                self.destinationRegionNo = dict["DestinationRegionNo"] as! String
            }
            if dict.keys.contains("DestinationZone") {
                self.destinationZone = dict["DestinationZone"] as! String
            }
            if dict.keys.contains("IP") {
                self.IP = dict["IP"] as! String
            }
            if dict.keys.contains("InBps") {
                self.inBps = dict["InBps"] as! Double
            }
            if dict.keys.contains("InPps") {
                self.inPps = dict["InPps"] as! Double
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Isp") {
                self.isp = dict["Isp"] as! String
            }
            if dict.keys.contains("NewSessionPerSecond") {
                self.newSessionPerSecond = dict["NewSessionPerSecond"] as! Double
            }
            if dict.keys.contains("OutBps") {
                self.outBps = dict["OutBps"] as! Double
            }
            if dict.keys.contains("OutPps") {
                self.outPps = dict["OutPps"] as! Double
            }
            if dict.keys.contains("PacketCount") {
                self.packetCount = dict["PacketCount"] as! Double
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("Province") {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("RTT") {
                self.RTT = dict["RTT"] as! Double
            }
            if dict.keys.contains("RegionNo") {
                self.regionNo = dict["RegionNo"] as! String
            }
            if dict.keys.contains("RetransmitRate") {
                self.retransmitRate = dict["RetransmitRate"] as! Double
            }
            if dict.keys.contains("SourceIp") {
                self.sourceIp = dict["SourceIp"] as! String
            }
            if dict.keys.contains("SourceIsp") {
                self.sourceIsp = dict["SourceIsp"] as! String
            }
            if dict.keys.contains("SourcePort") {
                self.sourcePort = dict["SourcePort"] as! String
            }
            if dict.keys.contains("SourceZone") {
                self.sourceZone = dict["SourceZone"] as! String
            }
            if dict.keys.contains("VbrId") {
                self.vbrId = dict["VbrId"] as! String
            }
        }
    }
    public var data: [GetNisNetworkRankingResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [GetNisNetworkRankingResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetNisNetworkRankingResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetNisNetworkRankingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetNisNetworkRankingResponseBody?

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
            var model = GetNisNetworkRankingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTransitRouterFlowTopNRequest : Tea.TeaModel {
    public var accountIds: [Int64]?

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
        if dict.keys.contains("AccountIds") {
            self.accountIds = dict["AccountIds"] as! [Int64]
        }
        if dict.keys.contains("BandwithPackageId") {
            self.bandwithPackageId = dict["BandwithPackageId"] as! String
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("GroupBy") {
            self.groupBy = dict["GroupBy"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OtherIp") {
            self.otherIp = dict["OtherIp"] as! String
        }
        if dict.keys.contains("OtherPort") {
            self.otherPort = dict["OtherPort"] as! String
        }
        if dict.keys.contains("OtherRegion") {
            self.otherRegion = dict["OtherRegion"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("ThisIp") {
            self.thisIp = dict["ThisIp"] as! String
        }
        if dict.keys.contains("ThisPort") {
            self.thisPort = dict["ThisPort"] as! String
        }
        if dict.keys.contains("ThisRegion") {
            self.thisRegion = dict["ThisRegion"] as! String
        }
        if dict.keys.contains("TopN") {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("UseMultiAccount") {
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
        if dict.keys.contains("AccountIds") {
            self.accountIdsShrink = dict["AccountIds"] as! String
        }
        if dict.keys.contains("BandwithPackageId") {
            self.bandwithPackageId = dict["BandwithPackageId"] as! String
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("GroupBy") {
            self.groupBy = dict["GroupBy"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OtherIp") {
            self.otherIp = dict["OtherIp"] as! String
        }
        if dict.keys.contains("OtherPort") {
            self.otherPort = dict["OtherPort"] as! String
        }
        if dict.keys.contains("OtherRegion") {
            self.otherRegion = dict["OtherRegion"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("ThisIp") {
            self.thisIp = dict["ThisIp"] as! String
        }
        if dict.keys.contains("ThisPort") {
            self.thisPort = dict["ThisPort"] as! String
        }
        if dict.keys.contains("ThisRegion") {
            self.thisRegion = dict["ThisRegion"] as! String
        }
        if dict.keys.contains("TopN") {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("UseMultiAccount") {
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
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("BandwithPackageId") {
                self.bandwithPackageId = dict["BandwithPackageId"] as! String
            }
            if dict.keys.contains("Bytes") {
                self.bytes = dict["Bytes"] as! Double
            }
            if dict.keys.contains("CenId") {
                self.cenId = dict["CenId"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("OtherIp") {
                self.otherIp = dict["OtherIp"] as! String
            }
            if dict.keys.contains("OtherPort") {
                self.otherPort = dict["OtherPort"] as! String
            }
            if dict.keys.contains("OtherRegion") {
                self.otherRegion = dict["OtherRegion"] as! String
            }
            if dict.keys.contains("Packets") {
                self.packets = dict["Packets"] as! Double
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("ThisIp") {
                self.thisIp = dict["ThisIp"] as! String
            }
            if dict.keys.contains("ThisPort") {
                self.thisPort = dict["ThisPort"] as! String
            }
            if dict.keys.contains("ThisRegion") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TransitRouterFlowTopN") {
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
            var model = GetTransitRouterFlowTopNResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVbrFlowTopNRequest : Tea.TeaModel {
    public var accountIds: [Int64]?

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
        if dict.keys.contains("AccountIds") {
            self.accountIds = dict["AccountIds"] as! [Int64]
        }
        if dict.keys.contains("AttachmentId") {
            self.attachmentId = dict["AttachmentId"] as! String
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CloudIp") {
            self.cloudIp = dict["CloudIp"] as! String
        }
        if dict.keys.contains("CloudPort") {
            self.cloudPort = dict["CloudPort"] as! String
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("GroupBy") {
            self.groupBy = dict["GroupBy"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OtherIp") {
            self.otherIp = dict["OtherIp"] as! String
        }
        if dict.keys.contains("OtherPort") {
            self.otherPort = dict["OtherPort"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("TopN") {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("UseMultiAccount") {
            self.useMultiAccount = dict["UseMultiAccount"] as! Bool
        }
        if dict.keys.contains("VirtualBorderRouterId") {
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
        if dict.keys.contains("AccountIds") {
            self.accountIdsShrink = dict["AccountIds"] as! String
        }
        if dict.keys.contains("AttachmentId") {
            self.attachmentId = dict["AttachmentId"] as! String
        }
        if dict.keys.contains("BeginTime") {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("CenId") {
            self.cenId = dict["CenId"] as! String
        }
        if dict.keys.contains("CloudIp") {
            self.cloudIp = dict["CloudIp"] as! String
        }
        if dict.keys.contains("CloudPort") {
            self.cloudPort = dict["CloudPort"] as! String
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("GroupBy") {
            self.groupBy = dict["GroupBy"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OtherIp") {
            self.otherIp = dict["OtherIp"] as! String
        }
        if dict.keys.contains("OtherPort") {
            self.otherPort = dict["OtherPort"] as! String
        }
        if dict.keys.contains("Protocol") {
            self.protocol_ = dict["Protocol"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("TopN") {
            self.topN = dict["TopN"] as! Int32
        }
        if dict.keys.contains("UseMultiAccount") {
            self.useMultiAccount = dict["UseMultiAccount"] as! Bool
        }
        if dict.keys.contains("VirtualBorderRouterId") {
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
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AttachmentId") {
                self.attachmentId = dict["AttachmentId"] as! String
            }
            if dict.keys.contains("Bytes") {
                self.bytes = dict["Bytes"] as! Double
            }
            if dict.keys.contains("CloudIp") {
                self.cloudIp = dict["CloudIp"] as! String
            }
            if dict.keys.contains("CloudPort") {
                self.cloudPort = dict["CloudPort"] as! String
            }
            if dict.keys.contains("CloudRegion") {
                self.cloudRegion = dict["CloudRegion"] as! String
            }
            if dict.keys.contains("OtherIp") {
                self.otherIp = dict["OtherIp"] as! String
            }
            if dict.keys.contains("OtherPort") {
                self.otherPort = dict["OtherPort"] as! String
            }
            if dict.keys.contains("Packets") {
                self.packets = dict["Packets"] as! Double
            }
            if dict.keys.contains("Protocol") {
                self.protocol_ = dict["Protocol"] as! String
            }
            if dict.keys.contains("VirtualBorderRouterId") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VirtualBorderRouterFlowlogTopN") {
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
            var model = GetVbrFlowTopNResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
