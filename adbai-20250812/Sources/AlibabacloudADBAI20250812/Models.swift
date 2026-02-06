import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAgentPlatformRequest : Tea.TeaModel {
    public class AiPlatformConfig : Tea.TeaModel {
        public var serveApiKey: String?

        public var serveEmbeddingEndpoint: String?

        public var serveEmbeddingModelName: String?

        public var serveEndpoint: String?

        public var serveModelName: String?

        public var specName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serveApiKey != nil {
                map["ServeApiKey"] = self.serveApiKey!
            }
            if self.serveEmbeddingEndpoint != nil {
                map["ServeEmbeddingEndpoint"] = self.serveEmbeddingEndpoint!
            }
            if self.serveEmbeddingModelName != nil {
                map["ServeEmbeddingModelName"] = self.serveEmbeddingModelName!
            }
            if self.serveEndpoint != nil {
                map["ServeEndpoint"] = self.serveEndpoint!
            }
            if self.serveModelName != nil {
                map["ServeModelName"] = self.serveModelName!
            }
            if self.specName != nil {
                map["SpecName"] = self.specName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ServeApiKey"] as? String {
                self.serveApiKey = value
            }
            if let value = dict["ServeEmbeddingEndpoint"] as? String {
                self.serveEmbeddingEndpoint = value
            }
            if let value = dict["ServeEmbeddingModelName"] as? String {
                self.serveEmbeddingModelName = value
            }
            if let value = dict["ServeEndpoint"] as? String {
                self.serveEndpoint = value
            }
            if let value = dict["ServeModelName"] as? String {
                self.serveModelName = value
            }
            if let value = dict["SpecName"] as? String {
                self.specName = value
            }
        }
    }
    public var aiPlatformConfig: CreateAgentPlatformRequest.AiPlatformConfig?

    public var DBClusterId: String?

    public var name: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aiPlatformConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aiPlatformConfig != nil {
            map["AiPlatformConfig"] = self.aiPlatformConfig?.toMap()
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AiPlatformConfig"] as? [String: Any?] {
            var model = CreateAgentPlatformRequest.AiPlatformConfig()
            model.fromMap(value)
            self.aiPlatformConfig = model
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateAgentPlatformShrinkRequest : Tea.TeaModel {
    public var aiPlatformConfigShrink: String?

    public var DBClusterId: String?

    public var name: String?

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
        if self.aiPlatformConfigShrink != nil {
            map["AiPlatformConfig"] = self.aiPlatformConfigShrink!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AiPlatformConfig"] as? String {
            self.aiPlatformConfigShrink = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateAgentPlatformResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAgentPlatformResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAgentPlatformResponseBody?

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
            var model = CreateAgentPlatformResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEmbodiedAIPlatformRequest : Tea.TeaModel {
    public class RayConfig : Tea.TeaModel {
        public class WorkerGroups : Tea.TeaModel {
            public var allocateUnit: String?

            public var groupName: String?

            public var maxWorkerQuantity: Int32?

            public var minWorkerQuantity: Int32?

            public var workerDiskCapacity: String?

            public var workerSpecName: String?

            public var workerSpecType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allocateUnit != nil {
                    map["AllocateUnit"] = self.allocateUnit!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.maxWorkerQuantity != nil {
                    map["MaxWorkerQuantity"] = self.maxWorkerQuantity!
                }
                if self.minWorkerQuantity != nil {
                    map["MinWorkerQuantity"] = self.minWorkerQuantity!
                }
                if self.workerDiskCapacity != nil {
                    map["WorkerDiskCapacity"] = self.workerDiskCapacity!
                }
                if self.workerSpecName != nil {
                    map["WorkerSpecName"] = self.workerSpecName!
                }
                if self.workerSpecType != nil {
                    map["WorkerSpecType"] = self.workerSpecType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllocateUnit"] as? String {
                    self.allocateUnit = value
                }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["MaxWorkerQuantity"] as? Int32 {
                    self.maxWorkerQuantity = value
                }
                if let value = dict["MinWorkerQuantity"] as? Int32 {
                    self.minWorkerQuantity = value
                }
                if let value = dict["WorkerDiskCapacity"] as? String {
                    self.workerDiskCapacity = value
                }
                if let value = dict["WorkerSpecName"] as? String {
                    self.workerSpecName = value
                }
                if let value = dict["WorkerSpecType"] as? String {
                    self.workerSpecType = value
                }
            }
        }
        public var category: String?

        public var headSpec: String?

        public var workerGroups: [CreateEmbodiedAIPlatformRequest.RayConfig.WorkerGroups]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.headSpec != nil {
                map["HeadSpec"] = self.headSpec!
            }
            if self.workerGroups != nil {
                var tmp : [Any] = []
                for k in self.workerGroups! {
                    tmp.append(k.toMap())
                }
                map["WorkerGroups"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["HeadSpec"] as? String {
                self.headSpec = value
            }
            if let value = dict["WorkerGroups"] as? [Any?] {
                var tmp : [CreateEmbodiedAIPlatformRequest.RayConfig.WorkerGroups] = []
                for v in value {
                    if v != nil {
                        var model = CreateEmbodiedAIPlatformRequest.RayConfig.WorkerGroups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.workerGroups = tmp
            }
        }
    }
    public var DBClusterId: String?

    public var platformName: String?

    public var rayConfig: CreateEmbodiedAIPlatformRequest.RayConfig?

    public var regionId: String?

    public var webserverSpecName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rayConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.platformName != nil {
            map["PlatformName"] = self.platformName!
        }
        if self.rayConfig != nil {
            map["RayConfig"] = self.rayConfig?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.webserverSpecName != nil {
            map["WebserverSpecName"] = self.webserverSpecName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["PlatformName"] as? String {
            self.platformName = value
        }
        if let value = dict["RayConfig"] as? [String: Any?] {
            var model = CreateEmbodiedAIPlatformRequest.RayConfig()
            model.fromMap(value)
            self.rayConfig = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WebserverSpecName"] as? String {
            self.webserverSpecName = value
        }
    }
}

public class CreateEmbodiedAIPlatformShrinkRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var platformName: String?

    public var rayConfigShrink: String?

    public var regionId: String?

    public var webserverSpecName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.platformName != nil {
            map["PlatformName"] = self.platformName!
        }
        if self.rayConfigShrink != nil {
            map["RayConfig"] = self.rayConfigShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.webserverSpecName != nil {
            map["WebserverSpecName"] = self.webserverSpecName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["PlatformName"] as? String {
            self.platformName = value
        }
        if let value = dict["RayConfig"] as? String {
            self.rayConfigShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["WebserverSpecName"] as? String {
            self.webserverSpecName = value
        }
    }
}

public class CreateEmbodiedAIPlatformResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateEmbodiedAIPlatformResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEmbodiedAIPlatformResponseBody?

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
            var model = CreateEmbodiedAIPlatformResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteEmbodiedAIPlatformRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var platformName: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.platformName != nil {
            map["PlatformName"] = self.platformName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["PlatformName"] as? String {
            self.platformName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteEmbodiedAIPlatformResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteEmbodiedAIPlatformResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEmbodiedAIPlatformResponseBody?

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
            var model = DeleteEmbodiedAIPlatformResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeEmbodiedAIPlatformsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var platformName: String?

    public var regionId: String?

    public var startTime: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.platformName != nil {
            map["PlatformName"] = self.platformName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PlatformName"] as? String {
            self.platformName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
    }
}

public class DescribeEmbodiedAIPlatformsResponseBody : Tea.TeaModel {
    public class Platforms : Tea.TeaModel {
        public class EapConfig : Tea.TeaModel {
            public var webserverAddress: String?

            public var webserverSpecName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.webserverAddress != nil {
                    map["WebserverAddress"] = self.webserverAddress!
                }
                if self.webserverSpecName != nil {
                    map["WebserverSpecName"] = self.webserverSpecName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["WebserverAddress"] as? String {
                    self.webserverAddress = value
                }
                if let value = dict["WebserverSpecName"] as? String {
                    self.webserverSpecName = value
                }
            }
        }
        public class RayConfig : Tea.TeaModel {
            public class WorkerGroups : Tea.TeaModel {
                public var allocateUnit: String?

                public var groupName: String?

                public var maxWorkerQuantity: Int32?

                public var minWorkerQuantity: Int32?

                public var workerDiskCapacity: String?

                public var workerSpecName: String?

                public var workerSpecType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.allocateUnit != nil {
                        map["AllocateUnit"] = self.allocateUnit!
                    }
                    if self.groupName != nil {
                        map["GroupName"] = self.groupName!
                    }
                    if self.maxWorkerQuantity != nil {
                        map["MaxWorkerQuantity"] = self.maxWorkerQuantity!
                    }
                    if self.minWorkerQuantity != nil {
                        map["MinWorkerQuantity"] = self.minWorkerQuantity!
                    }
                    if self.workerDiskCapacity != nil {
                        map["WorkerDiskCapacity"] = self.workerDiskCapacity!
                    }
                    if self.workerSpecName != nil {
                        map["WorkerSpecName"] = self.workerSpecName!
                    }
                    if self.workerSpecType != nil {
                        map["WorkerSpecType"] = self.workerSpecType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AllocateUnit"] as? String {
                        self.allocateUnit = value
                    }
                    if let value = dict["GroupName"] as? String {
                        self.groupName = value
                    }
                    if let value = dict["MaxWorkerQuantity"] as? Int32 {
                        self.maxWorkerQuantity = value
                    }
                    if let value = dict["MinWorkerQuantity"] as? Int32 {
                        self.minWorkerQuantity = value
                    }
                    if let value = dict["WorkerDiskCapacity"] as? String {
                        self.workerDiskCapacity = value
                    }
                    if let value = dict["WorkerSpecName"] as? String {
                        self.workerSpecName = value
                    }
                    if let value = dict["WorkerSpecType"] as? String {
                        self.workerSpecType = value
                    }
                }
            }
            public var category: String?

            public var headDiskCapacity: String?

            public var headSpec: String?

            public var headSpecType: String?

            public var rayClusterAddress: String?

            public var rayDashboardAddress: String?

            public var rayGrafanaAddress: String?

            public var workerGroups: [DescribeEmbodiedAIPlatformsResponseBody.Platforms.RayConfig.WorkerGroups]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.headDiskCapacity != nil {
                    map["HeadDiskCapacity"] = self.headDiskCapacity!
                }
                if self.headSpec != nil {
                    map["HeadSpec"] = self.headSpec!
                }
                if self.headSpecType != nil {
                    map["HeadSpecType"] = self.headSpecType!
                }
                if self.rayClusterAddress != nil {
                    map["RayClusterAddress"] = self.rayClusterAddress!
                }
                if self.rayDashboardAddress != nil {
                    map["RayDashboardAddress"] = self.rayDashboardAddress!
                }
                if self.rayGrafanaAddress != nil {
                    map["RayGrafanaAddress"] = self.rayGrafanaAddress!
                }
                if self.workerGroups != nil {
                    var tmp : [Any] = []
                    for k in self.workerGroups! {
                        tmp.append(k.toMap())
                    }
                    map["WorkerGroups"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["HeadDiskCapacity"] as? String {
                    self.headDiskCapacity = value
                }
                if let value = dict["HeadSpec"] as? String {
                    self.headSpec = value
                }
                if let value = dict["HeadSpecType"] as? String {
                    self.headSpecType = value
                }
                if let value = dict["RayClusterAddress"] as? String {
                    self.rayClusterAddress = value
                }
                if let value = dict["RayDashboardAddress"] as? String {
                    self.rayDashboardAddress = value
                }
                if let value = dict["RayGrafanaAddress"] as? String {
                    self.rayGrafanaAddress = value
                }
                if let value = dict["WorkerGroups"] as? [Any?] {
                    var tmp : [DescribeEmbodiedAIPlatformsResponseBody.Platforms.RayConfig.WorkerGroups] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeEmbodiedAIPlatformsResponseBody.Platforms.RayConfig.WorkerGroups()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.workerGroups = tmp
                }
            }
        }
        public var createTime: Int64?

        public var eapConfig: DescribeEmbodiedAIPlatformsResponseBody.Platforms.EapConfig?

        public var ossBucketName: String?

        public var platformName: String?

        public var rayConfig: DescribeEmbodiedAIPlatformsResponseBody.Platforms.RayConfig?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.eapConfig?.validate()
            try self.rayConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.eapConfig != nil {
                map["EapConfig"] = self.eapConfig?.toMap()
            }
            if self.ossBucketName != nil {
                map["OssBucketName"] = self.ossBucketName!
            }
            if self.platformName != nil {
                map["PlatformName"] = self.platformName!
            }
            if self.rayConfig != nil {
                map["RayConfig"] = self.rayConfig?.toMap()
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["EapConfig"] as? [String: Any?] {
                var model = DescribeEmbodiedAIPlatformsResponseBody.Platforms.EapConfig()
                model.fromMap(value)
                self.eapConfig = model
            }
            if let value = dict["OssBucketName"] as? String {
                self.ossBucketName = value
            }
            if let value = dict["PlatformName"] as? String {
                self.platformName = value
            }
            if let value = dict["RayConfig"] as? [String: Any?] {
                var model = DescribeEmbodiedAIPlatformsResponseBody.Platforms.RayConfig()
                model.fromMap(value)
                self.rayConfig = model
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var platforms: [DescribeEmbodiedAIPlatformsResponseBody.Platforms]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.platforms != nil {
            var tmp : [Any] = []
            for k in self.platforms! {
                tmp.append(k.toMap())
            }
            map["Platforms"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Platforms"] as? [Any?] {
            var tmp : [DescribeEmbodiedAIPlatformsResponseBody.Platforms] = []
            for v in value {
                if v != nil {
                    var model = DescribeEmbodiedAIPlatformsResponseBody.Platforms()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.platforms = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeEmbodiedAIPlatformsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEmbodiedAIPlatformsResponseBody?

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
            var model = DescribeEmbodiedAIPlatformsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetEmbodiedAIPlatformResourceUsageInfoRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var platformName: String?

    public var regionId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.platformName != nil {
            map["PlatformName"] = self.platformName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["PlatformName"] as? String {
            self.platformName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class GetEmbodiedAIPlatformResourceUsageInfoResponseBody : Tea.TeaModel {
    public class GpuDetails : Tea.TeaModel {
        public var allocatedUnit: Int32?

        public var gpuModel: String?

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
            if self.allocatedUnit != nil {
                map["AllocatedUnit"] = self.allocatedUnit!
            }
            if self.gpuModel != nil {
                map["GpuModel"] = self.gpuModel!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllocatedUnit"] as? Int32 {
                self.allocatedUnit = value
            }
            if let value = dict["GpuModel"] as? String {
                self.gpuModel = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public class SlbTraffic : Tea.TeaModel {
        public var totalBytesIn: Int64?

        public var totalBytesOut: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.totalBytesIn != nil {
                map["TotalBytesIn"] = self.totalBytesIn!
            }
            if self.totalBytesOut != nil {
                map["TotalBytesOut"] = self.totalBytesOut!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TotalBytesIn"] as? Int64 {
                self.totalBytesIn = value
            }
            if let value = dict["TotalBytesOut"] as? Int64 {
                self.totalBytesOut = value
            }
        }
    }
    public class StorageUsage : Tea.TeaModel {
        public class Nas : Tea.TeaModel {
            public var meteredSize: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.meteredSize != nil {
                    map["MeteredSize"] = self.meteredSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MeteredSize"] as? Int64 {
                    self.meteredSize = value
                }
            }
        }
        public class Oss : Tea.TeaModel {
            public var standardStorageSize: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.standardStorageSize != nil {
                    map["StandardStorageSize"] = self.standardStorageSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["StandardStorageSize"] as? Int64 {
                    self.standardStorageSize = value
                }
            }
        }
        public var nas: GetEmbodiedAIPlatformResourceUsageInfoResponseBody.StorageUsage.Nas?

        public var oss: GetEmbodiedAIPlatformResourceUsageInfoResponseBody.StorageUsage.Oss?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.nas?.validate()
            try self.oss?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nas != nil {
                map["Nas"] = self.nas?.toMap()
            }
            if self.oss != nil {
                map["Oss"] = self.oss?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Nas"] as? [String: Any?] {
                var model = GetEmbodiedAIPlatformResourceUsageInfoResponseBody.StorageUsage.Nas()
                model.fromMap(value)
                self.nas = model
            }
            if let value = dict["Oss"] as? [String: Any?] {
                var model = GetEmbodiedAIPlatformResourceUsageInfoResponseBody.StorageUsage.Oss()
                model.fromMap(value)
                self.oss = model
            }
        }
    }
    public var gpuDetails: [GetEmbodiedAIPlatformResourceUsageInfoResponseBody.GpuDetails]?

    public var maxRegisteredDevices: Int64?

    public var registeredDeviceCount: Int64?

    public var requestId: String?

    public var slbTraffic: GetEmbodiedAIPlatformResourceUsageInfoResponseBody.SlbTraffic?

    public var storageUsage: GetEmbodiedAIPlatformResourceUsageInfoResponseBody.StorageUsage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.slbTraffic?.validate()
        try self.storageUsage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gpuDetails != nil {
            var tmp : [Any] = []
            for k in self.gpuDetails! {
                tmp.append(k.toMap())
            }
            map["GpuDetails"] = tmp
        }
        if self.maxRegisteredDevices != nil {
            map["MaxRegisteredDevices"] = self.maxRegisteredDevices!
        }
        if self.registeredDeviceCount != nil {
            map["RegisteredDeviceCount"] = self.registeredDeviceCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slbTraffic != nil {
            map["SlbTraffic"] = self.slbTraffic?.toMap()
        }
        if self.storageUsage != nil {
            map["StorageUsage"] = self.storageUsage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GpuDetails"] as? [Any?] {
            var tmp : [GetEmbodiedAIPlatformResourceUsageInfoResponseBody.GpuDetails] = []
            for v in value {
                if v != nil {
                    var model = GetEmbodiedAIPlatformResourceUsageInfoResponseBody.GpuDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.gpuDetails = tmp
        }
        if let value = dict["MaxRegisteredDevices"] as? Int64 {
            self.maxRegisteredDevices = value
        }
        if let value = dict["RegisteredDeviceCount"] as? Int64 {
            self.registeredDeviceCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlbTraffic"] as? [String: Any?] {
            var model = GetEmbodiedAIPlatformResourceUsageInfoResponseBody.SlbTraffic()
            model.fromMap(value)
            self.slbTraffic = model
        }
        if let value = dict["StorageUsage"] as? [String: Any?] {
            var model = GetEmbodiedAIPlatformResourceUsageInfoResponseBody.StorageUsage()
            model.fromMap(value)
            self.storageUsage = model
        }
    }
}

public class GetEmbodiedAIPlatformResourceUsageInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEmbodiedAIPlatformResourceUsageInfoResponseBody?

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
            var model = GetEmbodiedAIPlatformResourceUsageInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetEmbodiedAIPlatformPasswordRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var password: String?

    public var platformName: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.platformName != nil {
            map["PlatformName"] = self.platformName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["PlatformName"] as? String {
            self.platformName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ResetEmbodiedAIPlatformPasswordResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ResetEmbodiedAIPlatformPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetEmbodiedAIPlatformPasswordResponseBody?

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
            var model = ResetEmbodiedAIPlatformPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
