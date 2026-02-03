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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceIpAddress"] as? String {
            self.sourceIpAddress = value
        }
        if let value = dict["SourcePort"] as? Int32 {
            self.sourcePort = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TargetIpAddress"] as? String {
            self.targetIpAddress = value
        }
        if let value = dict["TargetPort"] as? Int32 {
            self.targetPort = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkReachableAnalysisId"] as? String {
            self.networkReachableAnalysisId = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceIpAddress"] as? String {
            self.sourceIpAddress = value
        }
        if let value = dict["SourcePort"] as? String {
            self.sourcePort = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TargetIpAddress"] as? String {
            self.targetIpAddress = value
        }
        if let value = dict["TargetPort"] as? String {
            self.targetPort = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAndAnalyzeNetworkPathResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkPathDescription"] as? String {
            self.networkPathDescription = value
        }
        if let value = dict["NetworkPathName"] as? String {
            self.networkPathName = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SourceIpAddress"] as? String {
            self.sourceIpAddress = value
        }
        if let value = dict["SourcePort"] as? Int32 {
            self.sourcePort = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateNetworkPathRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateNetworkPathRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TargetIpAddress"] as? String {
            self.targetIpAddress = value
        }
        if let value = dict["TargetPort"] as? Int32 {
            self.targetPort = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkPathId"] as? String {
            self.networkPathId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateNetworkPathResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkPathId"] as? String {
            self.networkPathId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateNetworkReachableAnalysisRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateNetworkReachableAnalysisRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkReachableAnalysisId"] as? String {
            self.networkReachableAnalysisId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateNetworkReachableAnalysisResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkPathIds"] as? [String] {
            self.networkPathIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkPathIds"] as? String {
            self.networkPathIdsShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteNetworkPathResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkReachableAnalysisIds"] as? [String] {
            self.networkReachableAnalysisIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkReachableAnalysisIds"] as? String {
            self.networkReachableAnalysisIdsShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteNetworkReachableAnalysisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNisInspectionReportRequest : Tea.TeaModel {
    public var inspectionReportId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inspectionReportId != nil {
            map["InspectionReportId"] = self.inspectionReportId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionReportId"] as? String {
            self.inspectionReportId = value
        }
    }
}

public class DeleteNisInspectionReportResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteNisInspectionReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNisInspectionReportResponseBody?

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
            var model = DeleteNisInspectionReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNisInspectionTaskRequest : Tea.TeaModel {
    public var inspectionTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inspectionTaskId != nil {
            map["InspectionTaskId"] = self.inspectionTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionTaskId"] as? String {
            self.inspectionTaskId = value
        }
    }
}

public class DeleteNisInspectionTaskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteNisInspectionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNisInspectionTaskResponseBody?

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
            var model = DeleteNisInspectionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNisInspectionRecommendationResourcesRequest : Tea.TeaModel {
    public var inspectionReportId: String?

    public var language: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var recommendationCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inspectionReportId != nil {
            map["InspectionReportId"] = self.inspectionReportId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.recommendationCode != nil {
            map["RecommendationCode"] = self.recommendationCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionReportId"] as? String {
            self.inspectionReportId = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RecommendationCode"] as? String {
            self.recommendationCode = value
        }
    }
}

public class DescribeNisInspectionRecommendationResourcesResponseBody : Tea.TeaModel {
    public class ResourceList : Tea.TeaModel {
        public var analysisData: String?

        public var resourceId: String?

        public var resourceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analysisData != nil {
                map["AnalysisData"] = self.analysisData!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnalysisData"] as? String {
                self.analysisData = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
        }
    }
    public var inspectionReportId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var resourceList: [DescribeNisInspectionRecommendationResourcesResponseBody.ResourceList]?

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
        if self.inspectionReportId != nil {
            map["InspectionReportId"] = self.inspectionReportId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceList != nil {
            var tmp : [Any] = []
            for k in self.resourceList! {
                tmp.append(k.toMap())
            }
            map["ResourceList"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionReportId"] as? String {
            self.inspectionReportId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceList"] as? [Any?] {
            var tmp : [DescribeNisInspectionRecommendationResourcesResponseBody.ResourceList] = []
            for v in value {
                if v != nil {
                    var model = DescribeNisInspectionRecommendationResourcesResponseBody.ResourceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceList = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeNisInspectionRecommendationResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNisInspectionRecommendationResourcesResponseBody?

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
            var model = DescribeNisInspectionRecommendationResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNisInspectionReportCheckItemsRequest : Tea.TeaModel {
    public var categoryCode: String?

    public var inspectionReportId: String?

    public var language: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceType: [String]?

    public var riskLevel: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryCode != nil {
            map["CategoryCode"] = self.categoryCode!
        }
        if self.inspectionReportId != nil {
            map["InspectionReportId"] = self.inspectionReportId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.riskLevel != nil {
            map["RiskLevel"] = self.riskLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryCode"] as? String {
            self.categoryCode = value
        }
        if let value = dict["InspectionReportId"] as? String {
            self.inspectionReportId = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceType"] as? [String] {
            self.resourceType = value
        }
        if let value = dict["RiskLevel"] as? [String] {
            self.riskLevel = value
        }
    }
}

public class DescribeNisInspectionReportCheckItemsShrinkRequest : Tea.TeaModel {
    public var categoryCode: String?

    public var inspectionReportId: String?

    public var language: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceTypeShrink: String?

    public var riskLevelShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryCode != nil {
            map["CategoryCode"] = self.categoryCode!
        }
        if self.inspectionReportId != nil {
            map["InspectionReportId"] = self.inspectionReportId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceTypeShrink != nil {
            map["ResourceType"] = self.resourceTypeShrink!
        }
        if self.riskLevelShrink != nil {
            map["RiskLevel"] = self.riskLevelShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryCode"] as? String {
            self.categoryCode = value
        }
        if let value = dict["InspectionReportId"] as? String {
            self.inspectionReportId = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceTypeShrink = value
        }
        if let value = dict["RiskLevel"] as? String {
            self.riskLevelShrink = value
        }
    }
}

public class DescribeNisInspectionReportCheckItemsResponseBody : Tea.TeaModel {
    public class CheckItemList : Tea.TeaModel {
        public class CheckResultList : Tea.TeaModel {
            public var count: Int32?

            public var riskLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["RiskLevel"] as? String {
                    self.riskLevel = value
                }
            }
        }
        public class RecommendationList : Tea.TeaModel {
            public var abnormality: String?

            public var metadata: String?

            public var reason: String?

            public var reasonCode: String?

            public var recommendationCode: String?

            public var riskLevel: String?

            public var suggestion: String?

            public var suggestionCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.abnormality != nil {
                    map["Abnormality"] = self.abnormality!
                }
                if self.metadata != nil {
                    map["Metadata"] = self.metadata!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.reasonCode != nil {
                    map["ReasonCode"] = self.reasonCode!
                }
                if self.recommendationCode != nil {
                    map["RecommendationCode"] = self.recommendationCode!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                if self.suggestion != nil {
                    map["Suggestion"] = self.suggestion!
                }
                if self.suggestionCode != nil {
                    map["SuggestionCode"] = self.suggestionCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Abnormality"] as? String {
                    self.abnormality = value
                }
                if let value = dict["Metadata"] as? String {
                    self.metadata = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
                if let value = dict["ReasonCode"] as? String {
                    self.reasonCode = value
                }
                if let value = dict["RecommendationCode"] as? String {
                    self.recommendationCode = value
                }
                if let value = dict["RiskLevel"] as? String {
                    self.riskLevel = value
                }
                if let value = dict["Suggestion"] as? String {
                    self.suggestion = value
                }
                if let value = dict["SuggestionCode"] as? String {
                    self.suggestionCode = value
                }
            }
        }
        public var categoryCode: String?

        public var checkItemCode: String?

        public var checkItemName: String?

        public var checkResultList: [DescribeNisInspectionReportCheckItemsResponseBody.CheckItemList.CheckResultList]?

        public var description_: String?

        public var descriptionCode: String?

        public var recommendationList: [DescribeNisInspectionReportCheckItemsResponseBody.CheckItemList.RecommendationList]?

        public var resourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryCode != nil {
                map["CategoryCode"] = self.categoryCode!
            }
            if self.checkItemCode != nil {
                map["CheckItemCode"] = self.checkItemCode!
            }
            if self.checkItemName != nil {
                map["CheckItemName"] = self.checkItemName!
            }
            if self.checkResultList != nil {
                var tmp : [Any] = []
                for k in self.checkResultList! {
                    tmp.append(k.toMap())
                }
                map["CheckResultList"] = tmp
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.descriptionCode != nil {
                map["DescriptionCode"] = self.descriptionCode!
            }
            if self.recommendationList != nil {
                var tmp : [Any] = []
                for k in self.recommendationList! {
                    tmp.append(k.toMap())
                }
                map["RecommendationList"] = tmp
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryCode"] as? String {
                self.categoryCode = value
            }
            if let value = dict["CheckItemCode"] as? String {
                self.checkItemCode = value
            }
            if let value = dict["CheckItemName"] as? String {
                self.checkItemName = value
            }
            if let value = dict["CheckResultList"] as? [Any?] {
                var tmp : [DescribeNisInspectionReportCheckItemsResponseBody.CheckItemList.CheckResultList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeNisInspectionReportCheckItemsResponseBody.CheckItemList.CheckResultList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.checkResultList = tmp
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DescriptionCode"] as? String {
                self.descriptionCode = value
            }
            if let value = dict["RecommendationList"] as? [Any?] {
                var tmp : [DescribeNisInspectionReportCheckItemsResponseBody.CheckItemList.RecommendationList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeNisInspectionReportCheckItemsResponseBody.CheckItemList.RecommendationList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.recommendationList = tmp
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var checkItemList: [DescribeNisInspectionReportCheckItemsResponseBody.CheckItemList]?

    public var inspectionReportId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.checkItemList != nil {
            var tmp : [Any] = []
            for k in self.checkItemList! {
                tmp.append(k.toMap())
            }
            map["CheckItemList"] = tmp
        }
        if self.inspectionReportId != nil {
            map["InspectionReportId"] = self.inspectionReportId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckItemList"] as? [Any?] {
            var tmp : [DescribeNisInspectionReportCheckItemsResponseBody.CheckItemList] = []
            for v in value {
                if v != nil {
                    var model = DescribeNisInspectionReportCheckItemsResponseBody.CheckItemList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.checkItemList = tmp
        }
        if let value = dict["InspectionReportId"] as? String {
            self.inspectionReportId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeNisInspectionReportCheckItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNisInspectionReportCheckItemsResponseBody?

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
            var model = DescribeNisInspectionReportCheckItemsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNisInspectionReportStatusRequest : Tea.TeaModel {
    public var inspectionReportId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inspectionReportId != nil {
            map["InspectionReportId"] = self.inspectionReportId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionReportId"] as? String {
            self.inspectionReportId = value
        }
    }
}

public class DescribeNisInspectionReportStatusResponseBody : Tea.TeaModel {
    public var endTime: String?

    public var inspectionProject: String?

    public var inspectionReportId: String?

    public var inspectionTaskId: String?

    public var inspectionTaskName: String?

    public var requestId: String?

    public var startTime: String?

    public var status: String?

    public override init() {
        super.init()
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
        if self.inspectionProject != nil {
            map["InspectionProject"] = self.inspectionProject!
        }
        if self.inspectionReportId != nil {
            map["InspectionReportId"] = self.inspectionReportId!
        }
        if self.inspectionTaskId != nil {
            map["InspectionTaskId"] = self.inspectionTaskId!
        }
        if self.inspectionTaskName != nil {
            map["InspectionTaskName"] = self.inspectionTaskName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InspectionProject"] as? String {
            self.inspectionProject = value
        }
        if let value = dict["InspectionReportId"] as? String {
            self.inspectionReportId = value
        }
        if let value = dict["InspectionTaskId"] as? String {
            self.inspectionTaskId = value
        }
        if let value = dict["InspectionTaskName"] as? String {
            self.inspectionTaskName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeNisInspectionReportStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNisInspectionReportStatusResponseBody?

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
            var model = DescribeNisInspectionReportStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNisInspectionReportSummaryRequest : Tea.TeaModel {
    public var inspectionReportId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inspectionReportId != nil {
            map["InspectionReportId"] = self.inspectionReportId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionReportId"] as? String {
            self.inspectionReportId = value
        }
    }
}

public class DescribeNisInspectionReportSummaryResponseBody : Tea.TeaModel {
    public class Summary : Tea.TeaModel {
        public class PassRateSummary : Tea.TeaModel {
            public var passRate: Double?

            public var passRateScope: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.passRate != nil {
                    map["PassRate"] = self.passRate!
                }
                if self.passRateScope != nil {
                    map["PassRateScope"] = self.passRateScope!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PassRate"] as? Double {
                    self.passRate = value
                }
                if let value = dict["PassRateScope"] as? String {
                    self.passRateScope = value
                }
            }
        }
        public class RiskSummary : Tea.TeaModel {
            public var resourceCount: Int32?

            public var riskCount: Int32?

            public var riskLevel: String?

            public var riskType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceCount != nil {
                    map["ResourceCount"] = self.resourceCount!
                }
                if self.riskCount != nil {
                    map["RiskCount"] = self.riskCount!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                if self.riskType != nil {
                    map["RiskType"] = self.riskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceCount"] as? Int32 {
                    self.resourceCount = value
                }
                if let value = dict["RiskCount"] as? Int32 {
                    self.riskCount = value
                }
                if let value = dict["RiskLevel"] as? String {
                    self.riskLevel = value
                }
                if let value = dict["RiskType"] as? String {
                    self.riskType = value
                }
            }
        }
        public var checkItemCount: Int32?

        public var checkResourceCount: Int32?

        public var passRateSummary: [DescribeNisInspectionReportSummaryResponseBody.Summary.PassRateSummary]?

        public var riskSummary: [DescribeNisInspectionReportSummaryResponseBody.Summary.RiskSummary]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkItemCount != nil {
                map["CheckItemCount"] = self.checkItemCount!
            }
            if self.checkResourceCount != nil {
                map["CheckResourceCount"] = self.checkResourceCount!
            }
            if self.passRateSummary != nil {
                var tmp : [Any] = []
                for k in self.passRateSummary! {
                    tmp.append(k.toMap())
                }
                map["PassRateSummary"] = tmp
            }
            if self.riskSummary != nil {
                var tmp : [Any] = []
                for k in self.riskSummary! {
                    tmp.append(k.toMap())
                }
                map["RiskSummary"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CheckItemCount"] as? Int32 {
                self.checkItemCount = value
            }
            if let value = dict["CheckResourceCount"] as? Int32 {
                self.checkResourceCount = value
            }
            if let value = dict["PassRateSummary"] as? [Any?] {
                var tmp : [DescribeNisInspectionReportSummaryResponseBody.Summary.PassRateSummary] = []
                for v in value {
                    if v != nil {
                        var model = DescribeNisInspectionReportSummaryResponseBody.Summary.PassRateSummary()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.passRateSummary = tmp
            }
            if let value = dict["RiskSummary"] as? [Any?] {
                var tmp : [DescribeNisInspectionReportSummaryResponseBody.Summary.RiskSummary] = []
                for v in value {
                    if v != nil {
                        var model = DescribeNisInspectionReportSummaryResponseBody.Summary.RiskSummary()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.riskSummary = tmp
            }
        }
    }
    public var endTime: String?

    public var inspectionReportId: String?

    public var inspectionTaskId: String?

    public var requestId: String?

    public var startTime: String?

    public var status: String?

    public var summary: DescribeNisInspectionReportSummaryResponseBody.Summary?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.summary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.inspectionReportId != nil {
            map["InspectionReportId"] = self.inspectionReportId!
        }
        if self.inspectionTaskId != nil {
            map["InspectionTaskId"] = self.inspectionTaskId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.summary != nil {
            map["Summary"] = self.summary?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InspectionReportId"] as? String {
            self.inspectionReportId = value
        }
        if let value = dict["InspectionTaskId"] as? String {
            self.inspectionTaskId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Summary"] as? [String: Any?] {
            var model = DescribeNisInspectionReportSummaryResponseBody.Summary()
            model.fromMap(value)
            self.summary = model
        }
    }
}

public class DescribeNisInspectionReportSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNisInspectionReportSummaryResponseBody?

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
            var model = DescribeNisInspectionReportSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNisInspectionTaskRequest : Tea.TeaModel {
    public var inspectionTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inspectionTaskId != nil {
            map["InspectionTaskId"] = self.inspectionTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionTaskId"] as? String {
            self.inspectionTaskId = value
        }
    }
}

public class DescribeNisInspectionTaskResponseBody : Tea.TeaModel {
    public class CheckResourceList : Tea.TeaModel {
        public var checkScope: String?

        public var resourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkScope != nil {
                map["CheckScope"] = self.checkScope!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CheckScope"] as? String {
                self.checkScope = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var checkResourceList: [DescribeNisInspectionTaskResponseBody.CheckResourceList]?

    public var createTime: String?

    public var inspectionInterval: String?

    public var inspectionName: String?

    public var inspectionProject: String?

    public var inspectionTaskId: String?

    public var inspectionTriggerTime: String?

    public var lastUpdateReportId: String?

    public var lastUpdateTime: String?

    public var requestId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkResourceList != nil {
            var tmp : [Any] = []
            for k in self.checkResourceList! {
                tmp.append(k.toMap())
            }
            map["CheckResourceList"] = tmp
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.inspectionInterval != nil {
            map["InspectionInterval"] = self.inspectionInterval!
        }
        if self.inspectionName != nil {
            map["InspectionName"] = self.inspectionName!
        }
        if self.inspectionProject != nil {
            map["InspectionProject"] = self.inspectionProject!
        }
        if self.inspectionTaskId != nil {
            map["InspectionTaskId"] = self.inspectionTaskId!
        }
        if self.inspectionTriggerTime != nil {
            map["InspectionTriggerTime"] = self.inspectionTriggerTime!
        }
        if self.lastUpdateReportId != nil {
            map["LastUpdateReportId"] = self.lastUpdateReportId!
        }
        if self.lastUpdateTime != nil {
            map["LastUpdateTime"] = self.lastUpdateTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckResourceList"] as? [Any?] {
            var tmp : [DescribeNisInspectionTaskResponseBody.CheckResourceList] = []
            for v in value {
                if v != nil {
                    var model = DescribeNisInspectionTaskResponseBody.CheckResourceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.checkResourceList = tmp
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["InspectionInterval"] as? String {
            self.inspectionInterval = value
        }
        if let value = dict["InspectionName"] as? String {
            self.inspectionName = value
        }
        if let value = dict["InspectionProject"] as? String {
            self.inspectionProject = value
        }
        if let value = dict["InspectionTaskId"] as? String {
            self.inspectionTaskId = value
        }
        if let value = dict["InspectionTriggerTime"] as? String {
            self.inspectionTriggerTime = value
        }
        if let value = dict["LastUpdateReportId"] as? String {
            self.lastUpdateReportId = value
        }
        if let value = dict["LastUpdateTime"] as? String {
            self.lastUpdateTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeNisInspectionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNisInspectionTaskResponseBody?

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
            var model = DescribeNisInspectionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNisTrafficRankingRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var nisTrafficRankingId: String?

    public override init() {
        super.init()
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
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.nisTrafficRankingId != nil {
            map["NisTrafficRankingId"] = self.nisTrafficRankingId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NisTrafficRankingId"] as? String {
            self.nisTrafficRankingId = value
        }
    }
}

public class DescribeNisTrafficRankingResponseBody : Tea.TeaModel {
    public class FlowRankingList : Tea.TeaModel {
        public var bindingResourceId: String?

        public var bindingResourceType: String?

        public var bytes: Double?

        public var bytesRate: Double?

        public var clientAsn: String?

        public var clientCity: String?

        public var clientCountry: String?

        public var clientIsp: String?

        public var clientProvince: String?

        public var destinationIp: String?

        public var destinationPort: String?

        public var destinationRegionNo: String?

        public var direction: String?

        public var dscp: String?

        public var ecsId: String?

        public var instanceId: String?

        public var networkInterfaceId: String?

        public var packets: Double?

        public var packetsLostBlackhole: Double?

        public var packetsLostNoRoute: Double?

        public var packetsLostTTLExpired: Double?

        public var protocol_: String?

        public var publicIpAddress: String?

        public var regionId: String?

        public var roundTripTime: Double?

        public var sourceIp: String?

        public var sourcePort: String?

        public var sourceRegionNo: String?

        public var trafficPath: String?

        public var transitRouterAttachmentId: String?

        public var transitRouterDestinationAccountId: String?

        public var transitRouterDestinationAvailableZone: String?

        public var transitRouterDestinationNetworkInterface: String?

        public var transitRouterDestinationResourceId: String?

        public var transitRouterDestinationVSwitchId: String?

        public var transitRouterId: String?

        public var transitRouterPairAttachmentId: String?

        public var transitRouterSourceAccountId: String?

        public var transitRouterSourceAvailableZone: String?

        public var transitRouterSourceNetworkInterface: String?

        public var transitRouterSourceResourceId: String?

        public var transitRouterSourceVSwitchId: String?

        public var vSwitchId: String?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bindingResourceId != nil {
                map["BindingResourceId"] = self.bindingResourceId!
            }
            if self.bindingResourceType != nil {
                map["BindingResourceType"] = self.bindingResourceType!
            }
            if self.bytes != nil {
                map["Bytes"] = self.bytes!
            }
            if self.bytesRate != nil {
                map["BytesRate"] = self.bytesRate!
            }
            if self.clientAsn != nil {
                map["ClientAsn"] = self.clientAsn!
            }
            if self.clientCity != nil {
                map["ClientCity"] = self.clientCity!
            }
            if self.clientCountry != nil {
                map["ClientCountry"] = self.clientCountry!
            }
            if self.clientIsp != nil {
                map["ClientIsp"] = self.clientIsp!
            }
            if self.clientProvince != nil {
                map["ClientProvince"] = self.clientProvince!
            }
            if self.destinationIp != nil {
                map["DestinationIp"] = self.destinationIp!
            }
            if self.destinationPort != nil {
                map["DestinationPort"] = self.destinationPort!
            }
            if self.destinationRegionNo != nil {
                map["DestinationRegionNo"] = self.destinationRegionNo!
            }
            if self.direction != nil {
                map["Direction"] = self.direction!
            }
            if self.dscp != nil {
                map["Dscp"] = self.dscp!
            }
            if self.ecsId != nil {
                map["EcsId"] = self.ecsId!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.networkInterfaceId != nil {
                map["NetworkInterfaceId"] = self.networkInterfaceId!
            }
            if self.packets != nil {
                map["Packets"] = self.packets!
            }
            if self.packetsLostBlackhole != nil {
                map["PacketsLostBlackhole"] = self.packetsLostBlackhole!
            }
            if self.packetsLostNoRoute != nil {
                map["PacketsLostNoRoute"] = self.packetsLostNoRoute!
            }
            if self.packetsLostTTLExpired != nil {
                map["PacketsLostTTLExpired"] = self.packetsLostTTLExpired!
            }
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.publicIpAddress != nil {
                map["PublicIpAddress"] = self.publicIpAddress!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.roundTripTime != nil {
                map["RoundTripTime"] = self.roundTripTime!
            }
            if self.sourceIp != nil {
                map["SourceIp"] = self.sourceIp!
            }
            if self.sourcePort != nil {
                map["SourcePort"] = self.sourcePort!
            }
            if self.sourceRegionNo != nil {
                map["SourceRegionNo"] = self.sourceRegionNo!
            }
            if self.trafficPath != nil {
                map["TrafficPath"] = self.trafficPath!
            }
            if self.transitRouterAttachmentId != nil {
                map["TransitRouterAttachmentId"] = self.transitRouterAttachmentId!
            }
            if self.transitRouterDestinationAccountId != nil {
                map["TransitRouterDestinationAccountId"] = self.transitRouterDestinationAccountId!
            }
            if self.transitRouterDestinationAvailableZone != nil {
                map["TransitRouterDestinationAvailableZone"] = self.transitRouterDestinationAvailableZone!
            }
            if self.transitRouterDestinationNetworkInterface != nil {
                map["TransitRouterDestinationNetworkInterface"] = self.transitRouterDestinationNetworkInterface!
            }
            if self.transitRouterDestinationResourceId != nil {
                map["TransitRouterDestinationResourceId"] = self.transitRouterDestinationResourceId!
            }
            if self.transitRouterDestinationVSwitchId != nil {
                map["TransitRouterDestinationVSwitchId"] = self.transitRouterDestinationVSwitchId!
            }
            if self.transitRouterId != nil {
                map["TransitRouterId"] = self.transitRouterId!
            }
            if self.transitRouterPairAttachmentId != nil {
                map["TransitRouterPairAttachmentId"] = self.transitRouterPairAttachmentId!
            }
            if self.transitRouterSourceAccountId != nil {
                map["TransitRouterSourceAccountId"] = self.transitRouterSourceAccountId!
            }
            if self.transitRouterSourceAvailableZone != nil {
                map["TransitRouterSourceAvailableZone"] = self.transitRouterSourceAvailableZone!
            }
            if self.transitRouterSourceNetworkInterface != nil {
                map["TransitRouterSourceNetworkInterface"] = self.transitRouterSourceNetworkInterface!
            }
            if self.transitRouterSourceResourceId != nil {
                map["TransitRouterSourceResourceId"] = self.transitRouterSourceResourceId!
            }
            if self.transitRouterSourceVSwitchId != nil {
                map["TransitRouterSourceVSwitchId"] = self.transitRouterSourceVSwitchId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BindingResourceId"] as? String {
                self.bindingResourceId = value
            }
            if let value = dict["BindingResourceType"] as? String {
                self.bindingResourceType = value
            }
            if let value = dict["Bytes"] as? Double {
                self.bytes = value
            }
            if let value = dict["BytesRate"] as? Double {
                self.bytesRate = value
            }
            if let value = dict["ClientAsn"] as? String {
                self.clientAsn = value
            }
            if let value = dict["ClientCity"] as? String {
                self.clientCity = value
            }
            if let value = dict["ClientCountry"] as? String {
                self.clientCountry = value
            }
            if let value = dict["ClientIsp"] as? String {
                self.clientIsp = value
            }
            if let value = dict["ClientProvince"] as? String {
                self.clientProvince = value
            }
            if let value = dict["DestinationIp"] as? String {
                self.destinationIp = value
            }
            if let value = dict["DestinationPort"] as? String {
                self.destinationPort = value
            }
            if let value = dict["DestinationRegionNo"] as? String {
                self.destinationRegionNo = value
            }
            if let value = dict["Direction"] as? String {
                self.direction = value
            }
            if let value = dict["Dscp"] as? String {
                self.dscp = value
            }
            if let value = dict["EcsId"] as? String {
                self.ecsId = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["NetworkInterfaceId"] as? String {
                self.networkInterfaceId = value
            }
            if let value = dict["Packets"] as? Double {
                self.packets = value
            }
            if let value = dict["PacketsLostBlackhole"] as? Double {
                self.packetsLostBlackhole = value
            }
            if let value = dict["PacketsLostNoRoute"] as? Double {
                self.packetsLostNoRoute = value
            }
            if let value = dict["PacketsLostTTLExpired"] as? Double {
                self.packetsLostTTLExpired = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["PublicIpAddress"] as? String {
                self.publicIpAddress = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RoundTripTime"] as? Double {
                self.roundTripTime = value
            }
            if let value = dict["SourceIp"] as? String {
                self.sourceIp = value
            }
            if let value = dict["SourcePort"] as? String {
                self.sourcePort = value
            }
            if let value = dict["SourceRegionNo"] as? String {
                self.sourceRegionNo = value
            }
            if let value = dict["TrafficPath"] as? String {
                self.trafficPath = value
            }
            if let value = dict["TransitRouterAttachmentId"] as? String {
                self.transitRouterAttachmentId = value
            }
            if let value = dict["TransitRouterDestinationAccountId"] as? String {
                self.transitRouterDestinationAccountId = value
            }
            if let value = dict["TransitRouterDestinationAvailableZone"] as? String {
                self.transitRouterDestinationAvailableZone = value
            }
            if let value = dict["TransitRouterDestinationNetworkInterface"] as? String {
                self.transitRouterDestinationNetworkInterface = value
            }
            if let value = dict["TransitRouterDestinationResourceId"] as? String {
                self.transitRouterDestinationResourceId = value
            }
            if let value = dict["TransitRouterDestinationVSwitchId"] as? String {
                self.transitRouterDestinationVSwitchId = value
            }
            if let value = dict["TransitRouterId"] as? String {
                self.transitRouterId = value
            }
            if let value = dict["TransitRouterPairAttachmentId"] as? String {
                self.transitRouterPairAttachmentId = value
            }
            if let value = dict["TransitRouterSourceAccountId"] as? String {
                self.transitRouterSourceAccountId = value
            }
            if let value = dict["TransitRouterSourceAvailableZone"] as? String {
                self.transitRouterSourceAvailableZone = value
            }
            if let value = dict["TransitRouterSourceNetworkInterface"] as? String {
                self.transitRouterSourceNetworkInterface = value
            }
            if let value = dict["TransitRouterSourceResourceId"] as? String {
                self.transitRouterSourceResourceId = value
            }
            if let value = dict["TransitRouterSourceVSwitchId"] as? String {
                self.transitRouterSourceVSwitchId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var flowRankingList: [DescribeNisTrafficRankingResponseBody.FlowRankingList]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var nisTrafficRankingId: String?

    public var requestId: String?

    public var status: String?

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
        if self.flowRankingList != nil {
            var tmp : [Any] = []
            for k in self.flowRankingList! {
                tmp.append(k.toMap())
            }
            map["FlowRankingList"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.nisTrafficRankingId != nil {
            map["NisTrafficRankingId"] = self.nisTrafficRankingId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowRankingList"] as? [Any?] {
            var tmp : [DescribeNisTrafficRankingResponseBody.FlowRankingList] = []
            for v in value {
                if v != nil {
                    var model = DescribeNisTrafficRankingResponseBody.FlowRankingList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.flowRankingList = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["NisTrafficRankingId"] as? String {
            self.nisTrafficRankingId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeNisTrafficRankingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNisTrafficRankingResponseBody?

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
            var model = DescribeNisTrafficRankingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [Int64] {
            self.accountIds = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["CloudIp"] as? String {
            self.cloudIp = value
        }
        if let value = dict["CloudIpList"] as? [String] {
            self.cloudIpList = value
        }
        if let value = dict["CloudIsp"] as? String {
            self.cloudIsp = value
        }
        if let value = dict["CloudPort"] as? String {
            self.cloudPort = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceList"] as? [String] {
            self.instanceList = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OtherCity"] as? String {
            self.otherCity = value
        }
        if let value = dict["OtherCountry"] as? String {
            self.otherCountry = value
        }
        if let value = dict["OtherIp"] as? String {
            self.otherIp = value
        }
        if let value = dict["OtherIsp"] as? String {
            self.otherIsp = value
        }
        if let value = dict["OtherPort"] as? String {
            self.otherPort = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["TopN"] as? Int32 {
            self.topN = value
        }
        if let value = dict["TupleType"] as? Int32 {
            self.tupleType = value
        }
        if let value = dict["UseMultiAccount"] as? Bool {
            self.useMultiAccount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [Int64] {
            self.accountIds = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["CloudIp"] as? String {
            self.cloudIp = value
        }
        if let value = dict["CloudIpList"] as? String {
            self.cloudIpListShrink = value
        }
        if let value = dict["CloudIsp"] as? String {
            self.cloudIsp = value
        }
        if let value = dict["CloudPort"] as? String {
            self.cloudPort = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceList"] as? String {
            self.instanceListShrink = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OtherCity"] as? String {
            self.otherCity = value
        }
        if let value = dict["OtherCountry"] as? String {
            self.otherCountry = value
        }
        if let value = dict["OtherIp"] as? String {
            self.otherIp = value
        }
        if let value = dict["OtherIsp"] as? String {
            self.otherIsp = value
        }
        if let value = dict["OtherPort"] as? String {
            self.otherPort = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["TopN"] as? Int32 {
            self.topN = value
        }
        if let value = dict["TupleType"] as? Int32 {
            self.tupleType = value
        }
        if let value = dict["UseMultiAccount"] as? Bool {
            self.useMultiAccount = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessRegion"] as? String {
                self.accessRegion = value
            }
            if let value = dict["BeginTime"] as? String {
                self.beginTime = value
            }
            if let value = dict["ByteCount"] as? Double {
                self.byteCount = value
            }
            if let value = dict["CloudCity"] as? String {
                self.cloudCity = value
            }
            if let value = dict["CloudCountry"] as? String {
                self.cloudCountry = value
            }
            if let value = dict["CloudIp"] as? String {
                self.cloudIp = value
            }
            if let value = dict["CloudIsp"] as? String {
                self.cloudIsp = value
            }
            if let value = dict["CloudPort"] as? String {
                self.cloudPort = value
            }
            if let value = dict["CloudProduct"] as? String {
                self.cloudProduct = value
            }
            if let value = dict["CloudProvince"] as? String {
                self.cloudProvince = value
            }
            if let value = dict["Direction"] as? String {
                self.direction = value
            }
            if let value = dict["InByteCount"] as? Double {
                self.inByteCount = value
            }
            if let value = dict["InOutOrderCount"] as? Double {
                self.inOutOrderCount = value
            }
            if let value = dict["InPacketCount"] as? Double {
                self.inPacketCount = value
            }
            if let value = dict["InRetranCount"] as? Double {
                self.inRetranCount = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["OtherCity"] as? String {
                self.otherCity = value
            }
            if let value = dict["OtherCountry"] as? String {
                self.otherCountry = value
            }
            if let value = dict["OtherIp"] as? String {
                self.otherIp = value
            }
            if let value = dict["OtherIsp"] as? String {
                self.otherIsp = value
            }
            if let value = dict["OtherPort"] as? String {
                self.otherPort = value
            }
            if let value = dict["OtherProduct"] as? String {
                self.otherProduct = value
            }
            if let value = dict["OtherProvince"] as? String {
                self.otherProvince = value
            }
            if let value = dict["OutByteCount"] as? Double {
                self.outByteCount = value
            }
            if let value = dict["OutOrderCount"] as? Double {
                self.outOrderCount = value
            }
            if let value = dict["OutOutOrderCount"] as? Double {
                self.outOutOrderCount = value
            }
            if let value = dict["OutPacketCount"] as? Double {
                self.outPacketCount = value
            }
            if let value = dict["OutRetranCount"] as? Double {
                self.outRetranCount = value
            }
            if let value = dict["PacketCount"] as? Double {
                self.packetCount = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["RetransmitRate"] as? Double {
                self.retransmitRate = value
            }
            if let value = dict["Rtt"] as? Double {
                self.rtt = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetInternetTupleResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetInternetTupleResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetInternetTupleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["NatGatewayId"] as? String {
            self.natGatewayId = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TopN"] as? Int32 {
            self.topN = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveSessionCount"] as? Double {
                self.activeSessionCount = value
            }
            if let value = dict["InBps"] as? Double {
                self.inBps = value
            }
            if let value = dict["InFlowPerMinute"] as? Double {
                self.inFlowPerMinute = value
            }
            if let value = dict["InPps"] as? Double {
                self.inPps = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["NewSessionPerSecond"] as? Double {
                self.newSessionPerSecond = value
            }
            if let value = dict["OutBps"] as? Double {
                self.outBps = value
            }
            if let value = dict["OutFlowPerMinute"] as? Double {
                self.outFlowPerMinute = value
            }
            if let value = dict["OutPps"] as? Double {
                self.outPps = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTopNOpen"] as? Bool {
            self.isTopNOpen = value
        }
        if let value = dict["NatGatewayTopN"] as? [Any?] {
            var tmp : [GetNatTopNResponseBody.NatGatewayTopN] = []
            for v in value {
                if v != nil {
                    var model = GetNatTopNResponseBody.NatGatewayTopN()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.natGatewayTopN = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetNatTopNResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NetworkReachableAnalysisId"] as? String {
            self.networkReachableAnalysisId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["NetworkPathId"] as? String {
            self.networkPathId = value
        }
        if let value = dict["NetworkPathParameter"] as? String {
            self.networkPathParameter = value
        }
        if let value = dict["NetworkReachableAnalysisId"] as? String {
            self.networkReachableAnalysisId = value
        }
        if let value = dict["NetworkReachableAnalysisResult"] as? String {
            self.networkReachableAnalysisResult = value
        }
        if let value = dict["NetworkReachableAnalysisStatus"] as? String {
            self.networkReachableAnalysisStatus = value
        }
        if let value = dict["Reachable"] as? Bool {
            self.reachable = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetNetworkReachableAnalysisResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public var stepMinutes: Int32?

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
        if self.stepMinutes != nil {
            map["StepMinutes"] = self.stepMinutes!
        }
        if self.useCrossAccount != nil {
            map["UseCrossAccount"] = self.useCrossAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["Dimensions"] as? [Any?] {
            var tmp : [GetNisNetworkMetricsRequest.Dimensions] = []
            for v in value {
                if v != nil {
                    var model = GetNisNetworkMetricsRequest.Dimensions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dimensions = tmp
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ScanBy"] as? String {
            self.scanBy = value
        }
        if let value = dict["StepMinutes"] as? Int32 {
            self.stepMinutes = value
        }
        if let value = dict["UseCrossAccount"] as? Bool {
            self.useCrossAccount = value
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

    public var stepMinutes: Int32?

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
        if self.stepMinutes != nil {
            map["StepMinutes"] = self.stepMinutes!
        }
        if self.useCrossAccount != nil {
            map["UseCrossAccount"] = self.useCrossAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["Dimensions"] as? String {
            self.dimensionsShrink = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["ScanBy"] as? String {
            self.scanBy = value
        }
        if let value = dict["StepMinutes"] as? Int32 {
            self.stepMinutes = value
        }
        if let value = dict["UseCrossAccount"] as? Bool {
            self.useCrossAccount = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TimeStamp"] as? Int64 {
                    self.timeStamp = value
                }
                if let value = dict["Value"] as? Double {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Metrics"] as? [Any?] {
                var tmp : [GetNisNetworkMetricsResponseBody.Data.Metrics] = []
                for v in value {
                    if v != nil {
                        var model = GetNisNetworkMetricsResponseBody.Data.Metrics()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.metrics = tmp
            }
            if let value = dict["Unit"] as? String {
                self.unit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetNisNetworkMetricsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetNisNetworkMetricsResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [GetNisNetworkRankingRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = GetNisNetworkRankingRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["GroupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["TopN"] as? Int32 {
            self.topN = value
        }
        if let value = dict["UseCrossAccount"] as? Bool {
            self.useCrossAccount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [String] {
            self.accountIds = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Filter"] as? String {
            self.filterShrink = value
        }
        if let value = dict["GroupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["TopN"] as? Int32 {
            self.topN = value
        }
        if let value = dict["UseCrossAccount"] as? Bool {
            self.useCrossAccount = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveSessionCount"] as? Double {
                self.activeSessionCount = value
            }
            if let value = dict["Asn"] as? String {
                self.asn = value
            }
            if let value = dict["AttachmentId"] as? String {
                self.attachmentId = value
            }
            if let value = dict["BandwidthPackageId"] as? String {
                self.bandwidthPackageId = value
            }
            if let value = dict["ByteCount"] as? Double {
                self.byteCount = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["Country"] as? String {
                self.country = value
            }
            if let value = dict["DestinationIp"] as? String {
                self.destinationIp = value
            }
            if let value = dict["DestinationIsp"] as? String {
                self.destinationIsp = value
            }
            if let value = dict["DestinationPort"] as? String {
                self.destinationPort = value
            }
            if let value = dict["DestinationRegionNo"] as? String {
                self.destinationRegionNo = value
            }
            if let value = dict["DestinationZone"] as? String {
                self.destinationZone = value
            }
            if let value = dict["IP"] as? String {
                self.IP = value
            }
            if let value = dict["InBps"] as? Double {
                self.inBps = value
            }
            if let value = dict["InPps"] as? Double {
                self.inPps = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Isp"] as? String {
                self.isp = value
            }
            if let value = dict["NewSessionPerSecond"] as? Double {
                self.newSessionPerSecond = value
            }
            if let value = dict["OutBps"] as? Double {
                self.outBps = value
            }
            if let value = dict["OutPps"] as? Double {
                self.outPps = value
            }
            if let value = dict["PacketCount"] as? Double {
                self.packetCount = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
            if let value = dict["RTT"] as? Double {
                self.RTT = value
            }
            if let value = dict["RegionNo"] as? String {
                self.regionNo = value
            }
            if let value = dict["RetransmitRate"] as? Double {
                self.retransmitRate = value
            }
            if let value = dict["SourceIp"] as? String {
                self.sourceIp = value
            }
            if let value = dict["SourceIsp"] as? String {
                self.sourceIsp = value
            }
            if let value = dict["SourcePort"] as? String {
                self.sourcePort = value
            }
            if let value = dict["SourceZone"] as? String {
                self.sourceZone = value
            }
            if let value = dict["VbrId"] as? String {
                self.vbrId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetNisNetworkRankingResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetNisNetworkRankingResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetNisNetworkRankingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [Int64] {
            self.accountIds = value
        }
        if let value = dict["BandwithPackageId"] as? String {
            self.bandwithPackageId = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["CenId"] as? String {
            self.cenId = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["GroupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OtherIp"] as? String {
            self.otherIp = value
        }
        if let value = dict["OtherPort"] as? String {
            self.otherPort = value
        }
        if let value = dict["OtherRegion"] as? String {
            self.otherRegion = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["ThisIp"] as? String {
            self.thisIp = value
        }
        if let value = dict["ThisPort"] as? String {
            self.thisPort = value
        }
        if let value = dict["ThisRegion"] as? String {
            self.thisRegion = value
        }
        if let value = dict["TopN"] as? Int32 {
            self.topN = value
        }
        if let value = dict["UseMultiAccount"] as? Bool {
            self.useMultiAccount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? String {
            self.accountIdsShrink = value
        }
        if let value = dict["BandwithPackageId"] as? String {
            self.bandwithPackageId = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["CenId"] as? String {
            self.cenId = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["GroupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OtherIp"] as? String {
            self.otherIp = value
        }
        if let value = dict["OtherPort"] as? String {
            self.otherPort = value
        }
        if let value = dict["OtherRegion"] as? String {
            self.otherRegion = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["ThisIp"] as? String {
            self.thisIp = value
        }
        if let value = dict["ThisPort"] as? String {
            self.thisPort = value
        }
        if let value = dict["ThisRegion"] as? String {
            self.thisRegion = value
        }
        if let value = dict["TopN"] as? Int32 {
            self.topN = value
        }
        if let value = dict["UseMultiAccount"] as? Bool {
            self.useMultiAccount = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["BandwithPackageId"] as? String {
                self.bandwithPackageId = value
            }
            if let value = dict["Bytes"] as? Double {
                self.bytes = value
            }
            if let value = dict["CenId"] as? String {
                self.cenId = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["OtherIp"] as? String {
                self.otherIp = value
            }
            if let value = dict["OtherPort"] as? String {
                self.otherPort = value
            }
            if let value = dict["OtherRegion"] as? String {
                self.otherRegion = value
            }
            if let value = dict["Packets"] as? Double {
                self.packets = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["ThisIp"] as? String {
                self.thisIp = value
            }
            if let value = dict["ThisPort"] as? String {
                self.thisPort = value
            }
            if let value = dict["ThisRegion"] as? String {
                self.thisRegion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TransitRouterFlowTopN"] as? [Any?] {
            var tmp : [GetTransitRouterFlowTopNResponseBody.TransitRouterFlowTopN] = []
            for v in value {
                if v != nil {
                    var model = GetTransitRouterFlowTopNResponseBody.TransitRouterFlowTopN()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTransitRouterFlowTopNResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? [Int64] {
            self.accountIds = value
        }
        if let value = dict["AttachmentId"] as? String {
            self.attachmentId = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["CenId"] as? String {
            self.cenId = value
        }
        if let value = dict["CloudIp"] as? String {
            self.cloudIp = value
        }
        if let value = dict["CloudPort"] as? String {
            self.cloudPort = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["GroupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OtherIp"] as? String {
            self.otherIp = value
        }
        if let value = dict["OtherPort"] as? String {
            self.otherPort = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["TopN"] as? Int32 {
            self.topN = value
        }
        if let value = dict["UseMultiAccount"] as? Bool {
            self.useMultiAccount = value
        }
        if let value = dict["VirtualBorderRouterId"] as? String {
            self.virtualBorderRouterId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountIds"] as? String {
            self.accountIdsShrink = value
        }
        if let value = dict["AttachmentId"] as? String {
            self.attachmentId = value
        }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["CenId"] as? String {
            self.cenId = value
        }
        if let value = dict["CloudIp"] as? String {
            self.cloudIp = value
        }
        if let value = dict["CloudPort"] as? String {
            self.cloudPort = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["GroupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OtherIp"] as? String {
            self.otherIp = value
        }
        if let value = dict["OtherPort"] as? String {
            self.otherPort = value
        }
        if let value = dict["Protocol"] as? String {
            self.protocol_ = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["TopN"] as? Int32 {
            self.topN = value
        }
        if let value = dict["UseMultiAccount"] as? Bool {
            self.useMultiAccount = value
        }
        if let value = dict["VirtualBorderRouterId"] as? String {
            self.virtualBorderRouterId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AttachmentId"] as? String {
                self.attachmentId = value
            }
            if let value = dict["Bytes"] as? Double {
                self.bytes = value
            }
            if let value = dict["CloudIp"] as? String {
                self.cloudIp = value
            }
            if let value = dict["CloudPort"] as? String {
                self.cloudPort = value
            }
            if let value = dict["CloudRegion"] as? String {
                self.cloudRegion = value
            }
            if let value = dict["OtherIp"] as? String {
                self.otherIp = value
            }
            if let value = dict["OtherPort"] as? String {
                self.otherPort = value
            }
            if let value = dict["Packets"] as? Double {
                self.packets = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["VirtualBorderRouterId"] as? String {
                self.virtualBorderRouterId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VirtualBorderRouterFlowlogTopN"] as? [Any?] {
            var tmp : [GetVbrFlowTopNResponseBody.VirtualBorderRouterFlowlogTopN] = []
            for v in value {
                if v != nil {
                    var model = GetVbrFlowTopNResponseBody.VirtualBorderRouterFlowlogTopN()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetVbrFlowTopNResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNisInspectionResourceTypeResponseBody : Tea.TeaModel {
    public class ResourceTypeList : Tea.TeaModel {
        public var resourceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var requestId: String?

    public var resourceTypeList: [ListNisInspectionResourceTypeResponseBody.ResourceTypeList]?

    public override init() {
        super.init()
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
        if self.resourceTypeList != nil {
            var tmp : [Any] = []
            for k in self.resourceTypeList! {
                tmp.append(k.toMap())
            }
            map["ResourceTypeList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceTypeList"] as? [Any?] {
            var tmp : [ListNisInspectionResourceTypeResponseBody.ResourceTypeList] = []
            for v in value {
                if v != nil {
                    var model = ListNisInspectionResourceTypeResponseBody.ResourceTypeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceTypeList = tmp
        }
    }
}

public class ListNisInspectionResourceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNisInspectionResourceTypeResponseBody?

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
            var model = ListNisInspectionResourceTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNisInspectionTaskReportsRequest : Tea.TeaModel {
    public var inspectionTaskId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inspectionTaskId != nil {
            map["InspectionTaskId"] = self.inspectionTaskId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionTaskId"] as? String {
            self.inspectionTaskId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListNisInspectionTaskReportsResponseBody : Tea.TeaModel {
    public class InspectionReportList : Tea.TeaModel {
        public var inspectionReportId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.inspectionReportId != nil {
                map["InspectionReportId"] = self.inspectionReportId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InspectionReportId"] as? String {
                self.inspectionReportId = value
            }
        }
    }
    public var inspectionReportList: [ListNisInspectionTaskReportsResponseBody.InspectionReportList]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.inspectionReportList != nil {
            var tmp : [Any] = []
            for k in self.inspectionReportList! {
                tmp.append(k.toMap())
            }
            map["InspectionReportList"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionReportList"] as? [Any?] {
            var tmp : [ListNisInspectionTaskReportsResponseBody.InspectionReportList] = []
            for v in value {
                if v != nil {
                    var model = ListNisInspectionTaskReportsResponseBody.InspectionReportList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.inspectionReportList = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListNisInspectionTaskReportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNisInspectionTaskReportsResponseBody?

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
            var model = ListNisInspectionTaskReportsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNisInspectionTasksRequest : Tea.TeaModel {
    public var inspectionName: String?

    public var inspectionProject: String?

    public var inspectionTaskId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inspectionName != nil {
            map["InspectionName"] = self.inspectionName!
        }
        if self.inspectionProject != nil {
            map["InspectionProject"] = self.inspectionProject!
        }
        if self.inspectionTaskId != nil {
            map["InspectionTaskId"] = self.inspectionTaskId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionName"] as? String {
            self.inspectionName = value
        }
        if let value = dict["InspectionProject"] as? String {
            self.inspectionProject = value
        }
        if let value = dict["InspectionTaskId"] as? String {
            self.inspectionTaskId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListNisInspectionTasksResponseBody : Tea.TeaModel {
    public class InspectionTaskList : Tea.TeaModel {
        public var createTime: String?

        public var inspectionName: String?

        public var inspectionProject: String?

        public var inspectionTaskId: String?

        public var lastUpdateReportId: String?

        public var status: String?

        public override init() {
            super.init()
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
            if self.inspectionName != nil {
                map["InspectionName"] = self.inspectionName!
            }
            if self.inspectionProject != nil {
                map["InspectionProject"] = self.inspectionProject!
            }
            if self.inspectionTaskId != nil {
                map["InspectionTaskId"] = self.inspectionTaskId!
            }
            if self.lastUpdateReportId != nil {
                map["LastUpdateReportId"] = self.lastUpdateReportId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["InspectionName"] as? String {
                self.inspectionName = value
            }
            if let value = dict["InspectionProject"] as? String {
                self.inspectionProject = value
            }
            if let value = dict["InspectionTaskId"] as? String {
                self.inspectionTaskId = value
            }
            if let value = dict["LastUpdateReportId"] as? String {
                self.lastUpdateReportId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var inspectionTaskList: [ListNisInspectionTasksResponseBody.InspectionTaskList]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.inspectionTaskList != nil {
            var tmp : [Any] = []
            for k in self.inspectionTaskList! {
                tmp.append(k.toMap())
            }
            map["InspectionTaskList"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionTaskList"] as? [Any?] {
            var tmp : [ListNisInspectionTasksResponseBody.InspectionTaskList] = []
            for v in value {
                if v != nil {
                    var model = ListNisInspectionTasksResponseBody.InspectionTaskList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.inspectionTaskList = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListNisInspectionTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNisInspectionTasksResponseBody?

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
            var model = ListNisInspectionTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartNisInspectionTaskRequest : Tea.TeaModel {
    public var inspectionTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inspectionTaskId != nil {
            map["InspectionTaskId"] = self.inspectionTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionTaskId"] as? String {
            self.inspectionTaskId = value
        }
    }
}

public class StartNisInspectionTaskResponseBody : Tea.TeaModel {
    public var inspectionReportId: String?

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
        if self.inspectionReportId != nil {
            map["InspectionReportId"] = self.inspectionReportId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionReportId"] as? String {
            self.inspectionReportId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartNisInspectionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartNisInspectionTaskResponseBody?

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
            var model = StartNisInspectionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartNisTrafficRankingRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var key: String?

        public var operator_: String?

        public var value: [String]?

        public override init() {
            super.init()
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
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["Value"] as? [String] {
                self.value = value
            }
        }
    }
    public var beginTime: Int64?

    public var direction: String?

    public var endTime: Int64?

    public var filter: [StartNisTrafficRankingRequest.Filter]?

    public var groupBy: [String]?

    public var language: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var regionNo: String?

    public var sort: String?

    public var storageInterval: Int32?

    public var topN: Int32?

    public var trafficAnalyzerId: String?

    public var trafficScenario: String?

    public var tupleDimension: String?

    public override init() {
        super.init()
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
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.storageInterval != nil {
            map["StorageInterval"] = self.storageInterval!
        }
        if self.topN != nil {
            map["TopN"] = self.topN!
        }
        if self.trafficAnalyzerId != nil {
            map["TrafficAnalyzerId"] = self.trafficAnalyzerId!
        }
        if self.trafficScenario != nil {
            map["TrafficScenario"] = self.trafficScenario!
        }
        if self.tupleDimension != nil {
            map["TupleDimension"] = self.tupleDimension!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Filter"] as? [Any?] {
            var tmp : [StartNisTrafficRankingRequest.Filter] = []
            for v in value {
                if v != nil {
                    var model = StartNisTrafficRankingRequest.Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filter = tmp
        }
        if let value = dict["GroupBy"] as? [String] {
            self.groupBy = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["StorageInterval"] as? Int32 {
            self.storageInterval = value
        }
        if let value = dict["TopN"] as? Int32 {
            self.topN = value
        }
        if let value = dict["TrafficAnalyzerId"] as? String {
            self.trafficAnalyzerId = value
        }
        if let value = dict["TrafficScenario"] as? String {
            self.trafficScenario = value
        }
        if let value = dict["TupleDimension"] as? String {
            self.tupleDimension = value
        }
    }
}

public class StartNisTrafficRankingShrinkRequest : Tea.TeaModel {
    public var beginTime: Int64?

    public var direction: String?

    public var endTime: Int64?

    public var filterShrink: String?

    public var groupByShrink: String?

    public var language: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var orderBy: String?

    public var regionNo: String?

    public var sort: String?

    public var storageInterval: Int32?

    public var topN: Int32?

    public var trafficAnalyzerId: String?

    public var trafficScenario: String?

    public var tupleDimension: String?

    public override init() {
        super.init()
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
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterShrink != nil {
            map["Filter"] = self.filterShrink!
        }
        if self.groupByShrink != nil {
            map["GroupBy"] = self.groupByShrink!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.regionNo != nil {
            map["RegionNo"] = self.regionNo!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.storageInterval != nil {
            map["StorageInterval"] = self.storageInterval!
        }
        if self.topN != nil {
            map["TopN"] = self.topN!
        }
        if self.trafficAnalyzerId != nil {
            map["TrafficAnalyzerId"] = self.trafficAnalyzerId!
        }
        if self.trafficScenario != nil {
            map["TrafficScenario"] = self.trafficScenario!
        }
        if self.tupleDimension != nil {
            map["TupleDimension"] = self.tupleDimension!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? Int64 {
            self.beginTime = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Filter"] as? String {
            self.filterShrink = value
        }
        if let value = dict["GroupBy"] as? String {
            self.groupByShrink = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["RegionNo"] as? String {
            self.regionNo = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["StorageInterval"] as? Int32 {
            self.storageInterval = value
        }
        if let value = dict["TopN"] as? Int32 {
            self.topN = value
        }
        if let value = dict["TrafficAnalyzerId"] as? String {
            self.trafficAnalyzerId = value
        }
        if let value = dict["TrafficScenario"] as? String {
            self.trafficScenario = value
        }
        if let value = dict["TupleDimension"] as? String {
            self.tupleDimension = value
        }
    }
}

public class StartNisTrafficRankingResponseBody : Tea.TeaModel {
    public var nisTrafficRankingId: String?

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
        if self.nisTrafficRankingId != nil {
            map["NisTrafficRankingId"] = self.nisTrafficRankingId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NisTrafficRankingId"] as? String {
            self.nisTrafficRankingId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartNisTrafficRankingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartNisTrafficRankingResponseBody?

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
            var model = StartNisTrafficRankingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateNisInspectionTaskRequest : Tea.TeaModel {
    public var inspectionTaskId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inspectionTaskId != nil {
            map["InspectionTaskId"] = self.inspectionTaskId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InspectionTaskId"] as? String {
            self.inspectionTaskId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class UpdateNisInspectionTaskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateNisInspectionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNisInspectionTaskResponseBody?

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
            var model = UpdateNisInspectionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
