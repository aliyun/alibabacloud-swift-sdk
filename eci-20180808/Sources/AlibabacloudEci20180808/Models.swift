import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CommitContainerRequest : Tea.TeaModel {
    public class AcrRegistryInfo : Tea.TeaModel {
        public var arnService: String?

        public var arnUser: String?

        public var instanceId: String?

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
            if self.arnService != nil {
                map["ArnService"] = self.arnService!
            }
            if self.arnUser != nil {
                map["ArnUser"] = self.arnUser!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArnService"] as? String {
                self.arnService = value
            }
            if let value = dict["ArnUser"] as? String {
                self.arnUser = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public class Arn : Tea.TeaModel {
        public var roleArn: String?

        public var roleType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.roleType != nil {
                map["RoleType"] = self.roleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RoleArn"] as? String {
                self.roleArn = value
            }
            if let value = dict["RoleType"] as? String {
                self.roleType = value
            }
        }
    }
    public class Image : Tea.TeaModel {
        public var author: String?

        public var message: String?

        public var repository: String?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.author != nil {
                map["Author"] = self.author!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.repository != nil {
                map["Repository"] = self.repository!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Author"] as? String {
                self.author = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Repository"] as? String {
                self.repository = value
            }
            if let value = dict["Tag"] as? String {
                self.tag = value
            }
        }
    }
    public var acrRegistryInfo: CommitContainerRequest.AcrRegistryInfo?

    public var arn: CommitContainerRequest.Arn?

    public var containerGroupId: String?

    public var containerName: String?

    public var image: CommitContainerRequest.Image?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.acrRegistryInfo?.validate()
        try self.arn?.validate()
        try self.image?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrRegistryInfo != nil {
            map["AcrRegistryInfo"] = self.acrRegistryInfo?.toMap()
        }
        if self.arn != nil {
            map["Arn"] = self.arn?.toMap()
        }
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.containerName != nil {
            map["ContainerName"] = self.containerName!
        }
        if self.image != nil {
            map["Image"] = self.image?.toMap()
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcrRegistryInfo"] as? [String: Any?] {
            var model = CommitContainerRequest.AcrRegistryInfo()
            model.fromMap(value)
            self.acrRegistryInfo = model
        }
        if let value = dict["Arn"] as? [String: Any?] {
            var model = CommitContainerRequest.Arn()
            model.fromMap(value)
            self.arn = model
        }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["ContainerName"] as? String {
            self.containerName = value
        }
        if let value = dict["Image"] as? [String: Any?] {
            var model = CommitContainerRequest.Image()
            model.fromMap(value)
            self.image = model
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CommitContainerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CommitContainerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CommitContainerResponseBody?

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
            var model = CommitContainerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CopyDataCacheRequest : Tea.TeaModel {
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
    public var bucket: String?

    public var clientToken: String?

    public var dataCacheId: String?

    public var destinationRegionId: String?

    public var name: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var path: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var retentionDays: Int32?

    public var tag: [CopyDataCacheRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dataCacheId != nil {
            map["DataCacheId"] = self.dataCacheId!
        }
        if self.destinationRegionId != nil {
            map["DestinationRegionId"] = self.destinationRegionId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
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
        if let value = dict["Bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataCacheId"] as? String {
            self.dataCacheId = value
        }
        if let value = dict["DestinationRegionId"] as? String {
            self.destinationRegionId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RetentionDays"] as? Int32 {
            self.retentionDays = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CopyDataCacheRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CopyDataCacheRequest.Tag()
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

public class CopyDataCacheResponseBody : Tea.TeaModel {
    public var dataCacheId: String?

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
        if self.dataCacheId != nil {
            map["DataCacheId"] = self.dataCacheId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataCacheId"] as? String {
            self.dataCacheId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CopyDataCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CopyDataCacheResponseBody?

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
            var model = CopyDataCacheResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateContainerGroupRequest : Tea.TeaModel {
    public class DnsConfig : Tea.TeaModel {
        public class Option : Tea.TeaModel {
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
        public var nameServer: [String]?

        public var option: [CreateContainerGroupRequest.DnsConfig.Option]?

        public var search: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nameServer != nil {
                map["NameServer"] = self.nameServer!
            }
            if self.option != nil {
                var tmp : [Any] = []
                for k in self.option! {
                    tmp.append(k.toMap())
                }
                map["Option"] = tmp
            }
            if self.search != nil {
                map["Search"] = self.search!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NameServer"] as? [String] {
                self.nameServer = value
            }
            if let value = dict["Option"] as? [Any?] {
                var tmp : [CreateContainerGroupRequest.DnsConfig.Option] = []
                for v in value {
                    if v != nil {
                        var model = CreateContainerGroupRequest.DnsConfig.Option()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.option = tmp
            }
            if let value = dict["Search"] as? [String] {
                self.search = value
            }
        }
    }
    public class HostSecurityContext : Tea.TeaModel {
        public class Sysctl : Tea.TeaModel {
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
        public var sysctl: [CreateContainerGroupRequest.HostSecurityContext.Sysctl]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sysctl != nil {
                var tmp : [Any] = []
                for k in self.sysctl! {
                    tmp.append(k.toMap())
                }
                map["Sysctl"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Sysctl"] as? [Any?] {
                var tmp : [CreateContainerGroupRequest.HostSecurityContext.Sysctl] = []
                for v in value {
                    if v != nil {
                        var model = CreateContainerGroupRequest.HostSecurityContext.Sysctl()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sysctl = tmp
            }
        }
    }
    public class SecurityContext : Tea.TeaModel {
        public class Sysctl : Tea.TeaModel {
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
        public var sysctl: [CreateContainerGroupRequest.SecurityContext.Sysctl]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sysctl != nil {
                var tmp : [Any] = []
                for k in self.sysctl! {
                    tmp.append(k.toMap())
                }
                map["Sysctl"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Sysctl"] as? [Any?] {
                var tmp : [CreateContainerGroupRequest.SecurityContext.Sysctl] = []
                for v in value {
                    if v != nil {
                        var model = CreateContainerGroupRequest.SecurityContext.Sysctl()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sysctl = tmp
            }
        }
    }
    public class AcrRegistryInfo : Tea.TeaModel {
        public var arnService: String?

        public var arnUser: String?

        public var domain: [String]?

        public var instanceId: String?

        public var instanceName: String?

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
            if self.arnService != nil {
                map["ArnService"] = self.arnService!
            }
            if self.arnUser != nil {
                map["ArnUser"] = self.arnUser!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArnService"] as? String {
                self.arnService = value
            }
            if let value = dict["ArnUser"] as? String {
                self.arnUser = value
            }
            if let value = dict["Domain"] as? [String] {
                self.domain = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public class Container : Tea.TeaModel {
        public class LivenessProbe : Tea.TeaModel {
            public class Exec : Tea.TeaModel {
                public var command: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.command != nil {
                        map["Command"] = self.command!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Command"] as? [String] {
                        self.command = value
                    }
                }
            }
            public class HttpGet : Tea.TeaModel {
                public var path: String?

                public var port: Int32?

                public var scheme: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.scheme != nil {
                        map["Scheme"] = self.scheme!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                    if let value = dict["Port"] as? Int32 {
                        self.port = value
                    }
                    if let value = dict["Scheme"] as? String {
                        self.scheme = value
                    }
                }
            }
            public class TcpSocket : Tea.TeaModel {
                public var port: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Port"] as? Int32 {
                        self.port = value
                    }
                }
            }
            public var exec: CreateContainerGroupRequest.Container.LivenessProbe.Exec?

            public var failureThreshold: Int32?

            public var httpGet: CreateContainerGroupRequest.Container.LivenessProbe.HttpGet?

            public var initialDelaySeconds: Int32?

            public var periodSeconds: Int32?

            public var successThreshold: Int32?

            public var tcpSocket: CreateContainerGroupRequest.Container.LivenessProbe.TcpSocket?

            public var timeoutSeconds: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.exec?.validate()
                try self.httpGet?.validate()
                try self.tcpSocket?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.exec != nil {
                    map["Exec"] = self.exec?.toMap()
                }
                if self.failureThreshold != nil {
                    map["FailureThreshold"] = self.failureThreshold!
                }
                if self.httpGet != nil {
                    map["HttpGet"] = self.httpGet?.toMap()
                }
                if self.initialDelaySeconds != nil {
                    map["InitialDelaySeconds"] = self.initialDelaySeconds!
                }
                if self.periodSeconds != nil {
                    map["PeriodSeconds"] = self.periodSeconds!
                }
                if self.successThreshold != nil {
                    map["SuccessThreshold"] = self.successThreshold!
                }
                if self.tcpSocket != nil {
                    map["TcpSocket"] = self.tcpSocket?.toMap()
                }
                if self.timeoutSeconds != nil {
                    map["TimeoutSeconds"] = self.timeoutSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Exec"] as? [String: Any?] {
                    var model = CreateContainerGroupRequest.Container.LivenessProbe.Exec()
                    model.fromMap(value)
                    self.exec = model
                }
                if let value = dict["FailureThreshold"] as? Int32 {
                    self.failureThreshold = value
                }
                if let value = dict["HttpGet"] as? [String: Any?] {
                    var model = CreateContainerGroupRequest.Container.LivenessProbe.HttpGet()
                    model.fromMap(value)
                    self.httpGet = model
                }
                if let value = dict["InitialDelaySeconds"] as? Int32 {
                    self.initialDelaySeconds = value
                }
                if let value = dict["PeriodSeconds"] as? Int32 {
                    self.periodSeconds = value
                }
                if let value = dict["SuccessThreshold"] as? Int32 {
                    self.successThreshold = value
                }
                if let value = dict["TcpSocket"] as? [String: Any?] {
                    var model = CreateContainerGroupRequest.Container.LivenessProbe.TcpSocket()
                    model.fromMap(value)
                    self.tcpSocket = model
                }
                if let value = dict["TimeoutSeconds"] as? Int32 {
                    self.timeoutSeconds = value
                }
            }
        }
        public class ReadinessProbe : Tea.TeaModel {
            public class Exec : Tea.TeaModel {
                public var command: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.command != nil {
                        map["Command"] = self.command!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Command"] as? [String] {
                        self.command = value
                    }
                }
            }
            public class HttpGet : Tea.TeaModel {
                public var path: String?

                public var port: Int32?

                public var scheme: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.scheme != nil {
                        map["Scheme"] = self.scheme!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                    if let value = dict["Port"] as? Int32 {
                        self.port = value
                    }
                    if let value = dict["Scheme"] as? String {
                        self.scheme = value
                    }
                }
            }
            public class TcpSocket : Tea.TeaModel {
                public var port: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Port"] as? Int32 {
                        self.port = value
                    }
                }
            }
            public var exec: CreateContainerGroupRequest.Container.ReadinessProbe.Exec?

            public var failureThreshold: Int32?

            public var httpGet: CreateContainerGroupRequest.Container.ReadinessProbe.HttpGet?

            public var initialDelaySeconds: Int32?

            public var periodSeconds: Int32?

            public var successThreshold: Int32?

            public var tcpSocket: CreateContainerGroupRequest.Container.ReadinessProbe.TcpSocket?

            public var timeoutSeconds: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.exec?.validate()
                try self.httpGet?.validate()
                try self.tcpSocket?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.exec != nil {
                    map["Exec"] = self.exec?.toMap()
                }
                if self.failureThreshold != nil {
                    map["FailureThreshold"] = self.failureThreshold!
                }
                if self.httpGet != nil {
                    map["HttpGet"] = self.httpGet?.toMap()
                }
                if self.initialDelaySeconds != nil {
                    map["InitialDelaySeconds"] = self.initialDelaySeconds!
                }
                if self.periodSeconds != nil {
                    map["PeriodSeconds"] = self.periodSeconds!
                }
                if self.successThreshold != nil {
                    map["SuccessThreshold"] = self.successThreshold!
                }
                if self.tcpSocket != nil {
                    map["TcpSocket"] = self.tcpSocket?.toMap()
                }
                if self.timeoutSeconds != nil {
                    map["TimeoutSeconds"] = self.timeoutSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Exec"] as? [String: Any?] {
                    var model = CreateContainerGroupRequest.Container.ReadinessProbe.Exec()
                    model.fromMap(value)
                    self.exec = model
                }
                if let value = dict["FailureThreshold"] as? Int32 {
                    self.failureThreshold = value
                }
                if let value = dict["HttpGet"] as? [String: Any?] {
                    var model = CreateContainerGroupRequest.Container.ReadinessProbe.HttpGet()
                    model.fromMap(value)
                    self.httpGet = model
                }
                if let value = dict["InitialDelaySeconds"] as? Int32 {
                    self.initialDelaySeconds = value
                }
                if let value = dict["PeriodSeconds"] as? Int32 {
                    self.periodSeconds = value
                }
                if let value = dict["SuccessThreshold"] as? Int32 {
                    self.successThreshold = value
                }
                if let value = dict["TcpSocket"] as? [String: Any?] {
                    var model = CreateContainerGroupRequest.Container.ReadinessProbe.TcpSocket()
                    model.fromMap(value)
                    self.tcpSocket = model
                }
                if let value = dict["TimeoutSeconds"] as? Int32 {
                    self.timeoutSeconds = value
                }
            }
        }
        public class SecurityContext : Tea.TeaModel {
            public class Capability : Tea.TeaModel {
                public var add: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.add != nil {
                        map["Add"] = self.add!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Add"] as? [String] {
                        self.add = value
                    }
                }
            }
            public var capability: CreateContainerGroupRequest.Container.SecurityContext.Capability?

            public var readOnlyRootFilesystem: Bool?

            public var runAsUser: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.capability?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capability != nil {
                    map["Capability"] = self.capability?.toMap()
                }
                if self.readOnlyRootFilesystem != nil {
                    map["ReadOnlyRootFilesystem"] = self.readOnlyRootFilesystem!
                }
                if self.runAsUser != nil {
                    map["RunAsUser"] = self.runAsUser!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Capability"] as? [String: Any?] {
                    var model = CreateContainerGroupRequest.Container.SecurityContext.Capability()
                    model.fromMap(value)
                    self.capability = model
                }
                if let value = dict["ReadOnlyRootFilesystem"] as? Bool {
                    self.readOnlyRootFilesystem = value
                }
                if let value = dict["RunAsUser"] as? Int64 {
                    self.runAsUser = value
                }
            }
        }
        public class EnvironmentVar : Tea.TeaModel {
            public class FieldRef : Tea.TeaModel {
                public var fieldPath: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fieldPath != nil {
                        map["FieldPath"] = self.fieldPath!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FieldPath"] as? String {
                        self.fieldPath = value
                    }
                }
            }
            public var fieldRef: CreateContainerGroupRequest.Container.EnvironmentVar.FieldRef?

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
                try self.fieldRef?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fieldRef != nil {
                    map["FieldRef"] = self.fieldRef?.toMap()
                }
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
                if let value = dict["FieldRef"] as? [String: Any?] {
                    var model = CreateContainerGroupRequest.Container.EnvironmentVar.FieldRef()
                    model.fromMap(value)
                    self.fieldRef = model
                }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public class LifecyclePostStartHandlerHttpGetHttpHeader : Tea.TeaModel {
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
        public class LifecyclePreStopHandlerHttpGetHttpHeader : Tea.TeaModel {
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
        public class Port : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
            }
        }
        public class VolumeMount : Tea.TeaModel {
            public var mountPath: String?

            public var mountPropagation: String?

            public var name: String?

            public var readOnly: Bool?

            public var subPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mountPath != nil {
                    map["MountPath"] = self.mountPath!
                }
                if self.mountPropagation != nil {
                    map["MountPropagation"] = self.mountPropagation!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.readOnly != nil {
                    map["ReadOnly"] = self.readOnly!
                }
                if self.subPath != nil {
                    map["SubPath"] = self.subPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MountPath"] as? String {
                    self.mountPath = value
                }
                if let value = dict["MountPropagation"] as? String {
                    self.mountPropagation = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ReadOnly"] as? Bool {
                    self.readOnly = value
                }
                if let value = dict["SubPath"] as? String {
                    self.subPath = value
                }
            }
        }
        public var livenessProbe: CreateContainerGroupRequest.Container.LivenessProbe?

        public var readinessProbe: CreateContainerGroupRequest.Container.ReadinessProbe?

        public var securityContext: CreateContainerGroupRequest.Container.SecurityContext?

        public var arg: [String]?

        public var command: [String]?

        public var cpu: Double?

        public var environmentVar: [CreateContainerGroupRequest.Container.EnvironmentVar]?

        public var environmentVarHide: Bool?

        public var gpu: Int32?

        public var image: String?

        public var imagePullPolicy: String?

        public var lifecyclePostStartHandlerExec: [String]?

        public var lifecyclePostStartHandlerHttpGetHost: String?

        public var lifecyclePostStartHandlerHttpGetHttpHeader: [CreateContainerGroupRequest.Container.LifecyclePostStartHandlerHttpGetHttpHeader]?

        public var lifecyclePostStartHandlerHttpGetPath: String?

        public var lifecyclePostStartHandlerHttpGetPort: Int32?

        public var lifecyclePostStartHandlerHttpGetScheme: String?

        public var lifecyclePostStartHandlerTcpSocketHost: String?

        public var lifecyclePostStartHandlerTcpSocketPort: Int32?

        public var lifecyclePreStopHandlerExec: [String]?

        public var lifecyclePreStopHandlerHttpGetHost: String?

        public var lifecyclePreStopHandlerHttpGetHttpHeader: [CreateContainerGroupRequest.Container.LifecyclePreStopHandlerHttpGetHttpHeader]?

        public var lifecyclePreStopHandlerHttpGetPath: String?

        public var lifecyclePreStopHandlerHttpGetPort: Int32?

        public var lifecyclePreStopHandlerHttpGetScheme: String?

        public var lifecyclePreStopHandlerTcpSocketHost: String?

        public var lifecyclePreStopHandlerTcpSocketPort: Int32?

        public var memory: Double?

        public var name: String?

        public var port: [CreateContainerGroupRequest.Container.Port]?

        public var securityContextPrivileged: Bool?

        public var securityContextRunAsGroup: Int64?

        public var securityContextRunAsNonRoot: Bool?

        public var stdin: Bool?

        public var stdinOnce: Bool?

        public var terminationMessagePath: String?

        public var terminationMessagePolicy: String?

        public var tty: Bool?

        public var volumeMount: [CreateContainerGroupRequest.Container.VolumeMount]?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.livenessProbe?.validate()
            try self.readinessProbe?.validate()
            try self.securityContext?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.livenessProbe != nil {
                map["LivenessProbe"] = self.livenessProbe?.toMap()
            }
            if self.readinessProbe != nil {
                map["ReadinessProbe"] = self.readinessProbe?.toMap()
            }
            if self.securityContext != nil {
                map["SecurityContext"] = self.securityContext?.toMap()
            }
            if self.arg != nil {
                map["Arg"] = self.arg!
            }
            if self.command != nil {
                map["Command"] = self.command!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.environmentVar != nil {
                var tmp : [Any] = []
                for k in self.environmentVar! {
                    tmp.append(k.toMap())
                }
                map["EnvironmentVar"] = tmp
            }
            if self.environmentVarHide != nil {
                map["EnvironmentVarHide"] = self.environmentVarHide!
            }
            if self.gpu != nil {
                map["Gpu"] = self.gpu!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.imagePullPolicy != nil {
                map["ImagePullPolicy"] = self.imagePullPolicy!
            }
            if self.lifecyclePostStartHandlerExec != nil {
                map["LifecyclePostStartHandlerExec"] = self.lifecyclePostStartHandlerExec!
            }
            if self.lifecyclePostStartHandlerHttpGetHost != nil {
                map["LifecyclePostStartHandlerHttpGetHost"] = self.lifecyclePostStartHandlerHttpGetHost!
            }
            if self.lifecyclePostStartHandlerHttpGetHttpHeader != nil {
                var tmp : [Any] = []
                for k in self.lifecyclePostStartHandlerHttpGetHttpHeader! {
                    tmp.append(k.toMap())
                }
                map["LifecyclePostStartHandlerHttpGetHttpHeader"] = tmp
            }
            if self.lifecyclePostStartHandlerHttpGetPath != nil {
                map["LifecyclePostStartHandlerHttpGetPath"] = self.lifecyclePostStartHandlerHttpGetPath!
            }
            if self.lifecyclePostStartHandlerHttpGetPort != nil {
                map["LifecyclePostStartHandlerHttpGetPort"] = self.lifecyclePostStartHandlerHttpGetPort!
            }
            if self.lifecyclePostStartHandlerHttpGetScheme != nil {
                map["LifecyclePostStartHandlerHttpGetScheme"] = self.lifecyclePostStartHandlerHttpGetScheme!
            }
            if self.lifecyclePostStartHandlerTcpSocketHost != nil {
                map["LifecyclePostStartHandlerTcpSocketHost"] = self.lifecyclePostStartHandlerTcpSocketHost!
            }
            if self.lifecyclePostStartHandlerTcpSocketPort != nil {
                map["LifecyclePostStartHandlerTcpSocketPort"] = self.lifecyclePostStartHandlerTcpSocketPort!
            }
            if self.lifecyclePreStopHandlerExec != nil {
                map["LifecyclePreStopHandlerExec"] = self.lifecyclePreStopHandlerExec!
            }
            if self.lifecyclePreStopHandlerHttpGetHost != nil {
                map["LifecyclePreStopHandlerHttpGetHost"] = self.lifecyclePreStopHandlerHttpGetHost!
            }
            if self.lifecyclePreStopHandlerHttpGetHttpHeader != nil {
                var tmp : [Any] = []
                for k in self.lifecyclePreStopHandlerHttpGetHttpHeader! {
                    tmp.append(k.toMap())
                }
                map["LifecyclePreStopHandlerHttpGetHttpHeader"] = tmp
            }
            if self.lifecyclePreStopHandlerHttpGetPath != nil {
                map["LifecyclePreStopHandlerHttpGetPath"] = self.lifecyclePreStopHandlerHttpGetPath!
            }
            if self.lifecyclePreStopHandlerHttpGetPort != nil {
                map["LifecyclePreStopHandlerHttpGetPort"] = self.lifecyclePreStopHandlerHttpGetPort!
            }
            if self.lifecyclePreStopHandlerHttpGetScheme != nil {
                map["LifecyclePreStopHandlerHttpGetScheme"] = self.lifecyclePreStopHandlerHttpGetScheme!
            }
            if self.lifecyclePreStopHandlerTcpSocketHost != nil {
                map["LifecyclePreStopHandlerTcpSocketHost"] = self.lifecyclePreStopHandlerTcpSocketHost!
            }
            if self.lifecyclePreStopHandlerTcpSocketPort != nil {
                map["LifecyclePreStopHandlerTcpSocketPort"] = self.lifecyclePreStopHandlerTcpSocketPort!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.port != nil {
                var tmp : [Any] = []
                for k in self.port! {
                    tmp.append(k.toMap())
                }
                map["Port"] = tmp
            }
            if self.securityContextPrivileged != nil {
                map["SecurityContextPrivileged"] = self.securityContextPrivileged!
            }
            if self.securityContextRunAsGroup != nil {
                map["SecurityContextRunAsGroup"] = self.securityContextRunAsGroup!
            }
            if self.securityContextRunAsNonRoot != nil {
                map["SecurityContextRunAsNonRoot"] = self.securityContextRunAsNonRoot!
            }
            if self.stdin != nil {
                map["Stdin"] = self.stdin!
            }
            if self.stdinOnce != nil {
                map["StdinOnce"] = self.stdinOnce!
            }
            if self.terminationMessagePath != nil {
                map["TerminationMessagePath"] = self.terminationMessagePath!
            }
            if self.terminationMessagePolicy != nil {
                map["TerminationMessagePolicy"] = self.terminationMessagePolicy!
            }
            if self.tty != nil {
                map["Tty"] = self.tty!
            }
            if self.volumeMount != nil {
                var tmp : [Any] = []
                for k in self.volumeMount! {
                    tmp.append(k.toMap())
                }
                map["VolumeMount"] = tmp
            }
            if self.workingDir != nil {
                map["WorkingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LivenessProbe"] as? [String: Any?] {
                var model = CreateContainerGroupRequest.Container.LivenessProbe()
                model.fromMap(value)
                self.livenessProbe = model
            }
            if let value = dict["ReadinessProbe"] as? [String: Any?] {
                var model = CreateContainerGroupRequest.Container.ReadinessProbe()
                model.fromMap(value)
                self.readinessProbe = model
            }
            if let value = dict["SecurityContext"] as? [String: Any?] {
                var model = CreateContainerGroupRequest.Container.SecurityContext()
                model.fromMap(value)
                self.securityContext = model
            }
            if let value = dict["Arg"] as? [String] {
                self.arg = value
            }
            if let value = dict["Command"] as? [String] {
                self.command = value
            }
            if let value = dict["Cpu"] as? Double {
                self.cpu = value
            }
            if let value = dict["EnvironmentVar"] as? [Any?] {
                var tmp : [CreateContainerGroupRequest.Container.EnvironmentVar] = []
                for v in value {
                    if v != nil {
                        var model = CreateContainerGroupRequest.Container.EnvironmentVar()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.environmentVar = tmp
            }
            if let value = dict["EnvironmentVarHide"] as? Bool {
                self.environmentVarHide = value
            }
            if let value = dict["Gpu"] as? Int32 {
                self.gpu = value
            }
            if let value = dict["Image"] as? String {
                self.image = value
            }
            if let value = dict["ImagePullPolicy"] as? String {
                self.imagePullPolicy = value
            }
            if let value = dict["LifecyclePostStartHandlerExec"] as? [String] {
                self.lifecyclePostStartHandlerExec = value
            }
            if let value = dict["LifecyclePostStartHandlerHttpGetHost"] as? String {
                self.lifecyclePostStartHandlerHttpGetHost = value
            }
            if let value = dict["LifecyclePostStartHandlerHttpGetHttpHeader"] as? [Any?] {
                var tmp : [CreateContainerGroupRequest.Container.LifecyclePostStartHandlerHttpGetHttpHeader] = []
                for v in value {
                    if v != nil {
                        var model = CreateContainerGroupRequest.Container.LifecyclePostStartHandlerHttpGetHttpHeader()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.lifecyclePostStartHandlerHttpGetHttpHeader = tmp
            }
            if let value = dict["LifecyclePostStartHandlerHttpGetPath"] as? String {
                self.lifecyclePostStartHandlerHttpGetPath = value
            }
            if let value = dict["LifecyclePostStartHandlerHttpGetPort"] as? Int32 {
                self.lifecyclePostStartHandlerHttpGetPort = value
            }
            if let value = dict["LifecyclePostStartHandlerHttpGetScheme"] as? String {
                self.lifecyclePostStartHandlerHttpGetScheme = value
            }
            if let value = dict["LifecyclePostStartHandlerTcpSocketHost"] as? String {
                self.lifecyclePostStartHandlerTcpSocketHost = value
            }
            if let value = dict["LifecyclePostStartHandlerTcpSocketPort"] as? Int32 {
                self.lifecyclePostStartHandlerTcpSocketPort = value
            }
            if let value = dict["LifecyclePreStopHandlerExec"] as? [String] {
                self.lifecyclePreStopHandlerExec = value
            }
            if let value = dict["LifecyclePreStopHandlerHttpGetHost"] as? String {
                self.lifecyclePreStopHandlerHttpGetHost = value
            }
            if let value = dict["LifecyclePreStopHandlerHttpGetHttpHeader"] as? [Any?] {
                var tmp : [CreateContainerGroupRequest.Container.LifecyclePreStopHandlerHttpGetHttpHeader] = []
                for v in value {
                    if v != nil {
                        var model = CreateContainerGroupRequest.Container.LifecyclePreStopHandlerHttpGetHttpHeader()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.lifecyclePreStopHandlerHttpGetHttpHeader = tmp
            }
            if let value = dict["LifecyclePreStopHandlerHttpGetPath"] as? String {
                self.lifecyclePreStopHandlerHttpGetPath = value
            }
            if let value = dict["LifecyclePreStopHandlerHttpGetPort"] as? Int32 {
                self.lifecyclePreStopHandlerHttpGetPort = value
            }
            if let value = dict["LifecyclePreStopHandlerHttpGetScheme"] as? String {
                self.lifecyclePreStopHandlerHttpGetScheme = value
            }
            if let value = dict["LifecyclePreStopHandlerTcpSocketHost"] as? String {
                self.lifecyclePreStopHandlerTcpSocketHost = value
            }
            if let value = dict["LifecyclePreStopHandlerTcpSocketPort"] as? Int32 {
                self.lifecyclePreStopHandlerTcpSocketPort = value
            }
            if let value = dict["Memory"] as? Double {
                self.memory = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Port"] as? [Any?] {
                var tmp : [CreateContainerGroupRequest.Container.Port] = []
                for v in value {
                    if v != nil {
                        var model = CreateContainerGroupRequest.Container.Port()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.port = tmp
            }
            if let value = dict["SecurityContextPrivileged"] as? Bool {
                self.securityContextPrivileged = value
            }
            if let value = dict["SecurityContextRunAsGroup"] as? Int64 {
                self.securityContextRunAsGroup = value
            }
            if let value = dict["SecurityContextRunAsNonRoot"] as? Bool {
                self.securityContextRunAsNonRoot = value
            }
            if let value = dict["Stdin"] as? Bool {
                self.stdin = value
            }
            if let value = dict["StdinOnce"] as? Bool {
                self.stdinOnce = value
            }
            if let value = dict["TerminationMessagePath"] as? String {
                self.terminationMessagePath = value
            }
            if let value = dict["TerminationMessagePolicy"] as? String {
                self.terminationMessagePolicy = value
            }
            if let value = dict["Tty"] as? Bool {
                self.tty = value
            }
            if let value = dict["VolumeMount"] as? [Any?] {
                var tmp : [CreateContainerGroupRequest.Container.VolumeMount] = []
                for v in value {
                    if v != nil {
                        var model = CreateContainerGroupRequest.Container.VolumeMount()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.volumeMount = tmp
            }
            if let value = dict["WorkingDir"] as? String {
                self.workingDir = value
            }
        }
    }
    public class HostAliase : Tea.TeaModel {
        public var hostname: [String]?

        public var ip: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Hostname"] as? [String] {
                self.hostname = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
        }
    }
    public class ImageRegistryCredential : Tea.TeaModel {
        public var password: String?

        public var server: String?

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
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Server"] as? String {
                self.server = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public class InitContainer : Tea.TeaModel {
        public class SecurityContext : Tea.TeaModel {
            public class Capability : Tea.TeaModel {
                public var add: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.add != nil {
                        map["Add"] = self.add!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Add"] as? [String] {
                        self.add = value
                    }
                }
            }
            public var capability: CreateContainerGroupRequest.InitContainer.SecurityContext.Capability?

            public var readOnlyRootFilesystem: Bool?

            public var runAsUser: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.capability?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capability != nil {
                    map["Capability"] = self.capability?.toMap()
                }
                if self.readOnlyRootFilesystem != nil {
                    map["ReadOnlyRootFilesystem"] = self.readOnlyRootFilesystem!
                }
                if self.runAsUser != nil {
                    map["RunAsUser"] = self.runAsUser!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Capability"] as? [String: Any?] {
                    var model = CreateContainerGroupRequest.InitContainer.SecurityContext.Capability()
                    model.fromMap(value)
                    self.capability = model
                }
                if let value = dict["ReadOnlyRootFilesystem"] as? Bool {
                    self.readOnlyRootFilesystem = value
                }
                if let value = dict["RunAsUser"] as? Int64 {
                    self.runAsUser = value
                }
            }
        }
        public class EnvironmentVar : Tea.TeaModel {
            public class FieldRef : Tea.TeaModel {
                public var fieldPath: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fieldPath != nil {
                        map["FieldPath"] = self.fieldPath!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FieldPath"] as? String {
                        self.fieldPath = value
                    }
                }
            }
            public var fieldRef: CreateContainerGroupRequest.InitContainer.EnvironmentVar.FieldRef?

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
                try self.fieldRef?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fieldRef != nil {
                    map["FieldRef"] = self.fieldRef?.toMap()
                }
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
                if let value = dict["FieldRef"] as? [String: Any?] {
                    var model = CreateContainerGroupRequest.InitContainer.EnvironmentVar.FieldRef()
                    model.fromMap(value)
                    self.fieldRef = model
                }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public class Port : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
            }
        }
        public class VolumeMount : Tea.TeaModel {
            public var mountPath: String?

            public var mountPropagation: String?

            public var name: String?

            public var readOnly: Bool?

            public var subPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mountPath != nil {
                    map["MountPath"] = self.mountPath!
                }
                if self.mountPropagation != nil {
                    map["MountPropagation"] = self.mountPropagation!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.readOnly != nil {
                    map["ReadOnly"] = self.readOnly!
                }
                if self.subPath != nil {
                    map["SubPath"] = self.subPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MountPath"] as? String {
                    self.mountPath = value
                }
                if let value = dict["MountPropagation"] as? String {
                    self.mountPropagation = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ReadOnly"] as? Bool {
                    self.readOnly = value
                }
                if let value = dict["SubPath"] as? String {
                    self.subPath = value
                }
            }
        }
        public var securityContext: CreateContainerGroupRequest.InitContainer.SecurityContext?

        public var arg: [String]?

        public var command: [String]?

        public var cpu: Double?

        public var environmentVar: [CreateContainerGroupRequest.InitContainer.EnvironmentVar]?

        public var gpu: Int32?

        public var image: String?

        public var imagePullPolicy: String?

        public var memory: Double?

        public var name: String?

        public var port: [CreateContainerGroupRequest.InitContainer.Port]?

        public var terminationMessagePath: String?

        public var terminationMessagePolicy: String?

        public var volumeMount: [CreateContainerGroupRequest.InitContainer.VolumeMount]?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.securityContext?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityContext != nil {
                map["SecurityContext"] = self.securityContext?.toMap()
            }
            if self.arg != nil {
                map["Arg"] = self.arg!
            }
            if self.command != nil {
                map["Command"] = self.command!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.environmentVar != nil {
                var tmp : [Any] = []
                for k in self.environmentVar! {
                    tmp.append(k.toMap())
                }
                map["EnvironmentVar"] = tmp
            }
            if self.gpu != nil {
                map["Gpu"] = self.gpu!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.imagePullPolicy != nil {
                map["ImagePullPolicy"] = self.imagePullPolicy!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.port != nil {
                var tmp : [Any] = []
                for k in self.port! {
                    tmp.append(k.toMap())
                }
                map["Port"] = tmp
            }
            if self.terminationMessagePath != nil {
                map["TerminationMessagePath"] = self.terminationMessagePath!
            }
            if self.terminationMessagePolicy != nil {
                map["TerminationMessagePolicy"] = self.terminationMessagePolicy!
            }
            if self.volumeMount != nil {
                var tmp : [Any] = []
                for k in self.volumeMount! {
                    tmp.append(k.toMap())
                }
                map["VolumeMount"] = tmp
            }
            if self.workingDir != nil {
                map["WorkingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecurityContext"] as? [String: Any?] {
                var model = CreateContainerGroupRequest.InitContainer.SecurityContext()
                model.fromMap(value)
                self.securityContext = model
            }
            if let value = dict["Arg"] as? [String] {
                self.arg = value
            }
            if let value = dict["Command"] as? [String] {
                self.command = value
            }
            if let value = dict["Cpu"] as? Double {
                self.cpu = value
            }
            if let value = dict["EnvironmentVar"] as? [Any?] {
                var tmp : [CreateContainerGroupRequest.InitContainer.EnvironmentVar] = []
                for v in value {
                    if v != nil {
                        var model = CreateContainerGroupRequest.InitContainer.EnvironmentVar()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.environmentVar = tmp
            }
            if let value = dict["Gpu"] as? Int32 {
                self.gpu = value
            }
            if let value = dict["Image"] as? String {
                self.image = value
            }
            if let value = dict["ImagePullPolicy"] as? String {
                self.imagePullPolicy = value
            }
            if let value = dict["Memory"] as? Double {
                self.memory = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Port"] as? [Any?] {
                var tmp : [CreateContainerGroupRequest.InitContainer.Port] = []
                for v in value {
                    if v != nil {
                        var model = CreateContainerGroupRequest.InitContainer.Port()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.port = tmp
            }
            if let value = dict["TerminationMessagePath"] as? String {
                self.terminationMessagePath = value
            }
            if let value = dict["TerminationMessagePolicy"] as? String {
                self.terminationMessagePolicy = value
            }
            if let value = dict["VolumeMount"] as? [Any?] {
                var tmp : [CreateContainerGroupRequest.InitContainer.VolumeMount] = []
                for v in value {
                    if v != nil {
                        var model = CreateContainerGroupRequest.InitContainer.VolumeMount()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.volumeMount = tmp
            }
            if let value = dict["WorkingDir"] as? String {
                self.workingDir = value
            }
        }
    }
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
    public class Volume : Tea.TeaModel {
        public class ConfigFileVolume : Tea.TeaModel {
            public class ConfigFileToPath : Tea.TeaModel {
                public var content: String?

                public var mode: Int32?

                public var path: String?

                public override init() {
                    super.init()
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
                    if self.mode != nil {
                        map["Mode"] = self.mode!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["Mode"] as? Int32 {
                        self.mode = value
                    }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                }
            }
            public var configFileToPath: [CreateContainerGroupRequest.Volume.ConfigFileVolume.ConfigFileToPath]?

            public var defaultMode: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configFileToPath != nil {
                    var tmp : [Any] = []
                    for k in self.configFileToPath! {
                        tmp.append(k.toMap())
                    }
                    map["ConfigFileToPath"] = tmp
                }
                if self.defaultMode != nil {
                    map["DefaultMode"] = self.defaultMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfigFileToPath"] as? [Any?] {
                    var tmp : [CreateContainerGroupRequest.Volume.ConfigFileVolume.ConfigFileToPath] = []
                    for v in value {
                        if v != nil {
                            var model = CreateContainerGroupRequest.Volume.ConfigFileVolume.ConfigFileToPath()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.configFileToPath = tmp
                }
                if let value = dict["DefaultMode"] as? Int32 {
                    self.defaultMode = value
                }
            }
        }
        public class DiskVolume : Tea.TeaModel {
            public var diskId: String?

            public var diskSize: Int32?

            public var fsType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.diskId != nil {
                    map["DiskId"] = self.diskId!
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize!
                }
                if self.fsType != nil {
                    map["FsType"] = self.fsType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DiskId"] as? String {
                    self.diskId = value
                }
                if let value = dict["DiskSize"] as? Int32 {
                    self.diskSize = value
                }
                if let value = dict["FsType"] as? String {
                    self.fsType = value
                }
            }
        }
        public class EmptyDirVolume : Tea.TeaModel {
            public var medium: String?

            public var sizeLimit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.medium != nil {
                    map["Medium"] = self.medium!
                }
                if self.sizeLimit != nil {
                    map["SizeLimit"] = self.sizeLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Medium"] as? String {
                    self.medium = value
                }
                if let value = dict["SizeLimit"] as? String {
                    self.sizeLimit = value
                }
            }
        }
        public class FlexVolume : Tea.TeaModel {
            public var driver: String?

            public var fsType: String?

            public var options: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.driver != nil {
                    map["Driver"] = self.driver!
                }
                if self.fsType != nil {
                    map["FsType"] = self.fsType!
                }
                if self.options != nil {
                    map["Options"] = self.options!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Driver"] as? String {
                    self.driver = value
                }
                if let value = dict["FsType"] as? String {
                    self.fsType = value
                }
                if let value = dict["Options"] as? String {
                    self.options = value
                }
            }
        }
        public class HostPathVolume : Tea.TeaModel {
            public var path: String?

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
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Path"] as? String {
                    self.path = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class NFSVolume : Tea.TeaModel {
            public var path: String?

            public var readOnly: Bool?

            public var server: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.readOnly != nil {
                    map["ReadOnly"] = self.readOnly!
                }
                if self.server != nil {
                    map["Server"] = self.server!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Path"] as? String {
                    self.path = value
                }
                if let value = dict["ReadOnly"] as? Bool {
                    self.readOnly = value
                }
                if let value = dict["Server"] as? String {
                    self.server = value
                }
            }
        }
        public var configFileVolume: CreateContainerGroupRequest.Volume.ConfigFileVolume?

        public var diskVolume: CreateContainerGroupRequest.Volume.DiskVolume?

        public var emptyDirVolume: CreateContainerGroupRequest.Volume.EmptyDirVolume?

        public var flexVolume: CreateContainerGroupRequest.Volume.FlexVolume?

        public var hostPathVolume: CreateContainerGroupRequest.Volume.HostPathVolume?

        public var NFSVolume: CreateContainerGroupRequest.Volume.NFSVolume?

        public var name: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.configFileVolume?.validate()
            try self.diskVolume?.validate()
            try self.emptyDirVolume?.validate()
            try self.flexVolume?.validate()
            try self.hostPathVolume?.validate()
            try self.NFSVolume?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configFileVolume != nil {
                map["ConfigFileVolume"] = self.configFileVolume?.toMap()
            }
            if self.diskVolume != nil {
                map["DiskVolume"] = self.diskVolume?.toMap()
            }
            if self.emptyDirVolume != nil {
                map["EmptyDirVolume"] = self.emptyDirVolume?.toMap()
            }
            if self.flexVolume != nil {
                map["FlexVolume"] = self.flexVolume?.toMap()
            }
            if self.hostPathVolume != nil {
                map["HostPathVolume"] = self.hostPathVolume?.toMap()
            }
            if self.NFSVolume != nil {
                map["NFSVolume"] = self.NFSVolume?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigFileVolume"] as? [String: Any?] {
                var model = CreateContainerGroupRequest.Volume.ConfigFileVolume()
                model.fromMap(value)
                self.configFileVolume = model
            }
            if let value = dict["DiskVolume"] as? [String: Any?] {
                var model = CreateContainerGroupRequest.Volume.DiskVolume()
                model.fromMap(value)
                self.diskVolume = model
            }
            if let value = dict["EmptyDirVolume"] as? [String: Any?] {
                var model = CreateContainerGroupRequest.Volume.EmptyDirVolume()
                model.fromMap(value)
                self.emptyDirVolume = model
            }
            if let value = dict["FlexVolume"] as? [String: Any?] {
                var model = CreateContainerGroupRequest.Volume.FlexVolume()
                model.fromMap(value)
                self.flexVolume = model
            }
            if let value = dict["HostPathVolume"] as? [String: Any?] {
                var model = CreateContainerGroupRequest.Volume.HostPathVolume()
                model.fromMap(value)
                self.hostPathVolume = model
            }
            if let value = dict["NFSVolume"] as? [String: Any?] {
                var model = CreateContainerGroupRequest.Volume.NFSVolume()
                model.fromMap(value)
                self.NFSVolume = model
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var dnsConfig: CreateContainerGroupRequest.DnsConfig?

    public var hostSecurityContext: CreateContainerGroupRequest.HostSecurityContext?

    public var securityContext: CreateContainerGroupRequest.SecurityContext?

    public var acrRegistryInfo: [CreateContainerGroupRequest.AcrRegistryInfo]?

    public var activeDeadlineSeconds: Int64?

    public var autoCreateEip: Bool?

    public var autoMatchImageCache: Bool?

    public var clientToken: String?

    public var computeCategory: [String]?

    public var container: [CreateContainerGroupRequest.Container]?

    public var containerGroupName: String?

    public var containerResourceView: Bool?

    public var corePattern: String?

    public var cpu: Double?

    public var cpuArchitecture: String?

    public var cpuOptionsCore: Int32?

    public var cpuOptionsNuma: String?

    public var cpuOptionsThreadsPerCore: Int32?

    public var dataCacheBucket: String?

    public var dataCacheBurstingEnabled: Bool?

    public var dataCachePL: String?

    public var dataCacheProvisionedIops: Int64?

    public var dnsPolicy: String?

    public var dryRun: Bool?

    public var egressBandwidth: Int64?

    public var eipBandwidth: Int32?

    public var eipCommonBandwidthPackage: String?

    public var eipISP: String?

    public var eipInstanceId: String?

    public var ephemeralStorage: Int32?

    public var fixedIp: String?

    public var fixedIpRetainHour: Int32?

    public var gpuDriverVersion: String?

    public var hostAliase: [CreateContainerGroupRequest.HostAliase]?

    public var hostName: String?

    public var imageAccelerateMode: String?

    public var imageRegistryCredential: [CreateContainerGroupRequest.ImageRegistryCredential]?

    public var imageSnapshotId: String?

    public var ingressBandwidth: Int64?

    public var initContainer: [CreateContainerGroupRequest.InitContainer]?

    public var insecureRegistry: String?

    public var instanceType: String?

    public var ipv6AddressCount: Int32?

    public var ipv6GatewayBandwidth: String?

    public var ipv6GatewayBandwidthEnable: Bool?

    public var maxPendingMinute: Int32?

    public var memory: Double?

    public var ntpServer: [String]?

    public var osType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var plainHttpRegistry: String?

    public var privateIpAddress: String?

    public var ramRoleName: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var restartPolicy: String?

    public var scheduleStrategy: String?

    public var securityGroupId: String?

    public var shareProcessNamespace: Bool?

    public var spotDuration: Int64?

    public var spotPriceLimit: Double?

    public var spotStrategy: String?

    public var strictSpot: Bool?

    public var tag: [CreateContainerGroupRequest.Tag]?

    public var terminationGracePeriodSeconds: Int64?

    public var vSwitchId: String?

    public var volume: [CreateContainerGroupRequest.Volume]?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dnsConfig?.validate()
        try self.hostSecurityContext?.validate()
        try self.securityContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dnsConfig != nil {
            map["DnsConfig"] = self.dnsConfig?.toMap()
        }
        if self.hostSecurityContext != nil {
            map["HostSecurityContext"] = self.hostSecurityContext?.toMap()
        }
        if self.securityContext != nil {
            map["SecurityContext"] = self.securityContext?.toMap()
        }
        if self.acrRegistryInfo != nil {
            var tmp : [Any] = []
            for k in self.acrRegistryInfo! {
                tmp.append(k.toMap())
            }
            map["AcrRegistryInfo"] = tmp
        }
        if self.activeDeadlineSeconds != nil {
            map["ActiveDeadlineSeconds"] = self.activeDeadlineSeconds!
        }
        if self.autoCreateEip != nil {
            map["AutoCreateEip"] = self.autoCreateEip!
        }
        if self.autoMatchImageCache != nil {
            map["AutoMatchImageCache"] = self.autoMatchImageCache!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.computeCategory != nil {
            map["ComputeCategory"] = self.computeCategory!
        }
        if self.container != nil {
            var tmp : [Any] = []
            for k in self.container! {
                tmp.append(k.toMap())
            }
            map["Container"] = tmp
        }
        if self.containerGroupName != nil {
            map["ContainerGroupName"] = self.containerGroupName!
        }
        if self.containerResourceView != nil {
            map["ContainerResourceView"] = self.containerResourceView!
        }
        if self.corePattern != nil {
            map["CorePattern"] = self.corePattern!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.cpuArchitecture != nil {
            map["CpuArchitecture"] = self.cpuArchitecture!
        }
        if self.cpuOptionsCore != nil {
            map["CpuOptionsCore"] = self.cpuOptionsCore!
        }
        if self.cpuOptionsNuma != nil {
            map["CpuOptionsNuma"] = self.cpuOptionsNuma!
        }
        if self.cpuOptionsThreadsPerCore != nil {
            map["CpuOptionsThreadsPerCore"] = self.cpuOptionsThreadsPerCore!
        }
        if self.dataCacheBucket != nil {
            map["DataCacheBucket"] = self.dataCacheBucket!
        }
        if self.dataCacheBurstingEnabled != nil {
            map["DataCacheBurstingEnabled"] = self.dataCacheBurstingEnabled!
        }
        if self.dataCachePL != nil {
            map["DataCachePL"] = self.dataCachePL!
        }
        if self.dataCacheProvisionedIops != nil {
            map["DataCacheProvisionedIops"] = self.dataCacheProvisionedIops!
        }
        if self.dnsPolicy != nil {
            map["DnsPolicy"] = self.dnsPolicy!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.egressBandwidth != nil {
            map["EgressBandwidth"] = self.egressBandwidth!
        }
        if self.eipBandwidth != nil {
            map["EipBandwidth"] = self.eipBandwidth!
        }
        if self.eipCommonBandwidthPackage != nil {
            map["EipCommonBandwidthPackage"] = self.eipCommonBandwidthPackage!
        }
        if self.eipISP != nil {
            map["EipISP"] = self.eipISP!
        }
        if self.eipInstanceId != nil {
            map["EipInstanceId"] = self.eipInstanceId!
        }
        if self.ephemeralStorage != nil {
            map["EphemeralStorage"] = self.ephemeralStorage!
        }
        if self.fixedIp != nil {
            map["FixedIp"] = self.fixedIp!
        }
        if self.fixedIpRetainHour != nil {
            map["FixedIpRetainHour"] = self.fixedIpRetainHour!
        }
        if self.gpuDriverVersion != nil {
            map["GpuDriverVersion"] = self.gpuDriverVersion!
        }
        if self.hostAliase != nil {
            var tmp : [Any] = []
            for k in self.hostAliase! {
                tmp.append(k.toMap())
            }
            map["HostAliase"] = tmp
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.imageAccelerateMode != nil {
            map["ImageAccelerateMode"] = self.imageAccelerateMode!
        }
        if self.imageRegistryCredential != nil {
            var tmp : [Any] = []
            for k in self.imageRegistryCredential! {
                tmp.append(k.toMap())
            }
            map["ImageRegistryCredential"] = tmp
        }
        if self.imageSnapshotId != nil {
            map["ImageSnapshotId"] = self.imageSnapshotId!
        }
        if self.ingressBandwidth != nil {
            map["IngressBandwidth"] = self.ingressBandwidth!
        }
        if self.initContainer != nil {
            var tmp : [Any] = []
            for k in self.initContainer! {
                tmp.append(k.toMap())
            }
            map["InitContainer"] = tmp
        }
        if self.insecureRegistry != nil {
            map["InsecureRegistry"] = self.insecureRegistry!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.ipv6AddressCount != nil {
            map["Ipv6AddressCount"] = self.ipv6AddressCount!
        }
        if self.ipv6GatewayBandwidth != nil {
            map["Ipv6GatewayBandwidth"] = self.ipv6GatewayBandwidth!
        }
        if self.ipv6GatewayBandwidthEnable != nil {
            map["Ipv6GatewayBandwidthEnable"] = self.ipv6GatewayBandwidthEnable!
        }
        if self.maxPendingMinute != nil {
            map["MaxPendingMinute"] = self.maxPendingMinute!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.ntpServer != nil {
            map["NtpServer"] = self.ntpServer!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.plainHttpRegistry != nil {
            map["PlainHttpRegistry"] = self.plainHttpRegistry!
        }
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        if self.ramRoleName != nil {
            map["RamRoleName"] = self.ramRoleName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.restartPolicy != nil {
            map["RestartPolicy"] = self.restartPolicy!
        }
        if self.scheduleStrategy != nil {
            map["ScheduleStrategy"] = self.scheduleStrategy!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.shareProcessNamespace != nil {
            map["ShareProcessNamespace"] = self.shareProcessNamespace!
        }
        if self.spotDuration != nil {
            map["SpotDuration"] = self.spotDuration!
        }
        if self.spotPriceLimit != nil {
            map["SpotPriceLimit"] = self.spotPriceLimit!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.strictSpot != nil {
            map["StrictSpot"] = self.strictSpot!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.terminationGracePeriodSeconds != nil {
            map["TerminationGracePeriodSeconds"] = self.terminationGracePeriodSeconds!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.volume != nil {
            var tmp : [Any] = []
            for k in self.volume! {
                tmp.append(k.toMap())
            }
            map["Volume"] = tmp
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DnsConfig"] as? [String: Any?] {
            var model = CreateContainerGroupRequest.DnsConfig()
            model.fromMap(value)
            self.dnsConfig = model
        }
        if let value = dict["HostSecurityContext"] as? [String: Any?] {
            var model = CreateContainerGroupRequest.HostSecurityContext()
            model.fromMap(value)
            self.hostSecurityContext = model
        }
        if let value = dict["SecurityContext"] as? [String: Any?] {
            var model = CreateContainerGroupRequest.SecurityContext()
            model.fromMap(value)
            self.securityContext = model
        }
        if let value = dict["AcrRegistryInfo"] as? [Any?] {
            var tmp : [CreateContainerGroupRequest.AcrRegistryInfo] = []
            for v in value {
                if v != nil {
                    var model = CreateContainerGroupRequest.AcrRegistryInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.acrRegistryInfo = tmp
        }
        if let value = dict["ActiveDeadlineSeconds"] as? Int64 {
            self.activeDeadlineSeconds = value
        }
        if let value = dict["AutoCreateEip"] as? Bool {
            self.autoCreateEip = value
        }
        if let value = dict["AutoMatchImageCache"] as? Bool {
            self.autoMatchImageCache = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ComputeCategory"] as? [String] {
            self.computeCategory = value
        }
        if let value = dict["Container"] as? [Any?] {
            var tmp : [CreateContainerGroupRequest.Container] = []
            for v in value {
                if v != nil {
                    var model = CreateContainerGroupRequest.Container()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.container = tmp
        }
        if let value = dict["ContainerGroupName"] as? String {
            self.containerGroupName = value
        }
        if let value = dict["ContainerResourceView"] as? Bool {
            self.containerResourceView = value
        }
        if let value = dict["CorePattern"] as? String {
            self.corePattern = value
        }
        if let value = dict["Cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["CpuArchitecture"] as? String {
            self.cpuArchitecture = value
        }
        if let value = dict["CpuOptionsCore"] as? Int32 {
            self.cpuOptionsCore = value
        }
        if let value = dict["CpuOptionsNuma"] as? String {
            self.cpuOptionsNuma = value
        }
        if let value = dict["CpuOptionsThreadsPerCore"] as? Int32 {
            self.cpuOptionsThreadsPerCore = value
        }
        if let value = dict["DataCacheBucket"] as? String {
            self.dataCacheBucket = value
        }
        if let value = dict["DataCacheBurstingEnabled"] as? Bool {
            self.dataCacheBurstingEnabled = value
        }
        if let value = dict["DataCachePL"] as? String {
            self.dataCachePL = value
        }
        if let value = dict["DataCacheProvisionedIops"] as? Int64 {
            self.dataCacheProvisionedIops = value
        }
        if let value = dict["DnsPolicy"] as? String {
            self.dnsPolicy = value
        }
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
        if let value = dict["EgressBandwidth"] as? Int64 {
            self.egressBandwidth = value
        }
        if let value = dict["EipBandwidth"] as? Int32 {
            self.eipBandwidth = value
        }
        if let value = dict["EipCommonBandwidthPackage"] as? String {
            self.eipCommonBandwidthPackage = value
        }
        if let value = dict["EipISP"] as? String {
            self.eipISP = value
        }
        if let value = dict["EipInstanceId"] as? String {
            self.eipInstanceId = value
        }
        if let value = dict["EphemeralStorage"] as? Int32 {
            self.ephemeralStorage = value
        }
        if let value = dict["FixedIp"] as? String {
            self.fixedIp = value
        }
        if let value = dict["FixedIpRetainHour"] as? Int32 {
            self.fixedIpRetainHour = value
        }
        if let value = dict["GpuDriverVersion"] as? String {
            self.gpuDriverVersion = value
        }
        if let value = dict["HostAliase"] as? [Any?] {
            var tmp : [CreateContainerGroupRequest.HostAliase] = []
            for v in value {
                if v != nil {
                    var model = CreateContainerGroupRequest.HostAliase()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostAliase = tmp
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["ImageAccelerateMode"] as? String {
            self.imageAccelerateMode = value
        }
        if let value = dict["ImageRegistryCredential"] as? [Any?] {
            var tmp : [CreateContainerGroupRequest.ImageRegistryCredential] = []
            for v in value {
                if v != nil {
                    var model = CreateContainerGroupRequest.ImageRegistryCredential()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.imageRegistryCredential = tmp
        }
        if let value = dict["ImageSnapshotId"] as? String {
            self.imageSnapshotId = value
        }
        if let value = dict["IngressBandwidth"] as? Int64 {
            self.ingressBandwidth = value
        }
        if let value = dict["InitContainer"] as? [Any?] {
            var tmp : [CreateContainerGroupRequest.InitContainer] = []
            for v in value {
                if v != nil {
                    var model = CreateContainerGroupRequest.InitContainer()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.initContainer = tmp
        }
        if let value = dict["InsecureRegistry"] as? String {
            self.insecureRegistry = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["Ipv6AddressCount"] as? Int32 {
            self.ipv6AddressCount = value
        }
        if let value = dict["Ipv6GatewayBandwidth"] as? String {
            self.ipv6GatewayBandwidth = value
        }
        if let value = dict["Ipv6GatewayBandwidthEnable"] as? Bool {
            self.ipv6GatewayBandwidthEnable = value
        }
        if let value = dict["MaxPendingMinute"] as? Int32 {
            self.maxPendingMinute = value
        }
        if let value = dict["Memory"] as? Double {
            self.memory = value
        }
        if let value = dict["NtpServer"] as? [String] {
            self.ntpServer = value
        }
        if let value = dict["OsType"] as? String {
            self.osType = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PlainHttpRegistry"] as? String {
            self.plainHttpRegistry = value
        }
        if let value = dict["PrivateIpAddress"] as? String {
            self.privateIpAddress = value
        }
        if let value = dict["RamRoleName"] as? String {
            self.ramRoleName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RestartPolicy"] as? String {
            self.restartPolicy = value
        }
        if let value = dict["ScheduleStrategy"] as? String {
            self.scheduleStrategy = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["ShareProcessNamespace"] as? Bool {
            self.shareProcessNamespace = value
        }
        if let value = dict["SpotDuration"] as? Int64 {
            self.spotDuration = value
        }
        if let value = dict["SpotPriceLimit"] as? Double {
            self.spotPriceLimit = value
        }
        if let value = dict["SpotStrategy"] as? String {
            self.spotStrategy = value
        }
        if let value = dict["StrictSpot"] as? Bool {
            self.strictSpot = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateContainerGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateContainerGroupRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TerminationGracePeriodSeconds"] as? Int64 {
            self.terminationGracePeriodSeconds = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["Volume"] as? [Any?] {
            var tmp : [CreateContainerGroupRequest.Volume] = []
            for v in value {
                if v != nil {
                    var model = CreateContainerGroupRequest.Volume()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.volume = tmp
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateContainerGroupResponseBody : Tea.TeaModel {
    public var containerGroupId: String?

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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateContainerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateContainerGroupResponseBody?

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
            var model = CreateContainerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataCacheRequest : Tea.TeaModel {
    public class DataSource : Tea.TeaModel {
        public var options: [String: String]?

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
            if self.options != nil {
                map["Options"] = self.options!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Options"] as? [String: String] {
                self.options = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class EipCreateParam : Tea.TeaModel {
        public var bandwidth: Int32?

        public var commonBandwidthPackage: String?

        public var ISP: String?

        public var internetChargeType: String?

        public var publicIpAddressPoolId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.commonBandwidthPackage != nil {
                map["CommonBandwidthPackage"] = self.commonBandwidthPackage!
            }
            if self.ISP != nil {
                map["ISP"] = self.ISP!
            }
            if self.internetChargeType != nil {
                map["InternetChargeType"] = self.internetChargeType!
            }
            if self.publicIpAddressPoolId != nil {
                map["PublicIpAddressPoolId"] = self.publicIpAddressPoolId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bandwidth"] as? Int32 {
                self.bandwidth = value
            }
            if let value = dict["CommonBandwidthPackage"] as? String {
                self.commonBandwidthPackage = value
            }
            if let value = dict["ISP"] as? String {
                self.ISP = value
            }
            if let value = dict["InternetChargeType"] as? String {
                self.internetChargeType = value
            }
            if let value = dict["PublicIpAddressPoolId"] as? String {
                self.publicIpAddressPoolId = value
            }
        }
    }
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
    public var bucket: String?

    public var clientToken: String?

    public var dataSource: CreateDataCacheRequest.DataSource?

    public var eipCreateParam: CreateDataCacheRequest.EipCreateParam?

    public var eipInstanceId: String?

    public var name: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var path: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var retentionDays: Int32?

    public var securityGroupId: String?

    public var size: Int32?

    public var tag: [CreateDataCacheRequest.Tag]?

    public var vSwitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataSource?.validate()
        try self.eipCreateParam?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dataSource != nil {
            map["DataSource"] = self.dataSource?.toMap()
        }
        if self.eipCreateParam != nil {
            map["EipCreateParam"] = self.eipCreateParam?.toMap()
        }
        if self.eipInstanceId != nil {
            map["EipInstanceId"] = self.eipInstanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataSource"] as? [String: Any?] {
            var model = CreateDataCacheRequest.DataSource()
            model.fromMap(value)
            self.dataSource = model
        }
        if let value = dict["EipCreateParam"] as? [String: Any?] {
            var model = CreateDataCacheRequest.EipCreateParam()
            model.fromMap(value)
            self.eipCreateParam = model
        }
        if let value = dict["EipInstanceId"] as? String {
            self.eipInstanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RetentionDays"] as? Int32 {
            self.retentionDays = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateDataCacheRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateDataCacheRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
    }
}

public class CreateDataCacheResponseBody : Tea.TeaModel {
    public var dataCacheId: String?

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
        if self.dataCacheId != nil {
            map["DataCacheId"] = self.dataCacheId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataCacheId"] as? String {
            self.dataCacheId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDataCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataCacheResponseBody?

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
            var model = CreateDataCacheResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateImageCacheRequest : Tea.TeaModel {
    public class AcrRegistryInfo : Tea.TeaModel {
        public var arnService: String?

        public var arnUser: String?

        public var domain: [String]?

        public var instanceId: String?

        public var instanceName: String?

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
            if self.arnService != nil {
                map["ArnService"] = self.arnService!
            }
            if self.arnUser != nil {
                map["ArnUser"] = self.arnUser!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArnService"] as? String {
                self.arnService = value
            }
            if let value = dict["ArnUser"] as? String {
                self.arnUser = value
            }
            if let value = dict["Domain"] as? [String] {
                self.domain = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public class ImageRegistryCredential : Tea.TeaModel {
        public var password: String?

        public var server: String?

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
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Server"] as? String {
                self.server = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
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
    public var acrRegistryInfo: [CreateImageCacheRequest.AcrRegistryInfo]?

    public var annotations: String?

    public var autoMatchImageCache: Bool?

    public var clientToken: String?

    public var eipInstanceId: String?

    public var eliminationStrategy: String?

    public var flash: Bool?

    public var flashCopyCount: Int32?

    public var image: [String]?

    public var imageCacheName: String?

    public var imageCacheSize: Int32?

    public var imageRegistryCredential: [CreateImageCacheRequest.ImageRegistryCredential]?

    public var insecureRegistry: String?

    public var osType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var plainHttpRegistry: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var retentionDays: Int32?

    public var securityGroupId: String?

    public var standardCopyCount: Int32?

    public var tag: [CreateImageCacheRequest.Tag]?

    public var vSwitchId: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrRegistryInfo != nil {
            var tmp : [Any] = []
            for k in self.acrRegistryInfo! {
                tmp.append(k.toMap())
            }
            map["AcrRegistryInfo"] = tmp
        }
        if self.annotations != nil {
            map["Annotations"] = self.annotations!
        }
        if self.autoMatchImageCache != nil {
            map["AutoMatchImageCache"] = self.autoMatchImageCache!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.eipInstanceId != nil {
            map["EipInstanceId"] = self.eipInstanceId!
        }
        if self.eliminationStrategy != nil {
            map["EliminationStrategy"] = self.eliminationStrategy!
        }
        if self.flash != nil {
            map["Flash"] = self.flash!
        }
        if self.flashCopyCount != nil {
            map["FlashCopyCount"] = self.flashCopyCount!
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.imageCacheName != nil {
            map["ImageCacheName"] = self.imageCacheName!
        }
        if self.imageCacheSize != nil {
            map["ImageCacheSize"] = self.imageCacheSize!
        }
        if self.imageRegistryCredential != nil {
            var tmp : [Any] = []
            for k in self.imageRegistryCredential! {
                tmp.append(k.toMap())
            }
            map["ImageRegistryCredential"] = tmp
        }
        if self.insecureRegistry != nil {
            map["InsecureRegistry"] = self.insecureRegistry!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.plainHttpRegistry != nil {
            map["PlainHttpRegistry"] = self.plainHttpRegistry!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.standardCopyCount != nil {
            map["StandardCopyCount"] = self.standardCopyCount!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcrRegistryInfo"] as? [Any?] {
            var tmp : [CreateImageCacheRequest.AcrRegistryInfo] = []
            for v in value {
                if v != nil {
                    var model = CreateImageCacheRequest.AcrRegistryInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.acrRegistryInfo = tmp
        }
        if let value = dict["Annotations"] as? String {
            self.annotations = value
        }
        if let value = dict["AutoMatchImageCache"] as? Bool {
            self.autoMatchImageCache = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["EipInstanceId"] as? String {
            self.eipInstanceId = value
        }
        if let value = dict["EliminationStrategy"] as? String {
            self.eliminationStrategy = value
        }
        if let value = dict["Flash"] as? Bool {
            self.flash = value
        }
        if let value = dict["FlashCopyCount"] as? Int32 {
            self.flashCopyCount = value
        }
        if let value = dict["Image"] as? [String] {
            self.image = value
        }
        if let value = dict["ImageCacheName"] as? String {
            self.imageCacheName = value
        }
        if let value = dict["ImageCacheSize"] as? Int32 {
            self.imageCacheSize = value
        }
        if let value = dict["ImageRegistryCredential"] as? [Any?] {
            var tmp : [CreateImageCacheRequest.ImageRegistryCredential] = []
            for v in value {
                if v != nil {
                    var model = CreateImageCacheRequest.ImageRegistryCredential()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.imageRegistryCredential = tmp
        }
        if let value = dict["InsecureRegistry"] as? String {
            self.insecureRegistry = value
        }
        if let value = dict["OsType"] as? String {
            self.osType = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PlainHttpRegistry"] as? String {
            self.plainHttpRegistry = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RetentionDays"] as? Int32 {
            self.retentionDays = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["StandardCopyCount"] as? Int32 {
            self.standardCopyCount = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateImageCacheRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateImageCacheRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateImageCacheResponseBody : Tea.TeaModel {
    public var containerGroupId: String?

    public var imageCacheId: String?

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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.imageCacheId != nil {
            map["ImageCacheId"] = self.imageCacheId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["ImageCacheId"] as? String {
            self.imageCacheId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateImageCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageCacheResponseBody?

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
            var model = CreateImageCacheResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceOpsTaskRequest : Tea.TeaModel {
    public var containerGroupId: String?

    public var opsType: String?

    public var opsValue: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.opsType != nil {
            map["OpsType"] = self.opsType!
        }
        if self.opsValue != nil {
            map["OpsValue"] = self.opsValue!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["OpsType"] as? String {
            self.opsType = value
        }
        if let value = dict["OpsValue"] as? String {
            self.opsValue = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateInstanceOpsTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
    }
}

public class CreateInstanceOpsTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceOpsTaskResponseBody?

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
            var model = CreateInstanceOpsTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVirtualNodeRequest : Tea.TeaModel {
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
    public class Taint : Tea.TeaModel {
        public var effect: String?

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
            if self.effect != nil {
                map["Effect"] = self.effect!
            }
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
            if let value = dict["Effect"] as? String {
                self.effect = value
            }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var clientToken: String?

    public var clusterDNS: String?

    public var clusterDomain: String?

    public var customResources: String?

    public var eipInstanceId: String?

    public var enablePublicNetwork: Bool?

    public var kubeConfig: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityGroupId: String?

    public var tag: [CreateVirtualNodeRequest.Tag]?

    public var taint: [CreateVirtualNodeRequest.Taint]?

    public var tlsBootstrapEnabled: Bool?

    public var vSwitchId: String?

    public var virtualNodeName: String?

    public var zoneId: String?

    public override init() {
        super.init()
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
        if self.clusterDNS != nil {
            map["ClusterDNS"] = self.clusterDNS!
        }
        if self.clusterDomain != nil {
            map["ClusterDomain"] = self.clusterDomain!
        }
        if self.customResources != nil {
            map["CustomResources"] = self.customResources!
        }
        if self.eipInstanceId != nil {
            map["EipInstanceId"] = self.eipInstanceId!
        }
        if self.enablePublicNetwork != nil {
            map["EnablePublicNetwork"] = self.enablePublicNetwork!
        }
        if self.kubeConfig != nil {
            map["KubeConfig"] = self.kubeConfig!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.taint != nil {
            var tmp : [Any] = []
            for k in self.taint! {
                tmp.append(k.toMap())
            }
            map["Taint"] = tmp
        }
        if self.tlsBootstrapEnabled != nil {
            map["TlsBootstrapEnabled"] = self.tlsBootstrapEnabled!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.virtualNodeName != nil {
            map["VirtualNodeName"] = self.virtualNodeName!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterDNS"] as? String {
            self.clusterDNS = value
        }
        if let value = dict["ClusterDomain"] as? String {
            self.clusterDomain = value
        }
        if let value = dict["CustomResources"] as? String {
            self.customResources = value
        }
        if let value = dict["EipInstanceId"] as? String {
            self.eipInstanceId = value
        }
        if let value = dict["EnablePublicNetwork"] as? Bool {
            self.enablePublicNetwork = value
        }
        if let value = dict["KubeConfig"] as? String {
            self.kubeConfig = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateVirtualNodeRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateVirtualNodeRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["Taint"] as? [Any?] {
            var tmp : [CreateVirtualNodeRequest.Taint] = []
            for v in value {
                if v != nil {
                    var model = CreateVirtualNodeRequest.Taint()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taint = tmp
        }
        if let value = dict["TlsBootstrapEnabled"] as? Bool {
            self.tlsBootstrapEnabled = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VirtualNodeName"] as? String {
            self.virtualNodeName = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateVirtualNodeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var virtualNodeId: String?

    public override init() {
        super.init()
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
        if self.virtualNodeId != nil {
            map["VirtualNodeId"] = self.virtualNodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VirtualNodeId"] as? String {
            self.virtualNodeId = value
        }
    }
}

public class CreateVirtualNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVirtualNodeResponseBody?

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
            var model = CreateVirtualNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteContainerGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var containerGroupId: String?

    public var force: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["Force"] as? Bool {
            self.force = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteContainerGroupResponseBody : Tea.TeaModel {
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

public class DeleteContainerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteContainerGroupResponseBody?

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
            var model = DeleteContainerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataCacheRequest : Tea.TeaModel {
    public var bucket: String?

    public var clientToken: String?

    public var dataCacheId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var path: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dataCacheId != nil {
            map["DataCacheId"] = self.dataCacheId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataCacheId"] as? String {
            self.dataCacheId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteDataCacheResponseBody : Tea.TeaModel {
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

public class DeleteDataCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataCacheResponseBody?

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
            var model = DeleteDataCacheResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteImageCacheRequest : Tea.TeaModel {
    public var clientToken: String?

    public var imageCacheId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.imageCacheId != nil {
            map["ImageCacheId"] = self.imageCacheId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ImageCacheId"] as? String {
            self.imageCacheId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteImageCacheResponseBody : Tea.TeaModel {
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

public class DeleteImageCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteImageCacheResponseBody?

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
            var model = DeleteImageCacheResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVirtualNodeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var virtualNodeId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.virtualNodeId != nil {
            map["VirtualNodeId"] = self.virtualNodeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["VirtualNodeId"] as? String {
            self.virtualNodeId = value
        }
    }
}

public class DeleteVirtualNodeResponseBody : Tea.TeaModel {
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

public class DeleteVirtualNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVirtualNodeResponseBody?

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
            var model = DeleteVirtualNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAvailableResourceRequest : Tea.TeaModel {
    public class DestinationResource : Tea.TeaModel {
        public var category: String?

        public var cores: Double?

        public var memory: Double?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.cores != nil {
                map["Cores"] = self.cores!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["Cores"] as? Double {
                self.cores = value
            }
            if let value = dict["Memory"] as? Double {
                self.memory = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public class SpotResource : Tea.TeaModel {
        public var spotDuration: Int32?

        public var spotPriceLimit: Double?

        public var spotStrategy: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.spotDuration != nil {
                map["SpotDuration"] = self.spotDuration!
            }
            if self.spotPriceLimit != nil {
                map["SpotPriceLimit"] = self.spotPriceLimit!
            }
            if self.spotStrategy != nil {
                map["SpotStrategy"] = self.spotStrategy!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SpotDuration"] as? Int32 {
                self.spotDuration = value
            }
            if let value = dict["SpotPriceLimit"] as? Double {
                self.spotPriceLimit = value
            }
            if let value = dict["SpotStrategy"] as? String {
                self.spotStrategy = value
            }
        }
    }
    public var destinationResource: DescribeAvailableResourceRequest.DestinationResource?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var spotResource: DescribeAvailableResourceRequest.SpotResource?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.destinationResource?.validate()
        try self.spotResource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationResource != nil {
            map["DestinationResource"] = self.destinationResource?.toMap()
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.spotResource != nil {
            map["SpotResource"] = self.spotResource?.toMap()
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestinationResource"] as? [String: Any?] {
            var model = DescribeAvailableResourceRequest.DestinationResource()
            model.fromMap(value)
            self.destinationResource = model
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SpotResource"] as? [String: Any?] {
            var model = DescribeAvailableResourceRequest.SpotResource()
            model.fromMap(value)
            self.spotResource = model
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeAvailableResourceResponseBody : Tea.TeaModel {
    public class AvailableZones : Tea.TeaModel {
        public class AvailableZone : Tea.TeaModel {
            public class AvailableResources : Tea.TeaModel {
                public class AvailableResource : Tea.TeaModel {
                    public class SupportedResources : Tea.TeaModel {
                        public class SupportedResource : Tea.TeaModel {
                            public var statusCategory: String?

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
                                if self.statusCategory != nil {
                                    map["StatusCategory"] = self.statusCategory!
                                }
                                if self.value != nil {
                                    map["Value"] = self.value!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["StatusCategory"] as? String {
                                    self.statusCategory = value
                                }
                                if let value = dict["Value"] as? String {
                                    self.value = value
                                }
                            }
                        }
                        public var supportedResource: [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource.SupportedResources.SupportedResource]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.supportedResource != nil {
                                var tmp : [Any] = []
                                for k in self.supportedResource! {
                                    tmp.append(k.toMap())
                                }
                                map["SupportedResource"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["SupportedResource"] as? [Any?] {
                                var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource.SupportedResources.SupportedResource] = []
                                for v in value {
                                    if v != nil {
                                        var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource.SupportedResources.SupportedResource()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.supportedResource = tmp
                            }
                        }
                    }
                    public var supportedResources: DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource.SupportedResources?

                    public var type: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.supportedResources?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.supportedResources != nil {
                            map["SupportedResources"] = self.supportedResources?.toMap()
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["SupportedResources"] as? [String: Any?] {
                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource.SupportedResources()
                            model.fromMap(value)
                            self.supportedResources = model
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var availableResource: [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.availableResource != nil {
                        var tmp : [Any] = []
                        for k in self.availableResource! {
                            tmp.append(k.toMap())
                        }
                        map["AvailableResource"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AvailableResource"] as? [Any?] {
                        var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources.AvailableResource()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.availableResource = tmp
                    }
                }
            }
            public var availableResources: DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources?

            public var regionId: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.availableResources?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.availableResources != nil {
                    map["AvailableResources"] = self.availableResources?.toMap()
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AvailableResources"] as? [String: Any?] {
                    var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.AvailableResources()
                    model.fromMap(value)
                    self.availableResources = model
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var availableZone: [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableZone != nil {
                var tmp : [Any] = []
                for k in self.availableZone! {
                    tmp.append(k.toMap())
                }
                map["AvailableZone"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AvailableZone"] as? [Any?] {
                var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.availableZone = tmp
            }
        }
    }
    public var availableZones: DescribeAvailableResourceResponseBody.AvailableZones?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.availableZones?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableZones != nil {
            map["AvailableZones"] = self.availableZones?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableZones"] as? [String: Any?] {
            var model = DescribeAvailableResourceResponseBody.AvailableZones()
            model.fromMap(value)
            self.availableZones = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeAvailableResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAvailableResourceResponseBody?

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
            var model = DescribeAvailableResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCommitContainerTaskRequest : Tea.TeaModel {
    public var containerGroupId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var taskId: [String]?

    public var taskStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskId"] as? [String] {
            self.taskId = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
    }
}

public class DescribeCommitContainerTaskResponseBody : Tea.TeaModel {
    public class CommitTasks : Tea.TeaModel {
        public class CommitPhaseInfos : Tea.TeaModel {
            public var message: String?

            public var phase: String?

            public var recordTime: String?

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
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.phase != nil {
                    map["Phase"] = self.phase!
                }
                if self.recordTime != nil {
                    map["RecordTime"] = self.recordTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Phase"] as? String {
                    self.phase = value
                }
                if let value = dict["RecordTime"] as? String {
                    self.recordTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var commitPhaseInfos: [DescribeCommitContainerTaskResponseBody.CommitTasks.CommitPhaseInfos]?

        public var containerName: String?

        public var statusMessage: String?

        public var taskCreationTime: String?

        public var taskFinishedTime: String?

        public var taskId: String?

        public var taskProgress: String?

        public var taskStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commitPhaseInfos != nil {
                var tmp : [Any] = []
                for k in self.commitPhaseInfos! {
                    tmp.append(k.toMap())
                }
                map["CommitPhaseInfos"] = tmp
            }
            if self.containerName != nil {
                map["ContainerName"] = self.containerName!
            }
            if self.statusMessage != nil {
                map["StatusMessage"] = self.statusMessage!
            }
            if self.taskCreationTime != nil {
                map["TaskCreationTime"] = self.taskCreationTime!
            }
            if self.taskFinishedTime != nil {
                map["TaskFinishedTime"] = self.taskFinishedTime!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskProgress != nil {
                map["TaskProgress"] = self.taskProgress!
            }
            if self.taskStatus != nil {
                map["TaskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommitPhaseInfos"] as? [Any?] {
                var tmp : [DescribeCommitContainerTaskResponseBody.CommitTasks.CommitPhaseInfos] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCommitContainerTaskResponseBody.CommitTasks.CommitPhaseInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.commitPhaseInfos = tmp
            }
            if let value = dict["ContainerName"] as? String {
                self.containerName = value
            }
            if let value = dict["StatusMessage"] as? String {
                self.statusMessage = value
            }
            if let value = dict["TaskCreationTime"] as? String {
                self.taskCreationTime = value
            }
            if let value = dict["TaskFinishedTime"] as? String {
                self.taskFinishedTime = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskProgress"] as? String {
                self.taskProgress = value
            }
            if let value = dict["TaskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public var commitTasks: [DescribeCommitContainerTaskResponseBody.CommitTasks]?

    public var maxResults: String?

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
        if self.commitTasks != nil {
            var tmp : [Any] = []
            for k in self.commitTasks! {
                tmp.append(k.toMap())
            }
            map["CommitTasks"] = tmp
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
        if let value = dict["CommitTasks"] as? [Any?] {
            var tmp : [DescribeCommitContainerTaskResponseBody.CommitTasks] = []
            for v in value {
                if v != nil {
                    var model = DescribeCommitContainerTaskResponseBody.CommitTasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.commitTasks = tmp
        }
        if let value = dict["MaxResults"] as? String {
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

public class DescribeCommitContainerTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCommitContainerTaskResponseBody?

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
            var model = DescribeCommitContainerTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeContainerGroupEventsRequest : Tea.TeaModel {
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
    public var containerGroupIds: String?

    public var eventSource: String?

    public var limit: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sinceSecond: Int32?

    public var tag: [DescribeContainerGroupEventsRequest.Tag]?

    public var vSwitchId: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerGroupIds != nil {
            map["ContainerGroupIds"] = self.containerGroupIds!
        }
        if self.eventSource != nil {
            map["EventSource"] = self.eventSource!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sinceSecond != nil {
            map["SinceSecond"] = self.sinceSecond!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerGroupIds"] as? String {
            self.containerGroupIds = value
        }
        if let value = dict["EventSource"] as? String {
            self.eventSource = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SinceSecond"] as? Int32 {
            self.sinceSecond = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeContainerGroupEventsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeContainerGroupEventsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeContainerGroupEventsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Events : Tea.TeaModel {
            public class Metadata : Tea.TeaModel {
                public var name: String?

                public var namespace: String?

                public override init() {
                    super.init()
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
                    if self.namespace != nil {
                        map["Namespace"] = self.namespace!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Namespace"] as? String {
                        self.namespace = value
                    }
                }
            }
            public class Source : Tea.TeaModel {
                public var component: String?

                public var host: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.component != nil {
                        map["Component"] = self.component!
                    }
                    if self.host != nil {
                        map["Host"] = self.host!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Component"] as? String {
                        self.component = value
                    }
                    if let value = dict["Host"] as? String {
                        self.host = value
                    }
                }
            }
            public class InvolvedObject : Tea.TeaModel {
                public var apiVersion: String?

                public var kind: String?

                public var name: String?

                public var namespace: String?

                public var uid: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.apiVersion != nil {
                        map["ApiVersion"] = self.apiVersion!
                    }
                    if self.kind != nil {
                        map["Kind"] = self.kind!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.namespace != nil {
                        map["Namespace"] = self.namespace!
                    }
                    if self.uid != nil {
                        map["Uid"] = self.uid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApiVersion"] as? String {
                        self.apiVersion = value
                    }
                    if let value = dict["Kind"] as? String {
                        self.kind = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Namespace"] as? String {
                        self.namespace = value
                    }
                    if let value = dict["Uid"] as? String {
                        self.uid = value
                    }
                }
            }
            public var count: Int32?

            public var firstTimestamp: String?

            public var lastTimestamp: String?

            public var message: String?

            public var metadata: DescribeContainerGroupEventsResponseBody.Data.Events.Metadata?

            public var reason: String?

            public var reportingComponent: String?

            public var reportingInstance: String?

            public var source: DescribeContainerGroupEventsResponseBody.Data.Events.Source?

            public var type: String?

            public var involvedObject: DescribeContainerGroupEventsResponseBody.Data.Events.InvolvedObject?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.metadata?.validate()
                try self.source?.validate()
                try self.involvedObject?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.firstTimestamp != nil {
                    map["FirstTimestamp"] = self.firstTimestamp!
                }
                if self.lastTimestamp != nil {
                    map["LastTimestamp"] = self.lastTimestamp!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.metadata != nil {
                    map["Metadata"] = self.metadata?.toMap()
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.reportingComponent != nil {
                    map["ReportingComponent"] = self.reportingComponent!
                }
                if self.reportingInstance != nil {
                    map["ReportingInstance"] = self.reportingInstance!
                }
                if self.source != nil {
                    map["Source"] = self.source?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.involvedObject != nil {
                    map["involvedObject"] = self.involvedObject?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["FirstTimestamp"] as? String {
                    self.firstTimestamp = value
                }
                if let value = dict["LastTimestamp"] as? String {
                    self.lastTimestamp = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Metadata"] as? [String: Any?] {
                    var model = DescribeContainerGroupEventsResponseBody.Data.Events.Metadata()
                    model.fromMap(value)
                    self.metadata = model
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
                if let value = dict["ReportingComponent"] as? String {
                    self.reportingComponent = value
                }
                if let value = dict["ReportingInstance"] as? String {
                    self.reportingInstance = value
                }
                if let value = dict["Source"] as? [String: Any?] {
                    var model = DescribeContainerGroupEventsResponseBody.Data.Events.Source()
                    model.fromMap(value)
                    self.source = model
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["involvedObject"] as? [String: Any?] {
                    var model = DescribeContainerGroupEventsResponseBody.Data.Events.InvolvedObject()
                    model.fromMap(value)
                    self.involvedObject = model
                }
            }
        }
        public var annotations: String?

        public var containerGroupId: String?

        public var events: [DescribeContainerGroupEventsResponseBody.Data.Events]?

        public var name: String?

        public var namespace: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.annotations != nil {
                map["Annotations"] = self.annotations!
            }
            if self.containerGroupId != nil {
                map["ContainerGroupId"] = self.containerGroupId!
            }
            if self.events != nil {
                var tmp : [Any] = []
                for k in self.events! {
                    tmp.append(k.toMap())
                }
                map["Events"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.uuid != nil {
                map["uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Annotations"] as? String {
                self.annotations = value
            }
            if let value = dict["ContainerGroupId"] as? String {
                self.containerGroupId = value
            }
            if let value = dict["Events"] as? [Any?] {
                var tmp : [DescribeContainerGroupEventsResponseBody.Data.Events] = []
                for v in value {
                    if v != nil {
                        var model = DescribeContainerGroupEventsResponseBody.Data.Events()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.events = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var data: [DescribeContainerGroupEventsResponseBody.Data]?

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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeContainerGroupEventsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeContainerGroupEventsResponseBody.Data()
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeContainerGroupEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerGroupEventsResponseBody?

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
            var model = DescribeContainerGroupEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeContainerGroupMetricRequest : Tea.TeaModel {
    public var containerGroupId: String?

    public var endTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var period: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeContainerGroupMetricResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public class CPU : Tea.TeaModel {
            public var limit: Int64?

            public var load: Int64?

            public var usageCoreNanoSeconds: Int64?

            public var usageNanoCores: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limit != nil {
                    map["Limit"] = self.limit!
                }
                if self.load != nil {
                    map["Load"] = self.load!
                }
                if self.usageCoreNanoSeconds != nil {
                    map["UsageCoreNanoSeconds"] = self.usageCoreNanoSeconds!
                }
                if self.usageNanoCores != nil {
                    map["UsageNanoCores"] = self.usageNanoCores!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Limit"] as? Int64 {
                    self.limit = value
                }
                if let value = dict["Load"] as? Int64 {
                    self.load = value
                }
                if let value = dict["UsageCoreNanoSeconds"] as? Int64 {
                    self.usageCoreNanoSeconds = value
                }
                if let value = dict["UsageNanoCores"] as? Int64 {
                    self.usageNanoCores = value
                }
            }
        }
        public class Containers : Tea.TeaModel {
            public class CPU : Tea.TeaModel {
                public var limit: Int64?

                public var load: Int64?

                public var usageCoreNanoSeconds: Int64?

                public var usageNanoCores: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.limit != nil {
                        map["Limit"] = self.limit!
                    }
                    if self.load != nil {
                        map["Load"] = self.load!
                    }
                    if self.usageCoreNanoSeconds != nil {
                        map["UsageCoreNanoSeconds"] = self.usageCoreNanoSeconds!
                    }
                    if self.usageNanoCores != nil {
                        map["UsageNanoCores"] = self.usageNanoCores!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Limit"] as? Int64 {
                        self.limit = value
                    }
                    if let value = dict["Load"] as? Int64 {
                        self.load = value
                    }
                    if let value = dict["UsageCoreNanoSeconds"] as? Int64 {
                        self.usageCoreNanoSeconds = value
                    }
                    if let value = dict["UsageNanoCores"] as? Int64 {
                        self.usageNanoCores = value
                    }
                }
            }
            public class Memory : Tea.TeaModel {
                public var availableBytes: Int64?

                public var cache: Int64?

                public var rss: Int64?

                public var usageBytes: Int64?

                public var workingSet: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.availableBytes != nil {
                        map["AvailableBytes"] = self.availableBytes!
                    }
                    if self.cache != nil {
                        map["Cache"] = self.cache!
                    }
                    if self.rss != nil {
                        map["Rss"] = self.rss!
                    }
                    if self.usageBytes != nil {
                        map["UsageBytes"] = self.usageBytes!
                    }
                    if self.workingSet != nil {
                        map["WorkingSet"] = self.workingSet!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AvailableBytes"] as? Int64 {
                        self.availableBytes = value
                    }
                    if let value = dict["Cache"] as? Int64 {
                        self.cache = value
                    }
                    if let value = dict["Rss"] as? Int64 {
                        self.rss = value
                    }
                    if let value = dict["UsageBytes"] as? Int64 {
                        self.usageBytes = value
                    }
                    if let value = dict["WorkingSet"] as? Int64 {
                        self.workingSet = value
                    }
                }
            }
            public var CPU: DescribeContainerGroupMetricResponseBody.Records.Containers.CPU?

            public var memory: DescribeContainerGroupMetricResponseBody.Records.Containers.Memory?

            public var name: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.CPU?.validate()
                try self.memory?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.CPU != nil {
                    map["CPU"] = self.CPU?.toMap()
                }
                if self.memory != nil {
                    map["Memory"] = self.memory?.toMap()
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CPU"] as? [String: Any?] {
                    var model = DescribeContainerGroupMetricResponseBody.Records.Containers.CPU()
                    model.fromMap(value)
                    self.CPU = model
                }
                if let value = dict["Memory"] as? [String: Any?] {
                    var model = DescribeContainerGroupMetricResponseBody.Records.Containers.Memory()
                    model.fromMap(value)
                    self.memory = model
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class Disk : Tea.TeaModel {
            public var device: String?

            public var readBytes: Int64?

            public var readIO: Int64?

            public var writeBytes: Int64?

            public var writeIO: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.device != nil {
                    map["Device"] = self.device!
                }
                if self.readBytes != nil {
                    map["ReadBytes"] = self.readBytes!
                }
                if self.readIO != nil {
                    map["ReadIO"] = self.readIO!
                }
                if self.writeBytes != nil {
                    map["WriteBytes"] = self.writeBytes!
                }
                if self.writeIO != nil {
                    map["WriteIO"] = self.writeIO!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Device"] as? String {
                    self.device = value
                }
                if let value = dict["ReadBytes"] as? Int64 {
                    self.readBytes = value
                }
                if let value = dict["ReadIO"] as? Int64 {
                    self.readIO = value
                }
                if let value = dict["WriteBytes"] as? Int64 {
                    self.writeBytes = value
                }
                if let value = dict["WriteIO"] as? Int64 {
                    self.writeIO = value
                }
            }
        }
        public class Filesystem : Tea.TeaModel {
            public var available: Int64?

            public var capacity: Int64?

            public var category: String?

            public var fsName: String?

            public var usage: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.available != nil {
                    map["Available"] = self.available!
                }
                if self.capacity != nil {
                    map["Capacity"] = self.capacity!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.fsName != nil {
                    map["FsName"] = self.fsName!
                }
                if self.usage != nil {
                    map["Usage"] = self.usage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Available"] as? Int64 {
                    self.available = value
                }
                if let value = dict["Capacity"] as? Int64 {
                    self.capacity = value
                }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["FsName"] as? String {
                    self.fsName = value
                }
                if let value = dict["Usage"] as? Int64 {
                    self.usage = value
                }
            }
        }
        public class Memory : Tea.TeaModel {
            public var availableBytes: Int64?

            public var cache: Int64?

            public var rss: Int64?

            public var usageBytes: Int64?

            public var workingSet: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.availableBytes != nil {
                    map["AvailableBytes"] = self.availableBytes!
                }
                if self.cache != nil {
                    map["Cache"] = self.cache!
                }
                if self.rss != nil {
                    map["Rss"] = self.rss!
                }
                if self.usageBytes != nil {
                    map["UsageBytes"] = self.usageBytes!
                }
                if self.workingSet != nil {
                    map["WorkingSet"] = self.workingSet!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AvailableBytes"] as? Int64 {
                    self.availableBytes = value
                }
                if let value = dict["Cache"] as? Int64 {
                    self.cache = value
                }
                if let value = dict["Rss"] as? Int64 {
                    self.rss = value
                }
                if let value = dict["UsageBytes"] as? Int64 {
                    self.usageBytes = value
                }
                if let value = dict["WorkingSet"] as? Int64 {
                    self.workingSet = value
                }
            }
        }
        public class Network : Tea.TeaModel {
            public class Interfaces : Tea.TeaModel {
                public var name: String?

                public var rxBytes: Int64?

                public var rxDrops: Int64?

                public var rxErrors: Int64?

                public var rxPackets: Int64?

                public var txBytes: Int64?

                public var txDrops: Int64?

                public var txErrors: Int64?

                public var txPackets: Int64?

                public override init() {
                    super.init()
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
                    if self.rxBytes != nil {
                        map["RxBytes"] = self.rxBytes!
                    }
                    if self.rxDrops != nil {
                        map["RxDrops"] = self.rxDrops!
                    }
                    if self.rxErrors != nil {
                        map["RxErrors"] = self.rxErrors!
                    }
                    if self.rxPackets != nil {
                        map["RxPackets"] = self.rxPackets!
                    }
                    if self.txBytes != nil {
                        map["TxBytes"] = self.txBytes!
                    }
                    if self.txDrops != nil {
                        map["TxDrops"] = self.txDrops!
                    }
                    if self.txErrors != nil {
                        map["TxErrors"] = self.txErrors!
                    }
                    if self.txPackets != nil {
                        map["TxPackets"] = self.txPackets!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["RxBytes"] as? Int64 {
                        self.rxBytes = value
                    }
                    if let value = dict["RxDrops"] as? Int64 {
                        self.rxDrops = value
                    }
                    if let value = dict["RxErrors"] as? Int64 {
                        self.rxErrors = value
                    }
                    if let value = dict["RxPackets"] as? Int64 {
                        self.rxPackets = value
                    }
                    if let value = dict["TxBytes"] as? Int64 {
                        self.txBytes = value
                    }
                    if let value = dict["TxDrops"] as? Int64 {
                        self.txDrops = value
                    }
                    if let value = dict["TxErrors"] as? Int64 {
                        self.txErrors = value
                    }
                    if let value = dict["TxPackets"] as? Int64 {
                        self.txPackets = value
                    }
                }
            }
            public var interfaces: [DescribeContainerGroupMetricResponseBody.Records.Network.Interfaces]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.interfaces != nil {
                    var tmp : [Any] = []
                    for k in self.interfaces! {
                        tmp.append(k.toMap())
                    }
                    map["Interfaces"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Interfaces"] as? [Any?] {
                    var tmp : [DescribeContainerGroupMetricResponseBody.Records.Network.Interfaces] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupMetricResponseBody.Records.Network.Interfaces()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.interfaces = tmp
                }
            }
        }
        public var CPU: DescribeContainerGroupMetricResponseBody.Records.CPU?

        public var containers: [DescribeContainerGroupMetricResponseBody.Records.Containers]?

        public var disk: [DescribeContainerGroupMetricResponseBody.Records.Disk]?

        public var filesystem: [DescribeContainerGroupMetricResponseBody.Records.Filesystem]?

        public var memory: DescribeContainerGroupMetricResponseBody.Records.Memory?

        public var network: DescribeContainerGroupMetricResponseBody.Records.Network?

        public var timestamp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.CPU?.validate()
            try self.memory?.validate()
            try self.network?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPU != nil {
                map["CPU"] = self.CPU?.toMap()
            }
            if self.containers != nil {
                var tmp : [Any] = []
                for k in self.containers! {
                    tmp.append(k.toMap())
                }
                map["Containers"] = tmp
            }
            if self.disk != nil {
                var tmp : [Any] = []
                for k in self.disk! {
                    tmp.append(k.toMap())
                }
                map["Disk"] = tmp
            }
            if self.filesystem != nil {
                var tmp : [Any] = []
                for k in self.filesystem! {
                    tmp.append(k.toMap())
                }
                map["Filesystem"] = tmp
            }
            if self.memory != nil {
                map["Memory"] = self.memory?.toMap()
            }
            if self.network != nil {
                map["Network"] = self.network?.toMap()
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? [String: Any?] {
                var model = DescribeContainerGroupMetricResponseBody.Records.CPU()
                model.fromMap(value)
                self.CPU = model
            }
            if let value = dict["Containers"] as? [Any?] {
                var tmp : [DescribeContainerGroupMetricResponseBody.Records.Containers] = []
                for v in value {
                    if v != nil {
                        var model = DescribeContainerGroupMetricResponseBody.Records.Containers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.containers = tmp
            }
            if let value = dict["Disk"] as? [Any?] {
                var tmp : [DescribeContainerGroupMetricResponseBody.Records.Disk] = []
                for v in value {
                    if v != nil {
                        var model = DescribeContainerGroupMetricResponseBody.Records.Disk()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.disk = tmp
            }
            if let value = dict["Filesystem"] as? [Any?] {
                var tmp : [DescribeContainerGroupMetricResponseBody.Records.Filesystem] = []
                for v in value {
                    if v != nil {
                        var model = DescribeContainerGroupMetricResponseBody.Records.Filesystem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.filesystem = tmp
            }
            if let value = dict["Memory"] as? [String: Any?] {
                var model = DescribeContainerGroupMetricResponseBody.Records.Memory()
                model.fromMap(value)
                self.memory = model
            }
            if let value = dict["Network"] as? [String: Any?] {
                var model = DescribeContainerGroupMetricResponseBody.Records.Network()
                model.fromMap(value)
                self.network = model
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
        }
    }
    public var containerGroupId: String?

    public var records: [DescribeContainerGroupMetricResponseBody.Records]?

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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["Records"] as? [Any?] {
            var tmp : [DescribeContainerGroupMetricResponseBody.Records] = []
            for v in value {
                if v != nil {
                    var model = DescribeContainerGroupMetricResponseBody.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeContainerGroupMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerGroupMetricResponseBody?

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
            var model = DescribeContainerGroupMetricResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeContainerGroupPriceRequest : Tea.TeaModel {
    public var computeCategory: String?

    public var cpu: Double?

    public var ephemeralStorage: Int32?

    public var instanceType: String?

    public var memory: Double?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var spotDuration: Int32?

    public var spotPriceLimit: Double?

    public var spotStrategy: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.computeCategory != nil {
            map["ComputeCategory"] = self.computeCategory!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.ephemeralStorage != nil {
            map["EphemeralStorage"] = self.ephemeralStorage!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.spotDuration != nil {
            map["SpotDuration"] = self.spotDuration!
        }
        if self.spotPriceLimit != nil {
            map["SpotPriceLimit"] = self.spotPriceLimit!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComputeCategory"] as? String {
            self.computeCategory = value
        }
        if let value = dict["Cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["EphemeralStorage"] as? Int32 {
            self.ephemeralStorage = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["Memory"] as? Double {
            self.memory = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SpotDuration"] as? Int32 {
            self.spotDuration = value
        }
        if let value = dict["SpotPriceLimit"] as? Double {
            self.spotPriceLimit = value
        }
        if let value = dict["SpotStrategy"] as? String {
            self.spotStrategy = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeContainerGroupPriceResponseBody : Tea.TeaModel {
    public class PriceInfo : Tea.TeaModel {
        public class Price : Tea.TeaModel {
            public class DetailInfos : Tea.TeaModel {
                public class DetailInfo : Tea.TeaModel {
                    public class Rules : Tea.TeaModel {
                        public class Rule : Tea.TeaModel {
                            public var description_: String?

                            public var ruleId: Int64?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.description_ != nil {
                                    map["Description"] = self.description_!
                                }
                                if self.ruleId != nil {
                                    map["RuleId"] = self.ruleId!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Description"] as? String {
                                    self.description_ = value
                                }
                                if let value = dict["RuleId"] as? Int64 {
                                    self.ruleId = value
                                }
                            }
                        }
                        public var rule: [DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo.Rules.Rule]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.rule != nil {
                                var tmp : [Any] = []
                                for k in self.rule! {
                                    tmp.append(k.toMap())
                                }
                                map["Rule"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Rule"] as? [Any?] {
                                var tmp : [DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo.Rules.Rule] = []
                                for v in value {
                                    if v != nil {
                                        var model = DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo.Rules.Rule()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.rule = tmp
                            }
                        }
                    }
                    public var discountPrice: Double?

                    public var originalPrice: Double?

                    public var resource: String?

                    public var rules: DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo.Rules?

                    public var tradePrice: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.rules?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.discountPrice != nil {
                            map["DiscountPrice"] = self.discountPrice!
                        }
                        if self.originalPrice != nil {
                            map["OriginalPrice"] = self.originalPrice!
                        }
                        if self.resource != nil {
                            map["Resource"] = self.resource!
                        }
                        if self.rules != nil {
                            map["Rules"] = self.rules?.toMap()
                        }
                        if self.tradePrice != nil {
                            map["TradePrice"] = self.tradePrice!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DiscountPrice"] as? Double {
                            self.discountPrice = value
                        }
                        if let value = dict["OriginalPrice"] as? Double {
                            self.originalPrice = value
                        }
                        if let value = dict["Resource"] as? String {
                            self.resource = value
                        }
                        if let value = dict["Rules"] as? [String: Any?] {
                            var model = DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo.Rules()
                            model.fromMap(value)
                            self.rules = model
                        }
                        if let value = dict["TradePrice"] as? Double {
                            self.tradePrice = value
                        }
                    }
                }
                public var detailInfo: [DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.detailInfo != nil {
                        var tmp : [Any] = []
                        for k in self.detailInfo! {
                            tmp.append(k.toMap())
                        }
                        map["DetailInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DetailInfo"] as? [Any?] {
                        var tmp : [DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos.DetailInfo()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.detailInfo = tmp
                    }
                }
            }
            public var currency: String?

            public var detailInfos: DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos?

            public var discountPrice: Double?

            public var originalPrice: Double?

            public var tradePrice: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.detailInfos?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.detailInfos != nil {
                    map["DetailInfos"] = self.detailInfos?.toMap()
                }
                if self.discountPrice != nil {
                    map["DiscountPrice"] = self.discountPrice!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Currency"] as? String {
                    self.currency = value
                }
                if let value = dict["DetailInfos"] as? [String: Any?] {
                    var model = DescribeContainerGroupPriceResponseBody.PriceInfo.Price.DetailInfos()
                    model.fromMap(value)
                    self.detailInfos = model
                }
                if let value = dict["DiscountPrice"] as? Double {
                    self.discountPrice = value
                }
                if let value = dict["OriginalPrice"] as? Double {
                    self.originalPrice = value
                }
                if let value = dict["TradePrice"] as? Double {
                    self.tradePrice = value
                }
            }
        }
        public class Rules : Tea.TeaModel {
            public class Rule : Tea.TeaModel {
                public var description_: String?

                public var ruleId: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.ruleId != nil {
                        map["RuleId"] = self.ruleId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["RuleId"] as? Int64 {
                        self.ruleId = value
                    }
                }
            }
            public var rule: [DescribeContainerGroupPriceResponseBody.PriceInfo.Rules.Rule]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.rule != nil {
                    var tmp : [Any] = []
                    for k in self.rule! {
                        tmp.append(k.toMap())
                    }
                    map["Rule"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Rule"] as? [Any?] {
                    var tmp : [DescribeContainerGroupPriceResponseBody.PriceInfo.Rules.Rule] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupPriceResponseBody.PriceInfo.Rules.Rule()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.rule = tmp
                }
            }
        }
        public class SpotPrices : Tea.TeaModel {
            public class SpotPrice : Tea.TeaModel {
                public var instanceType: String?

                public var originPrice: Double?

                public var spotPrice: Double?

                public var zoneId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    if self.originPrice != nil {
                        map["OriginPrice"] = self.originPrice!
                    }
                    if self.spotPrice != nil {
                        map["SpotPrice"] = self.spotPrice!
                    }
                    if self.zoneId != nil {
                        map["ZoneId"] = self.zoneId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["InstanceType"] as? String {
                        self.instanceType = value
                    }
                    if let value = dict["OriginPrice"] as? Double {
                        self.originPrice = value
                    }
                    if let value = dict["SpotPrice"] as? Double {
                        self.spotPrice = value
                    }
                    if let value = dict["ZoneId"] as? String {
                        self.zoneId = value
                    }
                }
            }
            public var spotPrice: [DescribeContainerGroupPriceResponseBody.PriceInfo.SpotPrices.SpotPrice]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.spotPrice != nil {
                    var tmp : [Any] = []
                    for k in self.spotPrice! {
                        tmp.append(k.toMap())
                    }
                    map["SpotPrice"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SpotPrice"] as? [Any?] {
                    var tmp : [DescribeContainerGroupPriceResponseBody.PriceInfo.SpotPrices.SpotPrice] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupPriceResponseBody.PriceInfo.SpotPrices.SpotPrice()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.spotPrice = tmp
                }
            }
        }
        public var price: DescribeContainerGroupPriceResponseBody.PriceInfo.Price?

        public var rules: DescribeContainerGroupPriceResponseBody.PriceInfo.Rules?

        public var spotPrices: DescribeContainerGroupPriceResponseBody.PriceInfo.SpotPrices?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.price?.validate()
            try self.rules?.validate()
            try self.spotPrices?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.price != nil {
                map["Price"] = self.price?.toMap()
            }
            if self.rules != nil {
                map["Rules"] = self.rules?.toMap()
            }
            if self.spotPrices != nil {
                map["SpotPrices"] = self.spotPrices?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Price"] as? [String: Any?] {
                var model = DescribeContainerGroupPriceResponseBody.PriceInfo.Price()
                model.fromMap(value)
                self.price = model
            }
            if let value = dict["Rules"] as? [String: Any?] {
                var model = DescribeContainerGroupPriceResponseBody.PriceInfo.Rules()
                model.fromMap(value)
                self.rules = model
            }
            if let value = dict["SpotPrices"] as? [String: Any?] {
                var model = DescribeContainerGroupPriceResponseBody.PriceInfo.SpotPrices()
                model.fromMap(value)
                self.spotPrices = model
            }
        }
    }
    public var priceInfo: DescribeContainerGroupPriceResponseBody.PriceInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.priceInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.priceInfo != nil {
            map["PriceInfo"] = self.priceInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PriceInfo"] as? [String: Any?] {
            var model = DescribeContainerGroupPriceResponseBody.PriceInfo()
            model.fromMap(value)
            self.priceInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeContainerGroupPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerGroupPriceResponseBody?

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
            var model = DescribeContainerGroupPriceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeContainerGroupStatusRequest : Tea.TeaModel {
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
    public var containerGroupIds: String?

    public var limit: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var sinceSecond: Int32?

    public var tag: [DescribeContainerGroupStatusRequest.Tag]?

    public var vSwitchId: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerGroupIds != nil {
            map["ContainerGroupIds"] = self.containerGroupIds!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sinceSecond != nil {
            map["SinceSecond"] = self.sinceSecond!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerGroupIds"] as? String {
            self.containerGroupIds = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SinceSecond"] as? Int32 {
            self.sinceSecond = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeContainerGroupStatusRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeContainerGroupStatusRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeContainerGroupStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PodStatus : Tea.TeaModel {
            public class Conditions : Tea.TeaModel {
                public var message: String?

                public var reason: String?

                public var lastTransitionTime: String?

                public var status: String?

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
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason!
                    }
                    if self.lastTransitionTime != nil {
                        map["lastTransitionTime"] = self.lastTransitionTime!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Message"] as? String {
                        self.message = value
                    }
                    if let value = dict["Reason"] as? String {
                        self.reason = value
                    }
                    if let value = dict["lastTransitionTime"] as? String {
                        self.lastTransitionTime = value
                    }
                    if let value = dict["status"] as? String {
                        self.status = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
                    }
                }
            }
            public class ContainerStatuses : Tea.TeaModel {
                public class LastState : Tea.TeaModel {
                    public class Running : Tea.TeaModel {
                        public var startedAtstartedAt: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.startedAtstartedAt != nil {
                                map["StartedAtstartedAt"] = self.startedAtstartedAt!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["StartedAtstartedAt"] as? String {
                                self.startedAtstartedAt = value
                            }
                        }
                    }
                    public class Terminated : Tea.TeaModel {
                        public var containerID: String?

                        public var exitCode: Int32?

                        public var finishedAt: String?

                        public var message: String?

                        public var reason: String?

                        public var signal: Int32?

                        public var startedAt: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.containerID != nil {
                                map["ContainerID"] = self.containerID!
                            }
                            if self.exitCode != nil {
                                map["ExitCode"] = self.exitCode!
                            }
                            if self.finishedAt != nil {
                                map["FinishedAt"] = self.finishedAt!
                            }
                            if self.message != nil {
                                map["Message"] = self.message!
                            }
                            if self.reason != nil {
                                map["Reason"] = self.reason!
                            }
                            if self.signal != nil {
                                map["Signal"] = self.signal!
                            }
                            if self.startedAt != nil {
                                map["StartedAt"] = self.startedAt!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ContainerID"] as? String {
                                self.containerID = value
                            }
                            if let value = dict["ExitCode"] as? Int32 {
                                self.exitCode = value
                            }
                            if let value = dict["FinishedAt"] as? String {
                                self.finishedAt = value
                            }
                            if let value = dict["Message"] as? String {
                                self.message = value
                            }
                            if let value = dict["Reason"] as? String {
                                self.reason = value
                            }
                            if let value = dict["Signal"] as? Int32 {
                                self.signal = value
                            }
                            if let value = dict["StartedAt"] as? String {
                                self.startedAt = value
                            }
                        }
                    }
                    public class Waiting : Tea.TeaModel {
                        public var message: String?

                        public var reason: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.message != nil {
                                map["Message"] = self.message!
                            }
                            if self.reason != nil {
                                map["Reason"] = self.reason!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Message"] as? String {
                                self.message = value
                            }
                            if let value = dict["Reason"] as? String {
                                self.reason = value
                            }
                        }
                    }
                    public var running: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState.Running?

                    public var terminated: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState.Terminated?

                    public var waiting: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState.Waiting?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.running?.validate()
                        try self.terminated?.validate()
                        try self.waiting?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.running != nil {
                            map["Running"] = self.running?.toMap()
                        }
                        if self.terminated != nil {
                            map["Terminated"] = self.terminated?.toMap()
                        }
                        if self.waiting != nil {
                            map["Waiting"] = self.waiting?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Running"] as? [String: Any?] {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState.Running()
                            model.fromMap(value)
                            self.running = model
                        }
                        if let value = dict["Terminated"] as? [String: Any?] {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState.Terminated()
                            model.fromMap(value)
                            self.terminated = model
                        }
                        if let value = dict["Waiting"] as? [String: Any?] {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState.Waiting()
                            model.fromMap(value)
                            self.waiting = model
                        }
                    }
                }
                public class State : Tea.TeaModel {
                    public class Running : Tea.TeaModel {
                        public var startedAtstartedAt: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.startedAtstartedAt != nil {
                                map["StartedAtstartedAt"] = self.startedAtstartedAt!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["StartedAtstartedAt"] as? String {
                                self.startedAtstartedAt = value
                            }
                        }
                    }
                    public class Terminated : Tea.TeaModel {
                        public var containerID: String?

                        public var exitCode: Int32?

                        public var finishedAt: String?

                        public var message: String?

                        public var reason: String?

                        public var signal: Int32?

                        public var startedAt: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.containerID != nil {
                                map["ContainerID"] = self.containerID!
                            }
                            if self.exitCode != nil {
                                map["ExitCode"] = self.exitCode!
                            }
                            if self.finishedAt != nil {
                                map["FinishedAt"] = self.finishedAt!
                            }
                            if self.message != nil {
                                map["Message"] = self.message!
                            }
                            if self.reason != nil {
                                map["Reason"] = self.reason!
                            }
                            if self.signal != nil {
                                map["Signal"] = self.signal!
                            }
                            if self.startedAt != nil {
                                map["StartedAt"] = self.startedAt!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["ContainerID"] as? String {
                                self.containerID = value
                            }
                            if let value = dict["ExitCode"] as? Int32 {
                                self.exitCode = value
                            }
                            if let value = dict["FinishedAt"] as? String {
                                self.finishedAt = value
                            }
                            if let value = dict["Message"] as? String {
                                self.message = value
                            }
                            if let value = dict["Reason"] as? String {
                                self.reason = value
                            }
                            if let value = dict["Signal"] as? Int32 {
                                self.signal = value
                            }
                            if let value = dict["StartedAt"] as? String {
                                self.startedAt = value
                            }
                        }
                    }
                    public class Waiting : Tea.TeaModel {
                        public var message: String?

                        public var reason: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.message != nil {
                                map["Message"] = self.message!
                            }
                            if self.reason != nil {
                                map["Reason"] = self.reason!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Message"] as? String {
                                self.message = value
                            }
                            if let value = dict["Reason"] as? String {
                                self.reason = value
                            }
                        }
                    }
                    public var running: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State.Running?

                    public var terminated: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State.Terminated?

                    public var waiting: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State.Waiting?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.running?.validate()
                        try self.terminated?.validate()
                        try self.waiting?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.running != nil {
                            map["Running"] = self.running?.toMap()
                        }
                        if self.terminated != nil {
                            map["Terminated"] = self.terminated?.toMap()
                        }
                        if self.waiting != nil {
                            map["Waiting"] = self.waiting?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Running"] as? [String: Any?] {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State.Running()
                            model.fromMap(value)
                            self.running = model
                        }
                        if let value = dict["Terminated"] as? [String: Any?] {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State.Terminated()
                            model.fromMap(value)
                            self.terminated = model
                        }
                        if let value = dict["Waiting"] as? [String: Any?] {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State.Waiting()
                            model.fromMap(value)
                            self.waiting = model
                        }
                    }
                }
                public var image: String?

                public var imageID: String?

                public var lastState: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState?

                public var name: String?

                public var ready: Bool?

                public var restartCount: Int32?

                public var started: Bool?

                public var state: DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.lastState?.validate()
                    try self.state?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.image != nil {
                        map["Image"] = self.image!
                    }
                    if self.imageID != nil {
                        map["ImageID"] = self.imageID!
                    }
                    if self.lastState != nil {
                        map["LastState"] = self.lastState?.toMap()
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.ready != nil {
                        map["Ready"] = self.ready!
                    }
                    if self.restartCount != nil {
                        map["RestartCount"] = self.restartCount!
                    }
                    if self.started != nil {
                        map["Started"] = self.started!
                    }
                    if self.state != nil {
                        map["State"] = self.state?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Image"] as? String {
                        self.image = value
                    }
                    if let value = dict["ImageID"] as? String {
                        self.imageID = value
                    }
                    if let value = dict["LastState"] as? [String: Any?] {
                        var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.LastState()
                        model.fromMap(value)
                        self.lastState = model
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Ready"] as? Bool {
                        self.ready = value
                    }
                    if let value = dict["RestartCount"] as? Int32 {
                        self.restartCount = value
                    }
                    if let value = dict["Started"] as? Bool {
                        self.started = value
                    }
                    if let value = dict["State"] as? [String: Any?] {
                        var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses.State()
                        model.fromMap(value)
                        self.state = model
                    }
                }
            }
            public class PodIps : Tea.TeaModel {
                public var ip: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ip != nil {
                        map["Ip"] = self.ip!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Ip"] as? String {
                        self.ip = value
                    }
                }
            }
            public var conditions: [DescribeContainerGroupStatusResponseBody.Data.PodStatus.Conditions]?

            public var containerStatuses: [DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses]?

            public var hostIp: String?

            public var phase: String?

            public var podIp: String?

            public var podIps: [DescribeContainerGroupStatusResponseBody.Data.PodStatus.PodIps]?

            public var qosClass: String?

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
                if self.conditions != nil {
                    var tmp : [Any] = []
                    for k in self.conditions! {
                        tmp.append(k.toMap())
                    }
                    map["Conditions"] = tmp
                }
                if self.containerStatuses != nil {
                    var tmp : [Any] = []
                    for k in self.containerStatuses! {
                        tmp.append(k.toMap())
                    }
                    map["ContainerStatuses"] = tmp
                }
                if self.hostIp != nil {
                    map["HostIp"] = self.hostIp!
                }
                if self.phase != nil {
                    map["Phase"] = self.phase!
                }
                if self.podIp != nil {
                    map["PodIp"] = self.podIp!
                }
                if self.podIps != nil {
                    var tmp : [Any] = []
                    for k in self.podIps! {
                        tmp.append(k.toMap())
                    }
                    map["PodIps"] = tmp
                }
                if self.qosClass != nil {
                    map["QosClass"] = self.qosClass!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Conditions"] as? [Any?] {
                    var tmp : [DescribeContainerGroupStatusResponseBody.Data.PodStatus.Conditions] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.Conditions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.conditions = tmp
                }
                if let value = dict["ContainerStatuses"] as? [Any?] {
                    var tmp : [DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.ContainerStatuses()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.containerStatuses = tmp
                }
                if let value = dict["HostIp"] as? String {
                    self.hostIp = value
                }
                if let value = dict["Phase"] as? String {
                    self.phase = value
                }
                if let value = dict["PodIp"] as? String {
                    self.podIp = value
                }
                if let value = dict["PodIps"] as? [Any?] {
                    var tmp : [DescribeContainerGroupStatusResponseBody.Data.PodStatus.PodIps] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus.PodIps()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.podIps = tmp
                }
                if let value = dict["QosClass"] as? String {
                    self.qosClass = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
            }
        }
        public var annotations: String?

        public var containerGroupId: String?

        public var name: String?

        public var namespace: String?

        public var podStatus: DescribeContainerGroupStatusResponseBody.Data.PodStatus?

        public var status: String?

        public var uuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.podStatus?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.annotations != nil {
                map["Annotations"] = self.annotations!
            }
            if self.containerGroupId != nil {
                map["ContainerGroupId"] = self.containerGroupId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.namespace != nil {
                map["Namespace"] = self.namespace!
            }
            if self.podStatus != nil {
                map["PodStatus"] = self.podStatus?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.uuid != nil {
                map["uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Annotations"] as? String {
                self.annotations = value
            }
            if let value = dict["ContainerGroupId"] as? String {
                self.containerGroupId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Namespace"] as? String {
                self.namespace = value
            }
            if let value = dict["PodStatus"] as? [String: Any?] {
                var model = DescribeContainerGroupStatusResponseBody.Data.PodStatus()
                model.fromMap(value)
                self.podStatus = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var data: [DescribeContainerGroupStatusResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeContainerGroupStatusResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeContainerGroupStatusResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class DescribeContainerGroupStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerGroupStatusResponseBody?

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
            var model = DescribeContainerGroupStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeContainerGroupsRequest : Tea.TeaModel {
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
    public var computeCategory: String?

    public var containerGroupIds: String?

    public var containerGroupName: String?

    public var limit: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityGroupId: String?

    public var status: String?

    public var tag: [DescribeContainerGroupsRequest.Tag]?

    public var vSwitchId: String?

    public var withEvent: Bool?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.computeCategory != nil {
            map["ComputeCategory"] = self.computeCategory!
        }
        if self.containerGroupIds != nil {
            map["ContainerGroupIds"] = self.containerGroupIds!
        }
        if self.containerGroupName != nil {
            map["ContainerGroupName"] = self.containerGroupName!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.withEvent != nil {
            map["WithEvent"] = self.withEvent!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ComputeCategory"] as? String {
            self.computeCategory = value
        }
        if let value = dict["ContainerGroupIds"] as? String {
            self.containerGroupIds = value
        }
        if let value = dict["ContainerGroupName"] as? String {
            self.containerGroupName = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeContainerGroupsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeContainerGroupsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["WithEvent"] as? Bool {
            self.withEvent = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeContainerGroupsResponseBody : Tea.TeaModel {
    public class ContainerGroups : Tea.TeaModel {
        public class Containers : Tea.TeaModel {
            public class CurrentState : Tea.TeaModel {
                public var detailStatus: String?

                public var exitCode: Int32?

                public var finishTime: String?

                public var message: String?

                public var reason: String?

                public var signal: Int32?

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
                    if self.detailStatus != nil {
                        map["DetailStatus"] = self.detailStatus!
                    }
                    if self.exitCode != nil {
                        map["ExitCode"] = self.exitCode!
                    }
                    if self.finishTime != nil {
                        map["FinishTime"] = self.finishTime!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason!
                    }
                    if self.signal != nil {
                        map["Signal"] = self.signal!
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
                    if let value = dict["DetailStatus"] as? String {
                        self.detailStatus = value
                    }
                    if let value = dict["ExitCode"] as? Int32 {
                        self.exitCode = value
                    }
                    if let value = dict["FinishTime"] as? String {
                        self.finishTime = value
                    }
                    if let value = dict["Message"] as? String {
                        self.message = value
                    }
                    if let value = dict["Reason"] as? String {
                        self.reason = value
                    }
                    if let value = dict["Signal"] as? Int32 {
                        self.signal = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["State"] as? String {
                        self.state = value
                    }
                }
            }
            public class EnvironmentVars : Tea.TeaModel {
                public class ValueFrom : Tea.TeaModel {
                    public class FieldRef : Tea.TeaModel {
                        public var fieldPath: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.fieldPath != nil {
                                map["FieldPath"] = self.fieldPath!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["FieldPath"] as? String {
                                self.fieldPath = value
                            }
                        }
                    }
                    public var fieldRef: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.EnvironmentVars.ValueFrom.FieldRef?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.fieldRef?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.fieldRef != nil {
                            map["FieldRef"] = self.fieldRef?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["FieldRef"] as? [String: Any?] {
                            var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.EnvironmentVars.ValueFrom.FieldRef()
                            model.fromMap(value)
                            self.fieldRef = model
                        }
                    }
                }
                public var key: String?

                public var value: String?

                public var valueFrom: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.EnvironmentVars.ValueFrom?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.valueFrom?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    if self.valueFrom != nil {
                        map["ValueFrom"] = self.valueFrom?.toMap()
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
                    if let value = dict["ValueFrom"] as? [String: Any?] {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.EnvironmentVars.ValueFrom()
                        model.fromMap(value)
                        self.valueFrom = model
                    }
                }
            }
            public class LivenessProbe : Tea.TeaModel {
                public class HttpGet : Tea.TeaModel {
                    public var path: String?

                    public var port: Int32?

                    public var scheme: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.path != nil {
                            map["Path"] = self.path!
                        }
                        if self.port != nil {
                            map["Port"] = self.port!
                        }
                        if self.scheme != nil {
                            map["Scheme"] = self.scheme!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Path"] as? String {
                            self.path = value
                        }
                        if let value = dict["Port"] as? Int32 {
                            self.port = value
                        }
                        if let value = dict["Scheme"] as? String {
                            self.scheme = value
                        }
                    }
                }
                public class TcpSocket : Tea.TeaModel {
                    public var host: String?

                    public var port: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.port != nil {
                            map["Port"] = self.port!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Host"] as? String {
                            self.host = value
                        }
                        if let value = dict["Port"] as? Int32 {
                            self.port = value
                        }
                    }
                }
                public var execs: [String]?

                public var failureThreshold: Int32?

                public var httpGet: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.LivenessProbe.HttpGet?

                public var initialDelaySeconds: Int32?

                public var periodSeconds: Int32?

                public var successThreshold: Int32?

                public var tcpSocket: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.LivenessProbe.TcpSocket?

                public var timeoutSeconds: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.httpGet?.validate()
                    try self.tcpSocket?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.execs != nil {
                        map["Execs"] = self.execs!
                    }
                    if self.failureThreshold != nil {
                        map["FailureThreshold"] = self.failureThreshold!
                    }
                    if self.httpGet != nil {
                        map["HttpGet"] = self.httpGet?.toMap()
                    }
                    if self.initialDelaySeconds != nil {
                        map["InitialDelaySeconds"] = self.initialDelaySeconds!
                    }
                    if self.periodSeconds != nil {
                        map["PeriodSeconds"] = self.periodSeconds!
                    }
                    if self.successThreshold != nil {
                        map["SuccessThreshold"] = self.successThreshold!
                    }
                    if self.tcpSocket != nil {
                        map["TcpSocket"] = self.tcpSocket?.toMap()
                    }
                    if self.timeoutSeconds != nil {
                        map["TimeoutSeconds"] = self.timeoutSeconds!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Execs"] as? [String] {
                        self.execs = value
                    }
                    if let value = dict["FailureThreshold"] as? Int32 {
                        self.failureThreshold = value
                    }
                    if let value = dict["HttpGet"] as? [String: Any?] {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.LivenessProbe.HttpGet()
                        model.fromMap(value)
                        self.httpGet = model
                    }
                    if let value = dict["InitialDelaySeconds"] as? Int32 {
                        self.initialDelaySeconds = value
                    }
                    if let value = dict["PeriodSeconds"] as? Int32 {
                        self.periodSeconds = value
                    }
                    if let value = dict["SuccessThreshold"] as? Int32 {
                        self.successThreshold = value
                    }
                    if let value = dict["TcpSocket"] as? [String: Any?] {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.LivenessProbe.TcpSocket()
                        model.fromMap(value)
                        self.tcpSocket = model
                    }
                    if let value = dict["TimeoutSeconds"] as? Int32 {
                        self.timeoutSeconds = value
                    }
                }
            }
            public class Ports : Tea.TeaModel {
                public var port: Int32?

                public var protocol_: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Port"] as? Int32 {
                        self.port = value
                    }
                    if let value = dict["Protocol"] as? String {
                        self.protocol_ = value
                    }
                }
            }
            public class PreviousState : Tea.TeaModel {
                public var detailStatus: String?

                public var exitCode: Int32?

                public var finishTime: String?

                public var message: String?

                public var reason: String?

                public var signal: Int32?

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
                    if self.detailStatus != nil {
                        map["DetailStatus"] = self.detailStatus!
                    }
                    if self.exitCode != nil {
                        map["ExitCode"] = self.exitCode!
                    }
                    if self.finishTime != nil {
                        map["FinishTime"] = self.finishTime!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason!
                    }
                    if self.signal != nil {
                        map["Signal"] = self.signal!
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
                    if let value = dict["DetailStatus"] as? String {
                        self.detailStatus = value
                    }
                    if let value = dict["ExitCode"] as? Int32 {
                        self.exitCode = value
                    }
                    if let value = dict["FinishTime"] as? String {
                        self.finishTime = value
                    }
                    if let value = dict["Message"] as? String {
                        self.message = value
                    }
                    if let value = dict["Reason"] as? String {
                        self.reason = value
                    }
                    if let value = dict["Signal"] as? Int32 {
                        self.signal = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["State"] as? String {
                        self.state = value
                    }
                }
            }
            public class ReadinessProbe : Tea.TeaModel {
                public class HttpGet : Tea.TeaModel {
                    public var path: String?

                    public var port: Int32?

                    public var scheme: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.path != nil {
                            map["Path"] = self.path!
                        }
                        if self.port != nil {
                            map["Port"] = self.port!
                        }
                        if self.scheme != nil {
                            map["Scheme"] = self.scheme!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Path"] as? String {
                            self.path = value
                        }
                        if let value = dict["Port"] as? Int32 {
                            self.port = value
                        }
                        if let value = dict["Scheme"] as? String {
                            self.scheme = value
                        }
                    }
                }
                public class TcpSocket : Tea.TeaModel {
                    public var host: String?

                    public var port: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.host != nil {
                            map["Host"] = self.host!
                        }
                        if self.port != nil {
                            map["Port"] = self.port!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Host"] as? String {
                            self.host = value
                        }
                        if let value = dict["Port"] as? Int32 {
                            self.port = value
                        }
                    }
                }
                public var execs: [String]?

                public var failureThreshold: Int32?

                public var httpGet: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.ReadinessProbe.HttpGet?

                public var initialDelaySeconds: Int32?

                public var periodSeconds: Int32?

                public var successThreshold: Int32?

                public var tcpSocket: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.ReadinessProbe.TcpSocket?

                public var timeoutSeconds: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.httpGet?.validate()
                    try self.tcpSocket?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.execs != nil {
                        map["Execs"] = self.execs!
                    }
                    if self.failureThreshold != nil {
                        map["FailureThreshold"] = self.failureThreshold!
                    }
                    if self.httpGet != nil {
                        map["HttpGet"] = self.httpGet?.toMap()
                    }
                    if self.initialDelaySeconds != nil {
                        map["InitialDelaySeconds"] = self.initialDelaySeconds!
                    }
                    if self.periodSeconds != nil {
                        map["PeriodSeconds"] = self.periodSeconds!
                    }
                    if self.successThreshold != nil {
                        map["SuccessThreshold"] = self.successThreshold!
                    }
                    if self.tcpSocket != nil {
                        map["TcpSocket"] = self.tcpSocket?.toMap()
                    }
                    if self.timeoutSeconds != nil {
                        map["TimeoutSeconds"] = self.timeoutSeconds!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Execs"] as? [String] {
                        self.execs = value
                    }
                    if let value = dict["FailureThreshold"] as? Int32 {
                        self.failureThreshold = value
                    }
                    if let value = dict["HttpGet"] as? [String: Any?] {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.ReadinessProbe.HttpGet()
                        model.fromMap(value)
                        self.httpGet = model
                    }
                    if let value = dict["InitialDelaySeconds"] as? Int32 {
                        self.initialDelaySeconds = value
                    }
                    if let value = dict["PeriodSeconds"] as? Int32 {
                        self.periodSeconds = value
                    }
                    if let value = dict["SuccessThreshold"] as? Int32 {
                        self.successThreshold = value
                    }
                    if let value = dict["TcpSocket"] as? [String: Any?] {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.ReadinessProbe.TcpSocket()
                        model.fromMap(value)
                        self.tcpSocket = model
                    }
                    if let value = dict["TimeoutSeconds"] as? Int32 {
                        self.timeoutSeconds = value
                    }
                }
            }
            public class SecurityContext : Tea.TeaModel {
                public class Capability : Tea.TeaModel {
                    public var adds: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.adds != nil {
                            map["Adds"] = self.adds!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Adds"] as? [String] {
                            self.adds = value
                        }
                    }
                }
                public var capability: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.SecurityContext.Capability?

                public var readOnlyRootFilesystem: Bool?

                public var runAsUser: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.capability?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.capability != nil {
                        map["Capability"] = self.capability?.toMap()
                    }
                    if self.readOnlyRootFilesystem != nil {
                        map["ReadOnlyRootFilesystem"] = self.readOnlyRootFilesystem!
                    }
                    if self.runAsUser != nil {
                        map["RunAsUser"] = self.runAsUser!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Capability"] as? [String: Any?] {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.SecurityContext.Capability()
                        model.fromMap(value)
                        self.capability = model
                    }
                    if let value = dict["ReadOnlyRootFilesystem"] as? Bool {
                        self.readOnlyRootFilesystem = value
                    }
                    if let value = dict["RunAsUser"] as? Int64 {
                        self.runAsUser = value
                    }
                }
            }
            public class VolumeMounts : Tea.TeaModel {
                public var mountPath: String?

                public var mountPropagation: String?

                public var name: String?

                public var readOnly: Bool?

                public var subPath: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mountPath != nil {
                        map["MountPath"] = self.mountPath!
                    }
                    if self.mountPropagation != nil {
                        map["MountPropagation"] = self.mountPropagation!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.readOnly != nil {
                        map["ReadOnly"] = self.readOnly!
                    }
                    if self.subPath != nil {
                        map["SubPath"] = self.subPath!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MountPath"] as? String {
                        self.mountPath = value
                    }
                    if let value = dict["MountPropagation"] as? String {
                        self.mountPropagation = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["ReadOnly"] as? Bool {
                        self.readOnly = value
                    }
                    if let value = dict["SubPath"] as? String {
                        self.subPath = value
                    }
                }
            }
            public var args: [String]?

            public var commands: [String]?

            public var cpu: Double?

            public var currentState: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.CurrentState?

            public var environmentVars: [DescribeContainerGroupsResponseBody.ContainerGroups.Containers.EnvironmentVars]?

            public var gpu: Int32?

            public var image: String?

            public var imagePullPolicy: String?

            public var livenessProbe: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.LivenessProbe?

            public var memory: Double?

            public var name: String?

            public var ports: [DescribeContainerGroupsResponseBody.ContainerGroups.Containers.Ports]?

            public var previousState: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.PreviousState?

            public var readinessProbe: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.ReadinessProbe?

            public var ready: Bool?

            public var restartCount: Int32?

            public var securityContext: DescribeContainerGroupsResponseBody.ContainerGroups.Containers.SecurityContext?

            public var stdin: Bool?

            public var stdinOnce: Bool?

            public var tty: Bool?

            public var volumeMounts: [DescribeContainerGroupsResponseBody.ContainerGroups.Containers.VolumeMounts]?

            public var workingDir: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.currentState?.validate()
                try self.livenessProbe?.validate()
                try self.previousState?.validate()
                try self.readinessProbe?.validate()
                try self.securityContext?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.args != nil {
                    map["Args"] = self.args!
                }
                if self.commands != nil {
                    map["Commands"] = self.commands!
                }
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.currentState != nil {
                    map["CurrentState"] = self.currentState?.toMap()
                }
                if self.environmentVars != nil {
                    var tmp : [Any] = []
                    for k in self.environmentVars! {
                        tmp.append(k.toMap())
                    }
                    map["EnvironmentVars"] = tmp
                }
                if self.gpu != nil {
                    map["Gpu"] = self.gpu!
                }
                if self.image != nil {
                    map["Image"] = self.image!
                }
                if self.imagePullPolicy != nil {
                    map["ImagePullPolicy"] = self.imagePullPolicy!
                }
                if self.livenessProbe != nil {
                    map["LivenessProbe"] = self.livenessProbe?.toMap()
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ports != nil {
                    var tmp : [Any] = []
                    for k in self.ports! {
                        tmp.append(k.toMap())
                    }
                    map["Ports"] = tmp
                }
                if self.previousState != nil {
                    map["PreviousState"] = self.previousState?.toMap()
                }
                if self.readinessProbe != nil {
                    map["ReadinessProbe"] = self.readinessProbe?.toMap()
                }
                if self.ready != nil {
                    map["Ready"] = self.ready!
                }
                if self.restartCount != nil {
                    map["RestartCount"] = self.restartCount!
                }
                if self.securityContext != nil {
                    map["SecurityContext"] = self.securityContext?.toMap()
                }
                if self.stdin != nil {
                    map["Stdin"] = self.stdin!
                }
                if self.stdinOnce != nil {
                    map["StdinOnce"] = self.stdinOnce!
                }
                if self.tty != nil {
                    map["Tty"] = self.tty!
                }
                if self.volumeMounts != nil {
                    var tmp : [Any] = []
                    for k in self.volumeMounts! {
                        tmp.append(k.toMap())
                    }
                    map["VolumeMounts"] = tmp
                }
                if self.workingDir != nil {
                    map["WorkingDir"] = self.workingDir!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Args"] as? [String] {
                    self.args = value
                }
                if let value = dict["Commands"] as? [String] {
                    self.commands = value
                }
                if let value = dict["Cpu"] as? Double {
                    self.cpu = value
                }
                if let value = dict["CurrentState"] as? [String: Any?] {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.CurrentState()
                    model.fromMap(value)
                    self.currentState = model
                }
                if let value = dict["EnvironmentVars"] as? [Any?] {
                    var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.Containers.EnvironmentVars] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.EnvironmentVars()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.environmentVars = tmp
                }
                if let value = dict["Gpu"] as? Int32 {
                    self.gpu = value
                }
                if let value = dict["Image"] as? String {
                    self.image = value
                }
                if let value = dict["ImagePullPolicy"] as? String {
                    self.imagePullPolicy = value
                }
                if let value = dict["LivenessProbe"] as? [String: Any?] {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.LivenessProbe()
                    model.fromMap(value)
                    self.livenessProbe = model
                }
                if let value = dict["Memory"] as? Double {
                    self.memory = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Ports"] as? [Any?] {
                    var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.Containers.Ports] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.Ports()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.ports = tmp
                }
                if let value = dict["PreviousState"] as? [String: Any?] {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.PreviousState()
                    model.fromMap(value)
                    self.previousState = model
                }
                if let value = dict["ReadinessProbe"] as? [String: Any?] {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.ReadinessProbe()
                    model.fromMap(value)
                    self.readinessProbe = model
                }
                if let value = dict["Ready"] as? Bool {
                    self.ready = value
                }
                if let value = dict["RestartCount"] as? Int32 {
                    self.restartCount = value
                }
                if let value = dict["SecurityContext"] as? [String: Any?] {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.SecurityContext()
                    model.fromMap(value)
                    self.securityContext = model
                }
                if let value = dict["Stdin"] as? Bool {
                    self.stdin = value
                }
                if let value = dict["StdinOnce"] as? Bool {
                    self.stdinOnce = value
                }
                if let value = dict["Tty"] as? Bool {
                    self.tty = value
                }
                if let value = dict["VolumeMounts"] as? [Any?] {
                    var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.Containers.VolumeMounts] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers.VolumeMounts()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.volumeMounts = tmp
                }
                if let value = dict["WorkingDir"] as? String {
                    self.workingDir = value
                }
            }
        }
        public class DnsConfig : Tea.TeaModel {
            public class Options : Tea.TeaModel {
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
            public var nameServers: [String]?

            public var options: [DescribeContainerGroupsResponseBody.ContainerGroups.DnsConfig.Options]?

            public var searches: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nameServers != nil {
                    map["NameServers"] = self.nameServers!
                }
                if self.options != nil {
                    var tmp : [Any] = []
                    for k in self.options! {
                        tmp.append(k.toMap())
                    }
                    map["Options"] = tmp
                }
                if self.searches != nil {
                    map["Searches"] = self.searches!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NameServers"] as? [String] {
                    self.nameServers = value
                }
                if let value = dict["Options"] as? [Any?] {
                    var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.DnsConfig.Options] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupsResponseBody.ContainerGroups.DnsConfig.Options()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.options = tmp
                }
                if let value = dict["Searches"] as? [String] {
                    self.searches = value
                }
            }
        }
        public class EciSecurityContext : Tea.TeaModel {
            public class Sysctls : Tea.TeaModel {
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
            public var sysctls: [DescribeContainerGroupsResponseBody.ContainerGroups.EciSecurityContext.Sysctls]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.sysctls != nil {
                    var tmp : [Any] = []
                    for k in self.sysctls! {
                        tmp.append(k.toMap())
                    }
                    map["Sysctls"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Sysctls"] as? [Any?] {
                    var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.EciSecurityContext.Sysctls] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupsResponseBody.ContainerGroups.EciSecurityContext.Sysctls()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.sysctls = tmp
                }
            }
        }
        public class Events : Tea.TeaModel {
            public var count: Int32?

            public var firstTimestamp: String?

            public var lastTimestamp: String?

            public var message: String?

            public var name: String?

            public var reason: String?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.firstTimestamp != nil {
                    map["FirstTimestamp"] = self.firstTimestamp!
                }
                if self.lastTimestamp != nil {
                    map["LastTimestamp"] = self.lastTimestamp!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["FirstTimestamp"] as? String {
                    self.firstTimestamp = value
                }
                if let value = dict["LastTimestamp"] as? String {
                    self.lastTimestamp = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class HostAliases : Tea.TeaModel {
            public var hostnames: [String]?

            public var ip: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hostnames != nil {
                    map["Hostnames"] = self.hostnames!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Hostnames"] as? [String] {
                    self.hostnames = value
                }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
            }
        }
        public class InitContainers : Tea.TeaModel {
            public class CurrentState : Tea.TeaModel {
                public var detailStatus: String?

                public var exitCode: Int32?

                public var finishTime: String?

                public var message: String?

                public var reason: String?

                public var signal: Int32?

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
                    if self.detailStatus != nil {
                        map["DetailStatus"] = self.detailStatus!
                    }
                    if self.exitCode != nil {
                        map["ExitCode"] = self.exitCode!
                    }
                    if self.finishTime != nil {
                        map["FinishTime"] = self.finishTime!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason!
                    }
                    if self.signal != nil {
                        map["Signal"] = self.signal!
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
                    if let value = dict["DetailStatus"] as? String {
                        self.detailStatus = value
                    }
                    if let value = dict["ExitCode"] as? Int32 {
                        self.exitCode = value
                    }
                    if let value = dict["FinishTime"] as? String {
                        self.finishTime = value
                    }
                    if let value = dict["Message"] as? String {
                        self.message = value
                    }
                    if let value = dict["Reason"] as? String {
                        self.reason = value
                    }
                    if let value = dict["Signal"] as? Int32 {
                        self.signal = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["State"] as? String {
                        self.state = value
                    }
                }
            }
            public class EnvironmentVars : Tea.TeaModel {
                public class ValueFrom : Tea.TeaModel {
                    public class FieldRef : Tea.TeaModel {
                        public var fieldPath: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.fieldPath != nil {
                                map["FieldPath"] = self.fieldPath!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["FieldPath"] as? String {
                                self.fieldPath = value
                            }
                        }
                    }
                    public var fieldRef: DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.EnvironmentVars.ValueFrom.FieldRef?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.fieldRef?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.fieldRef != nil {
                            map["FieldRef"] = self.fieldRef?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["FieldRef"] as? [String: Any?] {
                            var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.EnvironmentVars.ValueFrom.FieldRef()
                            model.fromMap(value)
                            self.fieldRef = model
                        }
                    }
                }
                public var key: String?

                public var value: String?

                public var valueFrom: DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.EnvironmentVars.ValueFrom?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.valueFrom?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.key != nil {
                        map["Key"] = self.key!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    if self.valueFrom != nil {
                        map["ValueFrom"] = self.valueFrom?.toMap()
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
                    if let value = dict["ValueFrom"] as? [String: Any?] {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.EnvironmentVars.ValueFrom()
                        model.fromMap(value)
                        self.valueFrom = model
                    }
                }
            }
            public class Ports : Tea.TeaModel {
                public var port: Int32?

                public var protocol_: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Port"] as? Int32 {
                        self.port = value
                    }
                    if let value = dict["Protocol"] as? String {
                        self.protocol_ = value
                    }
                }
            }
            public class PreviousState : Tea.TeaModel {
                public var detailStatus: String?

                public var exitCode: Int32?

                public var finishTime: String?

                public var message: String?

                public var reason: String?

                public var signal: Int32?

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
                    if self.detailStatus != nil {
                        map["DetailStatus"] = self.detailStatus!
                    }
                    if self.exitCode != nil {
                        map["ExitCode"] = self.exitCode!
                    }
                    if self.finishTime != nil {
                        map["FinishTime"] = self.finishTime!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.reason != nil {
                        map["Reason"] = self.reason!
                    }
                    if self.signal != nil {
                        map["Signal"] = self.signal!
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
                    if let value = dict["DetailStatus"] as? String {
                        self.detailStatus = value
                    }
                    if let value = dict["ExitCode"] as? Int32 {
                        self.exitCode = value
                    }
                    if let value = dict["FinishTime"] as? String {
                        self.finishTime = value
                    }
                    if let value = dict["Message"] as? String {
                        self.message = value
                    }
                    if let value = dict["Reason"] as? String {
                        self.reason = value
                    }
                    if let value = dict["Signal"] as? Int32 {
                        self.signal = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["State"] as? String {
                        self.state = value
                    }
                }
            }
            public class SecurityContext : Tea.TeaModel {
                public class Capability : Tea.TeaModel {
                    public var adds: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.adds != nil {
                            map["Adds"] = self.adds!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Adds"] as? [String] {
                            self.adds = value
                        }
                    }
                }
                public var capability: DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.SecurityContext.Capability?

                public var readOnlyRootFilesystem: Bool?

                public var runAsUser: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.capability?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.capability != nil {
                        map["Capability"] = self.capability?.toMap()
                    }
                    if self.readOnlyRootFilesystem != nil {
                        map["ReadOnlyRootFilesystem"] = self.readOnlyRootFilesystem!
                    }
                    if self.runAsUser != nil {
                        map["RunAsUser"] = self.runAsUser!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Capability"] as? [String: Any?] {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.SecurityContext.Capability()
                        model.fromMap(value)
                        self.capability = model
                    }
                    if let value = dict["ReadOnlyRootFilesystem"] as? Bool {
                        self.readOnlyRootFilesystem = value
                    }
                    if let value = dict["RunAsUser"] as? Int64 {
                        self.runAsUser = value
                    }
                }
            }
            public class VolumeMounts : Tea.TeaModel {
                public var mountPath: String?

                public var mountPropagation: String?

                public var name: String?

                public var readOnly: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mountPath != nil {
                        map["MountPath"] = self.mountPath!
                    }
                    if self.mountPropagation != nil {
                        map["MountPropagation"] = self.mountPropagation!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.readOnly != nil {
                        map["ReadOnly"] = self.readOnly!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MountPath"] as? String {
                        self.mountPath = value
                    }
                    if let value = dict["MountPropagation"] as? String {
                        self.mountPropagation = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["ReadOnly"] as? Bool {
                        self.readOnly = value
                    }
                }
            }
            public var args: [String]?

            public var command: [String]?

            public var cpu: Double?

            public var currentState: DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.CurrentState?

            public var environmentVars: [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.EnvironmentVars]?

            public var gpu: Int32?

            public var image: String?

            public var imagePullPolicy: String?

            public var memory: Double?

            public var name: String?

            public var ports: [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.Ports]?

            public var previousState: DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.PreviousState?

            public var ready: Bool?

            public var restartCount: Int32?

            public var securityContext: DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.SecurityContext?

            public var volumeMounts: [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.VolumeMounts]?

            public var workingDir: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.currentState?.validate()
                try self.previousState?.validate()
                try self.securityContext?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.args != nil {
                    map["Args"] = self.args!
                }
                if self.command != nil {
                    map["Command"] = self.command!
                }
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.currentState != nil {
                    map["CurrentState"] = self.currentState?.toMap()
                }
                if self.environmentVars != nil {
                    var tmp : [Any] = []
                    for k in self.environmentVars! {
                        tmp.append(k.toMap())
                    }
                    map["EnvironmentVars"] = tmp
                }
                if self.gpu != nil {
                    map["Gpu"] = self.gpu!
                }
                if self.image != nil {
                    map["Image"] = self.image!
                }
                if self.imagePullPolicy != nil {
                    map["ImagePullPolicy"] = self.imagePullPolicy!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ports != nil {
                    var tmp : [Any] = []
                    for k in self.ports! {
                        tmp.append(k.toMap())
                    }
                    map["Ports"] = tmp
                }
                if self.previousState != nil {
                    map["PreviousState"] = self.previousState?.toMap()
                }
                if self.ready != nil {
                    map["Ready"] = self.ready!
                }
                if self.restartCount != nil {
                    map["RestartCount"] = self.restartCount!
                }
                if self.securityContext != nil {
                    map["SecurityContext"] = self.securityContext?.toMap()
                }
                if self.volumeMounts != nil {
                    var tmp : [Any] = []
                    for k in self.volumeMounts! {
                        tmp.append(k.toMap())
                    }
                    map["VolumeMounts"] = tmp
                }
                if self.workingDir != nil {
                    map["WorkingDir"] = self.workingDir!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Args"] as? [String] {
                    self.args = value
                }
                if let value = dict["Command"] as? [String] {
                    self.command = value
                }
                if let value = dict["Cpu"] as? Double {
                    self.cpu = value
                }
                if let value = dict["CurrentState"] as? [String: Any?] {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.CurrentState()
                    model.fromMap(value)
                    self.currentState = model
                }
                if let value = dict["EnvironmentVars"] as? [Any?] {
                    var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.EnvironmentVars] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.EnvironmentVars()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.environmentVars = tmp
                }
                if let value = dict["Gpu"] as? Int32 {
                    self.gpu = value
                }
                if let value = dict["Image"] as? String {
                    self.image = value
                }
                if let value = dict["ImagePullPolicy"] as? String {
                    self.imagePullPolicy = value
                }
                if let value = dict["Memory"] as? Double {
                    self.memory = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Ports"] as? [Any?] {
                    var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.Ports] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.Ports()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.ports = tmp
                }
                if let value = dict["PreviousState"] as? [String: Any?] {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.PreviousState()
                    model.fromMap(value)
                    self.previousState = model
                }
                if let value = dict["Ready"] as? Bool {
                    self.ready = value
                }
                if let value = dict["RestartCount"] as? Int32 {
                    self.restartCount = value
                }
                if let value = dict["SecurityContext"] as? [String: Any?] {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.SecurityContext()
                    model.fromMap(value)
                    self.securityContext = model
                }
                if let value = dict["VolumeMounts"] as? [Any?] {
                    var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.VolumeMounts] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers.VolumeMounts()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.volumeMounts = tmp
                }
                if let value = dict["WorkingDir"] as? String {
                    self.workingDir = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
        public class Volumes : Tea.TeaModel {
            public class ConfigFileVolumeConfigFileToPaths : Tea.TeaModel {
                public var content: String?

                public var path: String?

                public override init() {
                    super.init()
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
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                }
            }
            public var configFileVolumeConfigFileToPaths: [DescribeContainerGroupsResponseBody.ContainerGroups.Volumes.ConfigFileVolumeConfigFileToPaths]?

            public var diskVolumeDiskId: String?

            public var diskVolumeFsType: String?

            public var emptyDirVolumeMedium: String?

            public var emptyDirVolumeSizeLimit: String?

            public var flexVolumeDriver: String?

            public var flexVolumeFsType: String?

            public var flexVolumeOptions: String?

            public var NFSVolumePath: String?

            public var NFSVolumeReadOnly: Bool?

            public var NFSVolumeServer: String?

            public var name: String?

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
                if self.configFileVolumeConfigFileToPaths != nil {
                    var tmp : [Any] = []
                    for k in self.configFileVolumeConfigFileToPaths! {
                        tmp.append(k.toMap())
                    }
                    map["ConfigFileVolumeConfigFileToPaths"] = tmp
                }
                if self.diskVolumeDiskId != nil {
                    map["DiskVolumeDiskId"] = self.diskVolumeDiskId!
                }
                if self.diskVolumeFsType != nil {
                    map["DiskVolumeFsType"] = self.diskVolumeFsType!
                }
                if self.emptyDirVolumeMedium != nil {
                    map["EmptyDirVolumeMedium"] = self.emptyDirVolumeMedium!
                }
                if self.emptyDirVolumeSizeLimit != nil {
                    map["EmptyDirVolumeSizeLimit"] = self.emptyDirVolumeSizeLimit!
                }
                if self.flexVolumeDriver != nil {
                    map["FlexVolumeDriver"] = self.flexVolumeDriver!
                }
                if self.flexVolumeFsType != nil {
                    map["FlexVolumeFsType"] = self.flexVolumeFsType!
                }
                if self.flexVolumeOptions != nil {
                    map["FlexVolumeOptions"] = self.flexVolumeOptions!
                }
                if self.NFSVolumePath != nil {
                    map["NFSVolumePath"] = self.NFSVolumePath!
                }
                if self.NFSVolumeReadOnly != nil {
                    map["NFSVolumeReadOnly"] = self.NFSVolumeReadOnly!
                }
                if self.NFSVolumeServer != nil {
                    map["NFSVolumeServer"] = self.NFSVolumeServer!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfigFileVolumeConfigFileToPaths"] as? [Any?] {
                    var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.Volumes.ConfigFileVolumeConfigFileToPaths] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeContainerGroupsResponseBody.ContainerGroups.Volumes.ConfigFileVolumeConfigFileToPaths()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.configFileVolumeConfigFileToPaths = tmp
                }
                if let value = dict["DiskVolumeDiskId"] as? String {
                    self.diskVolumeDiskId = value
                }
                if let value = dict["DiskVolumeFsType"] as? String {
                    self.diskVolumeFsType = value
                }
                if let value = dict["EmptyDirVolumeMedium"] as? String {
                    self.emptyDirVolumeMedium = value
                }
                if let value = dict["EmptyDirVolumeSizeLimit"] as? String {
                    self.emptyDirVolumeSizeLimit = value
                }
                if let value = dict["FlexVolumeDriver"] as? String {
                    self.flexVolumeDriver = value
                }
                if let value = dict["FlexVolumeFsType"] as? String {
                    self.flexVolumeFsType = value
                }
                if let value = dict["FlexVolumeOptions"] as? String {
                    self.flexVolumeOptions = value
                }
                if let value = dict["NFSVolumePath"] as? String {
                    self.NFSVolumePath = value
                }
                if let value = dict["NFSVolumeReadOnly"] as? Bool {
                    self.NFSVolumeReadOnly = value
                }
                if let value = dict["NFSVolumeServer"] as? String {
                    self.NFSVolumeServer = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var computeCategory: String?

        public var containerGroupId: String?

        public var containerGroupName: String?

        public var containers: [DescribeContainerGroupsResponseBody.ContainerGroups.Containers]?

        public var cpu: Double?

        public var creationTime: String?

        public var discount: Int32?

        public var dnsConfig: DescribeContainerGroupsResponseBody.ContainerGroups.DnsConfig?

        public var dnsPolicy: String?

        public var eciSecurityContext: DescribeContainerGroupsResponseBody.ContainerGroups.EciSecurityContext?

        public var eniInstanceId: String?

        public var ephemeralStorage: Int32?

        public var events: [DescribeContainerGroupsResponseBody.ContainerGroups.Events]?

        public var expiredTime: String?

        public var failedTime: String?

        public var hostAliases: [DescribeContainerGroupsResponseBody.ContainerGroups.HostAliases]?

        public var initContainers: [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers]?

        public var instanceType: String?

        public var internetIp: String?

        public var intranetIp: String?

        public var ipv6Address: String?

        public var memory: Double?

        public var ramRoleName: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var restartPolicy: String?

        public var securityGroupId: String?

        public var spotPriceLimit: Double?

        public var spotStrategy: String?

        public var status: String?

        public var succeededTime: String?

        public var tags: [DescribeContainerGroupsResponseBody.ContainerGroups.Tags]?

        public var tenantEniInstanceId: String?

        public var tenantEniIp: String?

        public var tenantSecurityGroupId: String?

        public var tenantVSwitchId: String?

        public var vSwitchId: String?

        public var volumes: [DescribeContainerGroupsResponseBody.ContainerGroups.Volumes]?

        public var vpcId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dnsConfig?.validate()
            try self.eciSecurityContext?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.computeCategory != nil {
                map["ComputeCategory"] = self.computeCategory!
            }
            if self.containerGroupId != nil {
                map["ContainerGroupId"] = self.containerGroupId!
            }
            if self.containerGroupName != nil {
                map["ContainerGroupName"] = self.containerGroupName!
            }
            if self.containers != nil {
                var tmp : [Any] = []
                for k in self.containers! {
                    tmp.append(k.toMap())
                }
                map["Containers"] = tmp
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.discount != nil {
                map["Discount"] = self.discount!
            }
            if self.dnsConfig != nil {
                map["DnsConfig"] = self.dnsConfig?.toMap()
            }
            if self.dnsPolicy != nil {
                map["DnsPolicy"] = self.dnsPolicy!
            }
            if self.eciSecurityContext != nil {
                map["EciSecurityContext"] = self.eciSecurityContext?.toMap()
            }
            if self.eniInstanceId != nil {
                map["EniInstanceId"] = self.eniInstanceId!
            }
            if self.ephemeralStorage != nil {
                map["EphemeralStorage"] = self.ephemeralStorage!
            }
            if self.events != nil {
                var tmp : [Any] = []
                for k in self.events! {
                    tmp.append(k.toMap())
                }
                map["Events"] = tmp
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.failedTime != nil {
                map["FailedTime"] = self.failedTime!
            }
            if self.hostAliases != nil {
                var tmp : [Any] = []
                for k in self.hostAliases! {
                    tmp.append(k.toMap())
                }
                map["HostAliases"] = tmp
            }
            if self.initContainers != nil {
                var tmp : [Any] = []
                for k in self.initContainers! {
                    tmp.append(k.toMap())
                }
                map["InitContainers"] = tmp
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.ipv6Address != nil {
                map["Ipv6Address"] = self.ipv6Address!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.ramRoleName != nil {
                map["RamRoleName"] = self.ramRoleName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.restartPolicy != nil {
                map["RestartPolicy"] = self.restartPolicy!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.spotPriceLimit != nil {
                map["SpotPriceLimit"] = self.spotPriceLimit!
            }
            if self.spotStrategy != nil {
                map["SpotStrategy"] = self.spotStrategy!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.succeededTime != nil {
                map["SucceededTime"] = self.succeededTime!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tenantEniInstanceId != nil {
                map["TenantEniInstanceId"] = self.tenantEniInstanceId!
            }
            if self.tenantEniIp != nil {
                map["TenantEniIp"] = self.tenantEniIp!
            }
            if self.tenantSecurityGroupId != nil {
                map["TenantSecurityGroupId"] = self.tenantSecurityGroupId!
            }
            if self.tenantVSwitchId != nil {
                map["TenantVSwitchId"] = self.tenantVSwitchId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.volumes != nil {
                var tmp : [Any] = []
                for k in self.volumes! {
                    tmp.append(k.toMap())
                }
                map["Volumes"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ComputeCategory"] as? String {
                self.computeCategory = value
            }
            if let value = dict["ContainerGroupId"] as? String {
                self.containerGroupId = value
            }
            if let value = dict["ContainerGroupName"] as? String {
                self.containerGroupName = value
            }
            if let value = dict["Containers"] as? [Any?] {
                var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.Containers] = []
                for v in value {
                    if v != nil {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Containers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.containers = tmp
            }
            if let value = dict["Cpu"] as? Double {
                self.cpu = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["Discount"] as? Int32 {
                self.discount = value
            }
            if let value = dict["DnsConfig"] as? [String: Any?] {
                var model = DescribeContainerGroupsResponseBody.ContainerGroups.DnsConfig()
                model.fromMap(value)
                self.dnsConfig = model
            }
            if let value = dict["DnsPolicy"] as? String {
                self.dnsPolicy = value
            }
            if let value = dict["EciSecurityContext"] as? [String: Any?] {
                var model = DescribeContainerGroupsResponseBody.ContainerGroups.EciSecurityContext()
                model.fromMap(value)
                self.eciSecurityContext = model
            }
            if let value = dict["EniInstanceId"] as? String {
                self.eniInstanceId = value
            }
            if let value = dict["EphemeralStorage"] as? Int32 {
                self.ephemeralStorage = value
            }
            if let value = dict["Events"] as? [Any?] {
                var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.Events] = []
                for v in value {
                    if v != nil {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Events()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.events = tmp
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["FailedTime"] as? String {
                self.failedTime = value
            }
            if let value = dict["HostAliases"] as? [Any?] {
                var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.HostAliases] = []
                for v in value {
                    if v != nil {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.HostAliases()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hostAliases = tmp
            }
            if let value = dict["InitContainers"] as? [Any?] {
                var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers] = []
                for v in value {
                    if v != nil {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.InitContainers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.initContainers = tmp
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["InternetIp"] as? String {
                self.internetIp = value
            }
            if let value = dict["IntranetIp"] as? String {
                self.intranetIp = value
            }
            if let value = dict["Ipv6Address"] as? String {
                self.ipv6Address = value
            }
            if let value = dict["Memory"] as? Double {
                self.memory = value
            }
            if let value = dict["RamRoleName"] as? String {
                self.ramRoleName = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RestartPolicy"] as? String {
                self.restartPolicy = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["SpotPriceLimit"] as? Double {
                self.spotPriceLimit = value
            }
            if let value = dict["SpotStrategy"] as? String {
                self.spotStrategy = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SucceededTime"] as? String {
                self.succeededTime = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TenantEniInstanceId"] as? String {
                self.tenantEniInstanceId = value
            }
            if let value = dict["TenantEniIp"] as? String {
                self.tenantEniIp = value
            }
            if let value = dict["TenantSecurityGroupId"] as? String {
                self.tenantSecurityGroupId = value
            }
            if let value = dict["TenantVSwitchId"] as? String {
                self.tenantVSwitchId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["Volumes"] as? [Any?] {
                var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups.Volumes] = []
                for v in value {
                    if v != nil {
                        var model = DescribeContainerGroupsResponseBody.ContainerGroups.Volumes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.volumes = tmp
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var containerGroups: [DescribeContainerGroupsResponseBody.ContainerGroups]?

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
        if self.containerGroups != nil {
            var tmp : [Any] = []
            for k in self.containerGroups! {
                tmp.append(k.toMap())
            }
            map["ContainerGroups"] = tmp
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
        if let value = dict["ContainerGroups"] as? [Any?] {
            var tmp : [DescribeContainerGroupsResponseBody.ContainerGroups] = []
            for v in value {
                if v != nil {
                    var model = DescribeContainerGroupsResponseBody.ContainerGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.containerGroups = tmp
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

public class DescribeContainerGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerGroupsResponseBody?

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
            var model = DescribeContainerGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeContainerLogRequest : Tea.TeaModel {
    public var containerGroupId: String?

    public var containerName: String?

    public var lastTime: Bool?

    public var limitBytes: Int64?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sinceSeconds: Int32?

    public var startTime: String?

    public var tail: Int32?

    public var timestamps: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.containerName != nil {
            map["ContainerName"] = self.containerName!
        }
        if self.lastTime != nil {
            map["LastTime"] = self.lastTime!
        }
        if self.limitBytes != nil {
            map["LimitBytes"] = self.limitBytes!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sinceSeconds != nil {
            map["SinceSeconds"] = self.sinceSeconds!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tail != nil {
            map["Tail"] = self.tail!
        }
        if self.timestamps != nil {
            map["Timestamps"] = self.timestamps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["ContainerName"] as? String {
            self.containerName = value
        }
        if let value = dict["LastTime"] as? Bool {
            self.lastTime = value
        }
        if let value = dict["LimitBytes"] as? Int64 {
            self.limitBytes = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SinceSeconds"] as? Int32 {
            self.sinceSeconds = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Tail"] as? Int32 {
            self.tail = value
        }
        if let value = dict["Timestamps"] as? Bool {
            self.timestamps = value
        }
    }
}

public class DescribeContainerLogResponseBody : Tea.TeaModel {
    public var containerName: String?

    public var content: String?

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
        if self.containerName != nil {
            map["ContainerName"] = self.containerName!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerName"] as? String {
            self.containerName = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeContainerLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerLogResponseBody?

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
            var model = DescribeContainerLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDataCachesRequest : Tea.TeaModel {
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
    public var bucket: String?

    public var dataCacheId: [String]?

    public var limit: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var path: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [DescribeDataCachesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.dataCacheId != nil {
            map["DataCacheId"] = self.dataCacheId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if let value = dict["Bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["DataCacheId"] as? [String] {
            self.dataCacheId = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeDataCachesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeDataCachesRequest.Tag()
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

public class DescribeDataCachesResponseBody : Tea.TeaModel {
    public class DataCaches : Tea.TeaModel {
        public class DataSource : Tea.TeaModel {
            public var options: String?

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
                if self.options != nil {
                    map["Options"] = self.options!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Options"] as? String {
                    self.options = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class Events : Tea.TeaModel {
            public var count: Int32?

            public var firstTimestamp: String?

            public var lastTimestamp: String?

            public var message: String?

            public var name: String?

            public var reason: String?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.firstTimestamp != nil {
                    map["FirstTimestamp"] = self.firstTimestamp!
                }
                if self.lastTimestamp != nil {
                    map["LastTimestamp"] = self.lastTimestamp!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["FirstTimestamp"] as? String {
                    self.firstTimestamp = value
                }
                if let value = dict["LastTimestamp"] as? String {
                    self.lastTimestamp = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
        public var bucket: String?

        public var containerGroupId: String?

        public var creationTime: String?

        public var dataCacheId: String?

        public var dataSource: DescribeDataCachesResponseBody.DataCaches.DataSource?

        public var events: [DescribeDataCachesResponseBody.DataCaches.Events]?

        public var expireDateTime: String?

        public var flashSnapshotId: String?

        public var lastMatchedTime: String?

        public var name: String?

        public var path: String?

        public var progress: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var size: Int32?

        public var snapshotId: String?

        public var status: String?

        public var tags: [DescribeDataCachesResponseBody.DataCaches.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataSource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.containerGroupId != nil {
                map["ContainerGroupId"] = self.containerGroupId!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.dataCacheId != nil {
                map["DataCacheId"] = self.dataCacheId!
            }
            if self.dataSource != nil {
                map["DataSource"] = self.dataSource?.toMap()
            }
            if self.events != nil {
                var tmp : [Any] = []
                for k in self.events! {
                    tmp.append(k.toMap())
                }
                map["Events"] = tmp
            }
            if self.expireDateTime != nil {
                map["ExpireDateTime"] = self.expireDateTime!
            }
            if self.flashSnapshotId != nil {
                map["FlashSnapshotId"] = self.flashSnapshotId!
            }
            if self.lastMatchedTime != nil {
                map["LastMatchedTime"] = self.lastMatchedTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.snapshotId != nil {
                map["SnapshotId"] = self.snapshotId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["ContainerGroupId"] as? String {
                self.containerGroupId = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["DataCacheId"] as? String {
                self.dataCacheId = value
            }
            if let value = dict["DataSource"] as? [String: Any?] {
                var model = DescribeDataCachesResponseBody.DataCaches.DataSource()
                model.fromMap(value)
                self.dataSource = model
            }
            if let value = dict["Events"] as? [Any?] {
                var tmp : [DescribeDataCachesResponseBody.DataCaches.Events] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataCachesResponseBody.DataCaches.Events()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.events = tmp
            }
            if let value = dict["ExpireDateTime"] as? String {
                self.expireDateTime = value
            }
            if let value = dict["FlashSnapshotId"] as? String {
                self.flashSnapshotId = value
            }
            if let value = dict["LastMatchedTime"] as? String {
                self.lastMatchedTime = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["Progress"] as? String {
                self.progress = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
            if let value = dict["SnapshotId"] as? String {
                self.snapshotId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeDataCachesResponseBody.DataCaches.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDataCachesResponseBody.DataCaches.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
        }
    }
    public var dataCaches: [DescribeDataCachesResponseBody.DataCaches]?

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
        if self.dataCaches != nil {
            var tmp : [Any] = []
            for k in self.dataCaches! {
                tmp.append(k.toMap())
            }
            map["DataCaches"] = tmp
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
        if let value = dict["DataCaches"] as? [Any?] {
            var tmp : [DescribeDataCachesResponseBody.DataCaches] = []
            for v in value {
                if v != nil {
                    var model = DescribeDataCachesResponseBody.DataCaches()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataCaches = tmp
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

public class DescribeDataCachesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDataCachesResponseBody?

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
            var model = DescribeDataCachesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeImageCachesRequest : Tea.TeaModel {
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
    public var image: String?

    public var imageCacheId: String?

    public var imageCacheName: String?

    public var imageFullMatch: Bool?

    public var imageMatchCountRequest: Int32?

    public var limit: Int32?

    public var matchImage: [String]?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var snapshotId: String?

    public var tag: [DescribeImageCachesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.imageCacheId != nil {
            map["ImageCacheId"] = self.imageCacheId!
        }
        if self.imageCacheName != nil {
            map["ImageCacheName"] = self.imageCacheName!
        }
        if self.imageFullMatch != nil {
            map["ImageFullMatch"] = self.imageFullMatch!
        }
        if self.imageMatchCountRequest != nil {
            map["ImageMatchCountRequest"] = self.imageMatchCountRequest!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.matchImage != nil {
            map["MatchImage"] = self.matchImage!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
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
        if let value = dict["Image"] as? String {
            self.image = value
        }
        if let value = dict["ImageCacheId"] as? String {
            self.imageCacheId = value
        }
        if let value = dict["ImageCacheName"] as? String {
            self.imageCacheName = value
        }
        if let value = dict["ImageFullMatch"] as? Bool {
            self.imageFullMatch = value
        }
        if let value = dict["ImageMatchCountRequest"] as? Int32 {
            self.imageMatchCountRequest = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["MatchImage"] as? [String] {
            self.matchImage = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeImageCachesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeImageCachesRequest.Tag()
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

public class DescribeImageCachesResponseBody : Tea.TeaModel {
    public class ImageCaches : Tea.TeaModel {
        public class Events : Tea.TeaModel {
            public var count: Int32?

            public var firstTimestamp: String?

            public var lastTimestamp: String?

            public var message: String?

            public var name: String?

            public var reason: String?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.firstTimestamp != nil {
                    map["FirstTimestamp"] = self.firstTimestamp!
                }
                if self.lastTimestamp != nil {
                    map["LastTimestamp"] = self.lastTimestamp!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["FirstTimestamp"] as? String {
                    self.firstTimestamp = value
                }
                if let value = dict["LastTimestamp"] as? String {
                    self.lastTimestamp = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
        public var containerGroupId: String?

        public var creationTime: String?

        public var eliminationStrategy: String?

        public var events: [DescribeImageCachesResponseBody.ImageCaches.Events]?

        public var expireDateTime: String?

        public var flashSnapshotId: String?

        public var imageCacheId: String?

        public var imageCacheName: String?

        public var imageCacheSize: Int32?

        public var images: [String]?

        public var lastMatchedTime: String?

        public var progress: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var snapshotId: String?

        public var status: String?

        public var tags: [DescribeImageCachesResponseBody.ImageCaches.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containerGroupId != nil {
                map["ContainerGroupId"] = self.containerGroupId!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.eliminationStrategy != nil {
                map["EliminationStrategy"] = self.eliminationStrategy!
            }
            if self.events != nil {
                var tmp : [Any] = []
                for k in self.events! {
                    tmp.append(k.toMap())
                }
                map["Events"] = tmp
            }
            if self.expireDateTime != nil {
                map["ExpireDateTime"] = self.expireDateTime!
            }
            if self.flashSnapshotId != nil {
                map["FlashSnapshotId"] = self.flashSnapshotId!
            }
            if self.imageCacheId != nil {
                map["ImageCacheId"] = self.imageCacheId!
            }
            if self.imageCacheName != nil {
                map["ImageCacheName"] = self.imageCacheName!
            }
            if self.imageCacheSize != nil {
                map["ImageCacheSize"] = self.imageCacheSize!
            }
            if self.images != nil {
                map["Images"] = self.images!
            }
            if self.lastMatchedTime != nil {
                map["LastMatchedTime"] = self.lastMatchedTime!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.snapshotId != nil {
                map["SnapshotId"] = self.snapshotId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContainerGroupId"] as? String {
                self.containerGroupId = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["EliminationStrategy"] as? String {
                self.eliminationStrategy = value
            }
            if let value = dict["Events"] as? [Any?] {
                var tmp : [DescribeImageCachesResponseBody.ImageCaches.Events] = []
                for v in value {
                    if v != nil {
                        var model = DescribeImageCachesResponseBody.ImageCaches.Events()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.events = tmp
            }
            if let value = dict["ExpireDateTime"] as? String {
                self.expireDateTime = value
            }
            if let value = dict["FlashSnapshotId"] as? String {
                self.flashSnapshotId = value
            }
            if let value = dict["ImageCacheId"] as? String {
                self.imageCacheId = value
            }
            if let value = dict["ImageCacheName"] as? String {
                self.imageCacheName = value
            }
            if let value = dict["ImageCacheSize"] as? Int32 {
                self.imageCacheSize = value
            }
            if let value = dict["Images"] as? [String] {
                self.images = value
            }
            if let value = dict["LastMatchedTime"] as? String {
                self.lastMatchedTime = value
            }
            if let value = dict["Progress"] as? String {
                self.progress = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SnapshotId"] as? String {
                self.snapshotId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeImageCachesResponseBody.ImageCaches.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeImageCachesResponseBody.ImageCaches.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
        }
    }
    public var imageCaches: [DescribeImageCachesResponseBody.ImageCaches]?

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
        if self.imageCaches != nil {
            var tmp : [Any] = []
            for k in self.imageCaches! {
                tmp.append(k.toMap())
            }
            map["ImageCaches"] = tmp
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
        if let value = dict["ImageCaches"] as? [Any?] {
            var tmp : [DescribeImageCachesResponseBody.ImageCaches] = []
            for v in value {
                if v != nil {
                    var model = DescribeImageCachesResponseBody.ImageCaches()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.imageCaches = tmp
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

public class DescribeImageCachesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageCachesResponseBody?

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
            var model = DescribeImageCachesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceOpsRecordsRequest : Tea.TeaModel {
    public var containerGroupId: String?

    public var opsType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.opsType != nil {
            map["OpsType"] = self.opsType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["OpsType"] as? String {
            self.opsType = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeInstanceOpsRecordsResponseBody : Tea.TeaModel {
    public class Records : Tea.TeaModel {
        public var createTime: String?

        public var expireTime: String?

        public var opsStatus: String?

        public var opsType: String?

        public var resultContent: String?

        public var resultType: String?

        public override init() {
            super.init()
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
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.opsStatus != nil {
                map["OpsStatus"] = self.opsStatus!
            }
            if self.opsType != nil {
                map["OpsType"] = self.opsType!
            }
            if self.resultContent != nil {
                map["ResultContent"] = self.resultContent!
            }
            if self.resultType != nil {
                map["ResultType"] = self.resultType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["OpsStatus"] as? String {
                self.opsStatus = value
            }
            if let value = dict["OpsType"] as? String {
                self.opsType = value
            }
            if let value = dict["ResultContent"] as? String {
                self.resultContent = value
            }
            if let value = dict["ResultType"] as? String {
                self.resultType = value
            }
        }
    }
    public var records: [DescribeInstanceOpsRecordsResponseBody.Records]?

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
        if self.records != nil {
            var tmp : [Any] = []
            for k in self.records! {
                tmp.append(k.toMap())
            }
            map["Records"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Records"] as? [Any?] {
            var tmp : [DescribeInstanceOpsRecordsResponseBody.Records] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstanceOpsRecordsResponseBody.Records()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.records = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceOpsRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceOpsRecordsResponseBody?

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
            var model = DescribeInstanceOpsRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMultiContainerGroupMetricRequest : Tea.TeaModel {
    public var containerGroupIds: String?

    public var metricType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerGroupIds != nil {
            map["ContainerGroupIds"] = self.containerGroupIds!
        }
        if self.metricType != nil {
            map["MetricType"] = self.metricType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerGroupIds"] as? String {
            self.containerGroupIds = value
        }
        if let value = dict["MetricType"] as? String {
            self.metricType = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeMultiContainerGroupMetricResponseBody : Tea.TeaModel {
    public class MonitorDatas : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public class CPU : Tea.TeaModel {
                public var limit: Int64?

                public var load: Int64?

                public var usageCoreNanoSeconds: Int64?

                public var usageNanoCores: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.limit != nil {
                        map["Limit"] = self.limit!
                    }
                    if self.load != nil {
                        map["Load"] = self.load!
                    }
                    if self.usageCoreNanoSeconds != nil {
                        map["UsageCoreNanoSeconds"] = self.usageCoreNanoSeconds!
                    }
                    if self.usageNanoCores != nil {
                        map["UsageNanoCores"] = self.usageNanoCores!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Limit"] as? Int64 {
                        self.limit = value
                    }
                    if let value = dict["Load"] as? Int64 {
                        self.load = value
                    }
                    if let value = dict["UsageCoreNanoSeconds"] as? Int64 {
                        self.usageCoreNanoSeconds = value
                    }
                    if let value = dict["UsageNanoCores"] as? Int64 {
                        self.usageNanoCores = value
                    }
                }
            }
            public class Containers : Tea.TeaModel {
                public class CPU : Tea.TeaModel {
                    public var limit: Int64?

                    public var load: Int64?

                    public var usageCoreNanoSeconds: Int64?

                    public var usageNanoCores: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.limit != nil {
                            map["Limit"] = self.limit!
                        }
                        if self.load != nil {
                            map["Load"] = self.load!
                        }
                        if self.usageCoreNanoSeconds != nil {
                            map["UsageCoreNanoSeconds"] = self.usageCoreNanoSeconds!
                        }
                        if self.usageNanoCores != nil {
                            map["UsageNanoCores"] = self.usageNanoCores!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Limit"] as? Int64 {
                            self.limit = value
                        }
                        if let value = dict["Load"] as? Int64 {
                            self.load = value
                        }
                        if let value = dict["UsageCoreNanoSeconds"] as? Int64 {
                            self.usageCoreNanoSeconds = value
                        }
                        if let value = dict["UsageNanoCores"] as? Int64 {
                            self.usageNanoCores = value
                        }
                    }
                }
                public class Memory : Tea.TeaModel {
                    public var availableBytes: Int64?

                    public var cache: Int64?

                    public var rss: Int64?

                    public var usageBytes: Int64?

                    public var workingSet: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.availableBytes != nil {
                            map["AvailableBytes"] = self.availableBytes!
                        }
                        if self.cache != nil {
                            map["Cache"] = self.cache!
                        }
                        if self.rss != nil {
                            map["Rss"] = self.rss!
                        }
                        if self.usageBytes != nil {
                            map["UsageBytes"] = self.usageBytes!
                        }
                        if self.workingSet != nil {
                            map["WorkingSet"] = self.workingSet!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AvailableBytes"] as? Int64 {
                            self.availableBytes = value
                        }
                        if let value = dict["Cache"] as? Int64 {
                            self.cache = value
                        }
                        if let value = dict["Rss"] as? Int64 {
                            self.rss = value
                        }
                        if let value = dict["UsageBytes"] as? Int64 {
                            self.usageBytes = value
                        }
                        if let value = dict["WorkingSet"] as? Int64 {
                            self.workingSet = value
                        }
                    }
                }
                public var CPU: DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Containers.CPU?

                public var memory: DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Containers.Memory?

                public var name: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.CPU?.validate()
                    try self.memory?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.CPU != nil {
                        map["CPU"] = self.CPU?.toMap()
                    }
                    if self.memory != nil {
                        map["Memory"] = self.memory?.toMap()
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CPU"] as? [String: Any?] {
                        var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Containers.CPU()
                        model.fromMap(value)
                        self.CPU = model
                    }
                    if let value = dict["Memory"] as? [String: Any?] {
                        var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Containers.Memory()
                        model.fromMap(value)
                        self.memory = model
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                }
            }
            public class Disk : Tea.TeaModel {
                public var device: String?

                public var readBytes: Int64?

                public var readIo: Int64?

                public var writeBytes: Int64?

                public var writeIo: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.device != nil {
                        map["Device"] = self.device!
                    }
                    if self.readBytes != nil {
                        map["ReadBytes"] = self.readBytes!
                    }
                    if self.readIo != nil {
                        map["ReadIo"] = self.readIo!
                    }
                    if self.writeBytes != nil {
                        map["WriteBytes"] = self.writeBytes!
                    }
                    if self.writeIo != nil {
                        map["WriteIo"] = self.writeIo!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Device"] as? String {
                        self.device = value
                    }
                    if let value = dict["ReadBytes"] as? Int64 {
                        self.readBytes = value
                    }
                    if let value = dict["ReadIo"] as? Int64 {
                        self.readIo = value
                    }
                    if let value = dict["WriteBytes"] as? Int64 {
                        self.writeBytes = value
                    }
                    if let value = dict["WriteIo"] as? Int64 {
                        self.writeIo = value
                    }
                }
            }
            public class Filesystem : Tea.TeaModel {
                public var available: Int64?

                public var capacity: Int64?

                public var fsName: String?

                public var usage: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.available != nil {
                        map["Available"] = self.available!
                    }
                    if self.capacity != nil {
                        map["Capacity"] = self.capacity!
                    }
                    if self.fsName != nil {
                        map["FsName"] = self.fsName!
                    }
                    if self.usage != nil {
                        map["Usage"] = self.usage!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Available"] as? Int64 {
                        self.available = value
                    }
                    if let value = dict["Capacity"] as? Int64 {
                        self.capacity = value
                    }
                    if let value = dict["FsName"] as? String {
                        self.fsName = value
                    }
                    if let value = dict["Usage"] as? Int64 {
                        self.usage = value
                    }
                }
            }
            public class Memory : Tea.TeaModel {
                public var availableBytes: Int64?

                public var cache: Int64?

                public var rss: Int64?

                public var usageBytes: Int64?

                public var workingSet: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.availableBytes != nil {
                        map["AvailableBytes"] = self.availableBytes!
                    }
                    if self.cache != nil {
                        map["Cache"] = self.cache!
                    }
                    if self.rss != nil {
                        map["Rss"] = self.rss!
                    }
                    if self.usageBytes != nil {
                        map["UsageBytes"] = self.usageBytes!
                    }
                    if self.workingSet != nil {
                        map["WorkingSet"] = self.workingSet!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AvailableBytes"] as? Int64 {
                        self.availableBytes = value
                    }
                    if let value = dict["Cache"] as? Int64 {
                        self.cache = value
                    }
                    if let value = dict["Rss"] as? Int64 {
                        self.rss = value
                    }
                    if let value = dict["UsageBytes"] as? Int64 {
                        self.usageBytes = value
                    }
                    if let value = dict["WorkingSet"] as? Int64 {
                        self.workingSet = value
                    }
                }
            }
            public class Network : Tea.TeaModel {
                public class Interfaces : Tea.TeaModel {
                    public var name: String?

                    public var rxBytes: Int64?

                    public var rxDrops: Int64?

                    public var rxErrors: Int64?

                    public var rxPackets: Int64?

                    public var txBytes: Int64?

                    public var txDrops: Int64?

                    public var txErrors: Int64?

                    public var txPackets: Int64?

                    public override init() {
                        super.init()
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
                        if self.rxBytes != nil {
                            map["RxBytes"] = self.rxBytes!
                        }
                        if self.rxDrops != nil {
                            map["RxDrops"] = self.rxDrops!
                        }
                        if self.rxErrors != nil {
                            map["RxErrors"] = self.rxErrors!
                        }
                        if self.rxPackets != nil {
                            map["RxPackets"] = self.rxPackets!
                        }
                        if self.txBytes != nil {
                            map["TxBytes"] = self.txBytes!
                        }
                        if self.txDrops != nil {
                            map["TxDrops"] = self.txDrops!
                        }
                        if self.txErrors != nil {
                            map["TxErrors"] = self.txErrors!
                        }
                        if self.txPackets != nil {
                            map["TxPackets"] = self.txPackets!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["RxBytes"] as? Int64 {
                            self.rxBytes = value
                        }
                        if let value = dict["RxDrops"] as? Int64 {
                            self.rxDrops = value
                        }
                        if let value = dict["RxErrors"] as? Int64 {
                            self.rxErrors = value
                        }
                        if let value = dict["RxPackets"] as? Int64 {
                            self.rxPackets = value
                        }
                        if let value = dict["TxBytes"] as? Int64 {
                            self.txBytes = value
                        }
                        if let value = dict["TxDrops"] as? Int64 {
                            self.txDrops = value
                        }
                        if let value = dict["TxErrors"] as? Int64 {
                            self.txErrors = value
                        }
                        if let value = dict["TxPackets"] as? Int64 {
                            self.txPackets = value
                        }
                    }
                }
                public var interfaces: [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Network.Interfaces]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.interfaces != nil {
                        var tmp : [Any] = []
                        for k in self.interfaces! {
                            tmp.append(k.toMap())
                        }
                        map["Interfaces"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Interfaces"] as? [Any?] {
                        var tmp : [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Network.Interfaces] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Network.Interfaces()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.interfaces = tmp
                    }
                }
            }
            public var CPU: DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.CPU?

            public var containers: [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Containers]?

            public var disk: [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Disk]?

            public var filesystem: [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Filesystem]?

            public var memory: DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Memory?

            public var network: DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Network?

            public var timestamp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.CPU?.validate()
                try self.memory?.validate()
                try self.network?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.CPU != nil {
                    map["CPU"] = self.CPU?.toMap()
                }
                if self.containers != nil {
                    var tmp : [Any] = []
                    for k in self.containers! {
                        tmp.append(k.toMap())
                    }
                    map["Containers"] = tmp
                }
                if self.disk != nil {
                    var tmp : [Any] = []
                    for k in self.disk! {
                        tmp.append(k.toMap())
                    }
                    map["Disk"] = tmp
                }
                if self.filesystem != nil {
                    var tmp : [Any] = []
                    for k in self.filesystem! {
                        tmp.append(k.toMap())
                    }
                    map["Filesystem"] = tmp
                }
                if self.memory != nil {
                    map["Memory"] = self.memory?.toMap()
                }
                if self.network != nil {
                    map["Network"] = self.network?.toMap()
                }
                if self.timestamp != nil {
                    map["Timestamp"] = self.timestamp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CPU"] as? [String: Any?] {
                    var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.CPU()
                    model.fromMap(value)
                    self.CPU = model
                }
                if let value = dict["Containers"] as? [Any?] {
                    var tmp : [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Containers] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Containers()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.containers = tmp
                }
                if let value = dict["Disk"] as? [Any?] {
                    var tmp : [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Disk] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Disk()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.disk = tmp
                }
                if let value = dict["Filesystem"] as? [Any?] {
                    var tmp : [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Filesystem] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Filesystem()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.filesystem = tmp
                }
                if let value = dict["Memory"] as? [String: Any?] {
                    var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Memory()
                    model.fromMap(value)
                    self.memory = model
                }
                if let value = dict["Network"] as? [String: Any?] {
                    var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records.Network()
                    model.fromMap(value)
                    self.network = model
                }
                if let value = dict["Timestamp"] as? String {
                    self.timestamp = value
                }
            }
        }
        public var containerGroupId: String?

        public var records: [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containerGroupId != nil {
                map["ContainerGroupId"] = self.containerGroupId!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContainerGroupId"] as? String {
                self.containerGroupId = value
            }
            if let value = dict["Records"] as? [Any?] {
                var tmp : [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records] = []
                for v in value {
                    if v != nil {
                        var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
        }
    }
    public var monitorDatas: [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas]?

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
        if self.monitorDatas != nil {
            var tmp : [Any] = []
            for k in self.monitorDatas! {
                tmp.append(k.toMap())
            }
            map["MonitorDatas"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MonitorDatas"] as? [Any?] {
            var tmp : [DescribeMultiContainerGroupMetricResponseBody.MonitorDatas] = []
            for v in value {
                if v != nil {
                    var model = DescribeMultiContainerGroupMetricResponseBody.MonitorDatas()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.monitorDatas = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeMultiContainerGroupMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMultiContainerGroupMetricResponseBody?

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
            var model = DescribeMultiContainerGroupMetricResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var recommendZones: [String]?

        public var regionEndpoint: String?

        public var regionId: String?

        public var unavailableZones: [String]?

        public var zones: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.recommendZones != nil {
                map["RecommendZones"] = self.recommendZones!
            }
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.unavailableZones != nil {
                map["UnavailableZones"] = self.unavailableZones!
            }
            if self.zones != nil {
                map["Zones"] = self.zones!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RecommendZones"] as? [String] {
                self.recommendZones = value
            }
            if let value = dict["RegionEndpoint"] as? String {
                self.regionEndpoint = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["UnavailableZones"] as? [String] {
                self.unavailableZones = value
            }
            if let value = dict["Zones"] as? [String] {
                self.zones = value
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

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
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVirtualNodesRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var limit: Int64?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var status: String?

    public var tag: [DescribeVirtualNodesRequest.Tag]?

    public var virtualNodeIds: String?

    public var virtualNodeName: String?

    public override init() {
        super.init()
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
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.virtualNodeIds != nil {
            map["VirtualNodeIds"] = self.virtualNodeIds!
        }
        if self.virtualNodeName != nil {
            map["VirtualNodeName"] = self.virtualNodeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeVirtualNodesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeVirtualNodesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VirtualNodeIds"] as? String {
            self.virtualNodeIds = value
        }
        if let value = dict["VirtualNodeName"] as? String {
            self.virtualNodeName = value
        }
    }
}

public class DescribeVirtualNodesResponseBody : Tea.TeaModel {
    public class VirtualNodes : Tea.TeaModel {
        public class Events : Tea.TeaModel {
            public var count: Int32?

            public var firstTimestamp: String?

            public var lastTimestamp: String?

            public var message: String?

            public var name: String?

            public var reason: String?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.firstTimestamp != nil {
                    map["FirstTimestamp"] = self.firstTimestamp!
                }
                if self.lastTimestamp != nil {
                    map["LastTimestamp"] = self.lastTimestamp!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["FirstTimestamp"] as? String {
                    self.firstTimestamp = value
                }
                if let value = dict["LastTimestamp"] as? String {
                    self.lastTimestamp = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Reason"] as? String {
                    self.reason = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
        public var creationTime: String?

        public var events: [DescribeVirtualNodesResponseBody.VirtualNodes.Events]?

        public var internetIp: String?

        public var intranetIp: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var status: String?

        public var tags: [DescribeVirtualNodesResponseBody.VirtualNodes.Tags]?

        public var virtualNodeId: String?

        public var virtualNodeName: String?

        public var virtualNodeSecurityGroupId: String?

        public var virtualNodeVSwitchId: String?

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
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.events != nil {
                var tmp : [Any] = []
                for k in self.events! {
                    tmp.append(k.toMap())
                }
                map["Events"] = tmp
            }
            if self.internetIp != nil {
                map["InternetIp"] = self.internetIp!
            }
            if self.intranetIp != nil {
                map["IntranetIp"] = self.intranetIp!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.virtualNodeId != nil {
                map["VirtualNodeId"] = self.virtualNodeId!
            }
            if self.virtualNodeName != nil {
                map["VirtualNodeName"] = self.virtualNodeName!
            }
            if self.virtualNodeSecurityGroupId != nil {
                map["VirtualNodeSecurityGroupId"] = self.virtualNodeSecurityGroupId!
            }
            if self.virtualNodeVSwitchId != nil {
                map["VirtualNodeVSwitchId"] = self.virtualNodeVSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["Events"] as? [Any?] {
                var tmp : [DescribeVirtualNodesResponseBody.VirtualNodes.Events] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVirtualNodesResponseBody.VirtualNodes.Events()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.events = tmp
            }
            if let value = dict["InternetIp"] as? String {
                self.internetIp = value
            }
            if let value = dict["IntranetIp"] as? String {
                self.intranetIp = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeVirtualNodesResponseBody.VirtualNodes.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVirtualNodesResponseBody.VirtualNodes.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["VirtualNodeId"] as? String {
                self.virtualNodeId = value
            }
            if let value = dict["VirtualNodeName"] as? String {
                self.virtualNodeName = value
            }
            if let value = dict["VirtualNodeSecurityGroupId"] as? String {
                self.virtualNodeSecurityGroupId = value
            }
            if let value = dict["VirtualNodeVSwitchId"] as? String {
                self.virtualNodeVSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var virtualNodes: [DescribeVirtualNodesResponseBody.VirtualNodes]?

    public override init() {
        super.init()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.virtualNodes != nil {
            var tmp : [Any] = []
            for k in self.virtualNodes! {
                tmp.append(k.toMap())
            }
            map["VirtualNodes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["VirtualNodes"] as? [Any?] {
            var tmp : [DescribeVirtualNodesResponseBody.VirtualNodes] = []
            for v in value {
                if v != nil {
                    var model = DescribeVirtualNodesResponseBody.VirtualNodes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.virtualNodes = tmp
        }
    }
}

public class DescribeVirtualNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVirtualNodesResponseBody?

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
            var model = DescribeVirtualNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecContainerCommandRequest : Tea.TeaModel {
    public var command: String?

    public var containerGroupId: String?

    public var containerName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var stdin: Bool?

    public var sync: Bool?

    public var TTY: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.command != nil {
            map["Command"] = self.command!
        }
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.containerName != nil {
            map["ContainerName"] = self.containerName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.stdin != nil {
            map["Stdin"] = self.stdin!
        }
        if self.sync != nil {
            map["Sync"] = self.sync!
        }
        if self.TTY != nil {
            map["TTY"] = self.TTY!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Command"] as? String {
            self.command = value
        }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["ContainerName"] as? String {
            self.containerName = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Stdin"] as? Bool {
            self.stdin = value
        }
        if let value = dict["Sync"] as? Bool {
            self.sync = value
        }
        if let value = dict["TTY"] as? Bool {
            self.TTY = value
        }
    }
}

public class ExecContainerCommandResponseBody : Tea.TeaModel {
    public var httpUrl: String?

    public var requestId: String?

    public var syncResponse: String?

    public var webSocketUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.httpUrl != nil {
            map["HttpUrl"] = self.httpUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.syncResponse != nil {
            map["SyncResponse"] = self.syncResponse!
        }
        if self.webSocketUri != nil {
            map["WebSocketUri"] = self.webSocketUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HttpUrl"] as? String {
            self.httpUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SyncResponse"] as? String {
            self.syncResponse = value
        }
        if let value = dict["WebSocketUri"] as? String {
            self.webSocketUri = value
        }
    }
}

public class ExecContainerCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecContainerCommandResponseBody?

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
            var model = ExecContainerCommandResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
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
    public var limit: String?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if let value = dict["Limit"] as? String {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
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

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
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
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagResources = tmp
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

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
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUsageRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ListUsageResponseBody : Tea.TeaModel {
    public var attributes: [String: Any]?

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
        if self.attributes != nil {
            map["Attributes"] = self.attributes!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Attributes"] as? [String: Any] {
            self.attributes = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsageResponseBody?

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
            var model = ListUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResizeContainerGroupVolumeRequest : Tea.TeaModel {
    public var clientToken: String?

    public var containerGroupId: String?

    public var newSize: Int64?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var volumeName: String?

    public override init() {
        super.init()
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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.newSize != nil {
            map["NewSize"] = self.newSize!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.volumeName != nil {
            map["VolumeName"] = self.volumeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["NewSize"] as? Int64 {
            self.newSize = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["VolumeName"] as? String {
            self.volumeName = value
        }
    }
}

public class ResizeContainerGroupVolumeResponseBody : Tea.TeaModel {
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

public class ResizeContainerGroupVolumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResizeContainerGroupVolumeResponseBody?

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
            var model = ResizeContainerGroupVolumeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartContainerGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var containerGroupId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class RestartContainerGroupResponseBody : Tea.TeaModel {
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

public class RestartContainerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartContainerGroupResponseBody?

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
            var model = RestartContainerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
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
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
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

public class TagResourcesResponseBody : Tea.TeaModel {
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

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

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
            var model = TagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var clientToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

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
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateContainerGroupRequest : Tea.TeaModel {
    public class DnsConfig : Tea.TeaModel {
        public class Option : Tea.TeaModel {
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
        public var nameServer: [String]?

        public var option: [UpdateContainerGroupRequest.DnsConfig.Option]?

        public var search: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nameServer != nil {
                map["NameServer"] = self.nameServer!
            }
            if self.option != nil {
                var tmp : [Any] = []
                for k in self.option! {
                    tmp.append(k.toMap())
                }
                map["Option"] = tmp
            }
            if self.search != nil {
                map["Search"] = self.search!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NameServer"] as? [String] {
                self.nameServer = value
            }
            if let value = dict["Option"] as? [Any?] {
                var tmp : [UpdateContainerGroupRequest.DnsConfig.Option] = []
                for v in value {
                    if v != nil {
                        var model = UpdateContainerGroupRequest.DnsConfig.Option()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.option = tmp
            }
            if let value = dict["Search"] as? [String] {
                self.search = value
            }
        }
    }
    public class AcrRegistryInfo : Tea.TeaModel {
        public var domain: [String]?

        public var instanceId: String?

        public var instanceName: String?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? [String] {
                self.domain = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public class Container : Tea.TeaModel {
        public class LivenessProbe : Tea.TeaModel {
            public class Exec : Tea.TeaModel {
                public var command: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.command != nil {
                        map["Command"] = self.command!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Command"] as? [String] {
                        self.command = value
                    }
                }
            }
            public class HttpGet : Tea.TeaModel {
                public var path: String?

                public var port: Int32?

                public var scheme: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.scheme != nil {
                        map["Scheme"] = self.scheme!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                    if let value = dict["Port"] as? Int32 {
                        self.port = value
                    }
                    if let value = dict["Scheme"] as? String {
                        self.scheme = value
                    }
                }
            }
            public class TcpSocket : Tea.TeaModel {
                public var port: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Port"] as? Int32 {
                        self.port = value
                    }
                }
            }
            public var exec: UpdateContainerGroupRequest.Container.LivenessProbe.Exec?

            public var failureThreshold: Int32?

            public var httpGet: UpdateContainerGroupRequest.Container.LivenessProbe.HttpGet?

            public var initialDelaySeconds: Int32?

            public var periodSeconds: Int32?

            public var successThreshold: Int32?

            public var tcpSocket: UpdateContainerGroupRequest.Container.LivenessProbe.TcpSocket?

            public var timeoutSeconds: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.exec?.validate()
                try self.httpGet?.validate()
                try self.tcpSocket?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.exec != nil {
                    map["Exec"] = self.exec?.toMap()
                }
                if self.failureThreshold != nil {
                    map["FailureThreshold"] = self.failureThreshold!
                }
                if self.httpGet != nil {
                    map["HttpGet"] = self.httpGet?.toMap()
                }
                if self.initialDelaySeconds != nil {
                    map["InitialDelaySeconds"] = self.initialDelaySeconds!
                }
                if self.periodSeconds != nil {
                    map["PeriodSeconds"] = self.periodSeconds!
                }
                if self.successThreshold != nil {
                    map["SuccessThreshold"] = self.successThreshold!
                }
                if self.tcpSocket != nil {
                    map["TcpSocket"] = self.tcpSocket?.toMap()
                }
                if self.timeoutSeconds != nil {
                    map["TimeoutSeconds"] = self.timeoutSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Exec"] as? [String: Any?] {
                    var model = UpdateContainerGroupRequest.Container.LivenessProbe.Exec()
                    model.fromMap(value)
                    self.exec = model
                }
                if let value = dict["FailureThreshold"] as? Int32 {
                    self.failureThreshold = value
                }
                if let value = dict["HttpGet"] as? [String: Any?] {
                    var model = UpdateContainerGroupRequest.Container.LivenessProbe.HttpGet()
                    model.fromMap(value)
                    self.httpGet = model
                }
                if let value = dict["InitialDelaySeconds"] as? Int32 {
                    self.initialDelaySeconds = value
                }
                if let value = dict["PeriodSeconds"] as? Int32 {
                    self.periodSeconds = value
                }
                if let value = dict["SuccessThreshold"] as? Int32 {
                    self.successThreshold = value
                }
                if let value = dict["TcpSocket"] as? [String: Any?] {
                    var model = UpdateContainerGroupRequest.Container.LivenessProbe.TcpSocket()
                    model.fromMap(value)
                    self.tcpSocket = model
                }
                if let value = dict["TimeoutSeconds"] as? Int32 {
                    self.timeoutSeconds = value
                }
            }
        }
        public class ReadinessProbe : Tea.TeaModel {
            public class Exec : Tea.TeaModel {
                public var command: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.command != nil {
                        map["Command"] = self.command!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Command"] as? [String] {
                        self.command = value
                    }
                }
            }
            public class HttpGet : Tea.TeaModel {
                public var path: String?

                public var port: Int32?

                public var scheme: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.scheme != nil {
                        map["Scheme"] = self.scheme!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                    if let value = dict["Port"] as? Int32 {
                        self.port = value
                    }
                    if let value = dict["Scheme"] as? String {
                        self.scheme = value
                    }
                }
            }
            public class TcpSocket : Tea.TeaModel {
                public var port: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Port"] as? Int32 {
                        self.port = value
                    }
                }
            }
            public var exec: UpdateContainerGroupRequest.Container.ReadinessProbe.Exec?

            public var failureThreshold: Int32?

            public var httpGet: UpdateContainerGroupRequest.Container.ReadinessProbe.HttpGet?

            public var initialDelaySeconds: Int32?

            public var periodSeconds: Int32?

            public var successThreshold: Int32?

            public var tcpSocket: UpdateContainerGroupRequest.Container.ReadinessProbe.TcpSocket?

            public var timeoutSeconds: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.exec?.validate()
                try self.httpGet?.validate()
                try self.tcpSocket?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.exec != nil {
                    map["Exec"] = self.exec?.toMap()
                }
                if self.failureThreshold != nil {
                    map["FailureThreshold"] = self.failureThreshold!
                }
                if self.httpGet != nil {
                    map["HttpGet"] = self.httpGet?.toMap()
                }
                if self.initialDelaySeconds != nil {
                    map["InitialDelaySeconds"] = self.initialDelaySeconds!
                }
                if self.periodSeconds != nil {
                    map["PeriodSeconds"] = self.periodSeconds!
                }
                if self.successThreshold != nil {
                    map["SuccessThreshold"] = self.successThreshold!
                }
                if self.tcpSocket != nil {
                    map["TcpSocket"] = self.tcpSocket?.toMap()
                }
                if self.timeoutSeconds != nil {
                    map["TimeoutSeconds"] = self.timeoutSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Exec"] as? [String: Any?] {
                    var model = UpdateContainerGroupRequest.Container.ReadinessProbe.Exec()
                    model.fromMap(value)
                    self.exec = model
                }
                if let value = dict["FailureThreshold"] as? Int32 {
                    self.failureThreshold = value
                }
                if let value = dict["HttpGet"] as? [String: Any?] {
                    var model = UpdateContainerGroupRequest.Container.ReadinessProbe.HttpGet()
                    model.fromMap(value)
                    self.httpGet = model
                }
                if let value = dict["InitialDelaySeconds"] as? Int32 {
                    self.initialDelaySeconds = value
                }
                if let value = dict["PeriodSeconds"] as? Int32 {
                    self.periodSeconds = value
                }
                if let value = dict["SuccessThreshold"] as? Int32 {
                    self.successThreshold = value
                }
                if let value = dict["TcpSocket"] as? [String: Any?] {
                    var model = UpdateContainerGroupRequest.Container.ReadinessProbe.TcpSocket()
                    model.fromMap(value)
                    self.tcpSocket = model
                }
                if let value = dict["TimeoutSeconds"] as? Int32 {
                    self.timeoutSeconds = value
                }
            }
        }
        public class SecurityContext : Tea.TeaModel {
            public class Capability : Tea.TeaModel {
                public var add: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.add != nil {
                        map["Add"] = self.add!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Add"] as? [String] {
                        self.add = value
                    }
                }
            }
            public var capability: UpdateContainerGroupRequest.Container.SecurityContext.Capability?

            public var readOnlyRootFilesystem: Bool?

            public var runAsUser: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.capability?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capability != nil {
                    map["Capability"] = self.capability?.toMap()
                }
                if self.readOnlyRootFilesystem != nil {
                    map["ReadOnlyRootFilesystem"] = self.readOnlyRootFilesystem!
                }
                if self.runAsUser != nil {
                    map["RunAsUser"] = self.runAsUser!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Capability"] as? [String: Any?] {
                    var model = UpdateContainerGroupRequest.Container.SecurityContext.Capability()
                    model.fromMap(value)
                    self.capability = model
                }
                if let value = dict["ReadOnlyRootFilesystem"] as? Bool {
                    self.readOnlyRootFilesystem = value
                }
                if let value = dict["RunAsUser"] as? Int64 {
                    self.runAsUser = value
                }
            }
        }
        public class EnvironmentVar : Tea.TeaModel {
            public class FieldRef : Tea.TeaModel {
                public var fieldPath: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fieldPath != nil {
                        map["FieldPath"] = self.fieldPath!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FieldPath"] as? String {
                        self.fieldPath = value
                    }
                }
            }
            public var fieldRef: UpdateContainerGroupRequest.Container.EnvironmentVar.FieldRef?

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
                try self.fieldRef?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fieldRef != nil {
                    map["FieldRef"] = self.fieldRef?.toMap()
                }
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
                if let value = dict["FieldRef"] as? [String: Any?] {
                    var model = UpdateContainerGroupRequest.Container.EnvironmentVar.FieldRef()
                    model.fromMap(value)
                    self.fieldRef = model
                }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public class LifecyclePostStartHandlerHttpGetHttpHeaders : Tea.TeaModel {
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
        public class LifecyclePreStopHandlerHttpGetHttpHeader : Tea.TeaModel {
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
        public class Port : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
            }
        }
        public class VolumeMount : Tea.TeaModel {
            public var mountPath: String?

            public var mountPropagation: String?

            public var name: String?

            public var readOnly: Bool?

            public var subPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mountPath != nil {
                    map["MountPath"] = self.mountPath!
                }
                if self.mountPropagation != nil {
                    map["MountPropagation"] = self.mountPropagation!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.readOnly != nil {
                    map["ReadOnly"] = self.readOnly!
                }
                if self.subPath != nil {
                    map["SubPath"] = self.subPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MountPath"] as? String {
                    self.mountPath = value
                }
                if let value = dict["MountPropagation"] as? String {
                    self.mountPropagation = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ReadOnly"] as? Bool {
                    self.readOnly = value
                }
                if let value = dict["SubPath"] as? String {
                    self.subPath = value
                }
            }
        }
        public var livenessProbe: UpdateContainerGroupRequest.Container.LivenessProbe?

        public var readinessProbe: UpdateContainerGroupRequest.Container.ReadinessProbe?

        public var securityContext: UpdateContainerGroupRequest.Container.SecurityContext?

        public var arg: [String]?

        public var command: [String]?

        public var cpu: Double?

        public var environmentVar: [UpdateContainerGroupRequest.Container.EnvironmentVar]?

        public var gpu: Int32?

        public var image: String?

        public var imagePullPolicy: String?

        public var lifecyclePostStartHandlerExec: [String]?

        public var lifecyclePostStartHandlerHttpGetHost: String?

        public var lifecyclePostStartHandlerHttpGetHttpHeaders: [UpdateContainerGroupRequest.Container.LifecyclePostStartHandlerHttpGetHttpHeaders]?

        public var lifecyclePostStartHandlerHttpGetPath: String?

        public var lifecyclePostStartHandlerHttpGetPort: Int32?

        public var lifecyclePostStartHandlerHttpGetScheme: String?

        public var lifecyclePostStartHandlerTcpSocketHost: String?

        public var lifecyclePostStartHandlerTcpSocketPort: Int32?

        public var lifecyclePreStopHandlerExec: [String]?

        public var lifecyclePreStopHandlerHttpGetHost: String?

        public var lifecyclePreStopHandlerHttpGetHttpHeader: [UpdateContainerGroupRequest.Container.LifecyclePreStopHandlerHttpGetHttpHeader]?

        public var lifecyclePreStopHandlerHttpGetPath: String?

        public var lifecyclePreStopHandlerHttpGetPort: Int32?

        public var lifecyclePreStopHandlerHttpGetScheme: String?

        public var lifecyclePreStopHandlerTcpSocketHost: String?

        public var lifecyclePreStopHandlerTcpSocketPort: Int32?

        public var memory: Double?

        public var name: String?

        public var port: [UpdateContainerGroupRequest.Container.Port]?

        public var stdin: Bool?

        public var stdinOnce: Bool?

        public var tty: Bool?

        public var volumeMount: [UpdateContainerGroupRequest.Container.VolumeMount]?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.livenessProbe?.validate()
            try self.readinessProbe?.validate()
            try self.securityContext?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.livenessProbe != nil {
                map["LivenessProbe"] = self.livenessProbe?.toMap()
            }
            if self.readinessProbe != nil {
                map["ReadinessProbe"] = self.readinessProbe?.toMap()
            }
            if self.securityContext != nil {
                map["SecurityContext"] = self.securityContext?.toMap()
            }
            if self.arg != nil {
                map["Arg"] = self.arg!
            }
            if self.command != nil {
                map["Command"] = self.command!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.environmentVar != nil {
                var tmp : [Any] = []
                for k in self.environmentVar! {
                    tmp.append(k.toMap())
                }
                map["EnvironmentVar"] = tmp
            }
            if self.gpu != nil {
                map["Gpu"] = self.gpu!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.imagePullPolicy != nil {
                map["ImagePullPolicy"] = self.imagePullPolicy!
            }
            if self.lifecyclePostStartHandlerExec != nil {
                map["LifecyclePostStartHandlerExec"] = self.lifecyclePostStartHandlerExec!
            }
            if self.lifecyclePostStartHandlerHttpGetHost != nil {
                map["LifecyclePostStartHandlerHttpGetHost"] = self.lifecyclePostStartHandlerHttpGetHost!
            }
            if self.lifecyclePostStartHandlerHttpGetHttpHeaders != nil {
                var tmp : [Any] = []
                for k in self.lifecyclePostStartHandlerHttpGetHttpHeaders! {
                    tmp.append(k.toMap())
                }
                map["LifecyclePostStartHandlerHttpGetHttpHeaders"] = tmp
            }
            if self.lifecyclePostStartHandlerHttpGetPath != nil {
                map["LifecyclePostStartHandlerHttpGetPath"] = self.lifecyclePostStartHandlerHttpGetPath!
            }
            if self.lifecyclePostStartHandlerHttpGetPort != nil {
                map["LifecyclePostStartHandlerHttpGetPort"] = self.lifecyclePostStartHandlerHttpGetPort!
            }
            if self.lifecyclePostStartHandlerHttpGetScheme != nil {
                map["LifecyclePostStartHandlerHttpGetScheme"] = self.lifecyclePostStartHandlerHttpGetScheme!
            }
            if self.lifecyclePostStartHandlerTcpSocketHost != nil {
                map["LifecyclePostStartHandlerTcpSocketHost"] = self.lifecyclePostStartHandlerTcpSocketHost!
            }
            if self.lifecyclePostStartHandlerTcpSocketPort != nil {
                map["LifecyclePostStartHandlerTcpSocketPort"] = self.lifecyclePostStartHandlerTcpSocketPort!
            }
            if self.lifecyclePreStopHandlerExec != nil {
                map["LifecyclePreStopHandlerExec"] = self.lifecyclePreStopHandlerExec!
            }
            if self.lifecyclePreStopHandlerHttpGetHost != nil {
                map["LifecyclePreStopHandlerHttpGetHost"] = self.lifecyclePreStopHandlerHttpGetHost!
            }
            if self.lifecyclePreStopHandlerHttpGetHttpHeader != nil {
                var tmp : [Any] = []
                for k in self.lifecyclePreStopHandlerHttpGetHttpHeader! {
                    tmp.append(k.toMap())
                }
                map["LifecyclePreStopHandlerHttpGetHttpHeader"] = tmp
            }
            if self.lifecyclePreStopHandlerHttpGetPath != nil {
                map["LifecyclePreStopHandlerHttpGetPath"] = self.lifecyclePreStopHandlerHttpGetPath!
            }
            if self.lifecyclePreStopHandlerHttpGetPort != nil {
                map["LifecyclePreStopHandlerHttpGetPort"] = self.lifecyclePreStopHandlerHttpGetPort!
            }
            if self.lifecyclePreStopHandlerHttpGetScheme != nil {
                map["LifecyclePreStopHandlerHttpGetScheme"] = self.lifecyclePreStopHandlerHttpGetScheme!
            }
            if self.lifecyclePreStopHandlerTcpSocketHost != nil {
                map["LifecyclePreStopHandlerTcpSocketHost"] = self.lifecyclePreStopHandlerTcpSocketHost!
            }
            if self.lifecyclePreStopHandlerTcpSocketPort != nil {
                map["LifecyclePreStopHandlerTcpSocketPort"] = self.lifecyclePreStopHandlerTcpSocketPort!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.port != nil {
                var tmp : [Any] = []
                for k in self.port! {
                    tmp.append(k.toMap())
                }
                map["Port"] = tmp
            }
            if self.stdin != nil {
                map["Stdin"] = self.stdin!
            }
            if self.stdinOnce != nil {
                map["StdinOnce"] = self.stdinOnce!
            }
            if self.tty != nil {
                map["Tty"] = self.tty!
            }
            if self.volumeMount != nil {
                var tmp : [Any] = []
                for k in self.volumeMount! {
                    tmp.append(k.toMap())
                }
                map["VolumeMount"] = tmp
            }
            if self.workingDir != nil {
                map["WorkingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LivenessProbe"] as? [String: Any?] {
                var model = UpdateContainerGroupRequest.Container.LivenessProbe()
                model.fromMap(value)
                self.livenessProbe = model
            }
            if let value = dict["ReadinessProbe"] as? [String: Any?] {
                var model = UpdateContainerGroupRequest.Container.ReadinessProbe()
                model.fromMap(value)
                self.readinessProbe = model
            }
            if let value = dict["SecurityContext"] as? [String: Any?] {
                var model = UpdateContainerGroupRequest.Container.SecurityContext()
                model.fromMap(value)
                self.securityContext = model
            }
            if let value = dict["Arg"] as? [String] {
                self.arg = value
            }
            if let value = dict["Command"] as? [String] {
                self.command = value
            }
            if let value = dict["Cpu"] as? Double {
                self.cpu = value
            }
            if let value = dict["EnvironmentVar"] as? [Any?] {
                var tmp : [UpdateContainerGroupRequest.Container.EnvironmentVar] = []
                for v in value {
                    if v != nil {
                        var model = UpdateContainerGroupRequest.Container.EnvironmentVar()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.environmentVar = tmp
            }
            if let value = dict["Gpu"] as? Int32 {
                self.gpu = value
            }
            if let value = dict["Image"] as? String {
                self.image = value
            }
            if let value = dict["ImagePullPolicy"] as? String {
                self.imagePullPolicy = value
            }
            if let value = dict["LifecyclePostStartHandlerExec"] as? [String] {
                self.lifecyclePostStartHandlerExec = value
            }
            if let value = dict["LifecyclePostStartHandlerHttpGetHost"] as? String {
                self.lifecyclePostStartHandlerHttpGetHost = value
            }
            if let value = dict["LifecyclePostStartHandlerHttpGetHttpHeaders"] as? [Any?] {
                var tmp : [UpdateContainerGroupRequest.Container.LifecyclePostStartHandlerHttpGetHttpHeaders] = []
                for v in value {
                    if v != nil {
                        var model = UpdateContainerGroupRequest.Container.LifecyclePostStartHandlerHttpGetHttpHeaders()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.lifecyclePostStartHandlerHttpGetHttpHeaders = tmp
            }
            if let value = dict["LifecyclePostStartHandlerHttpGetPath"] as? String {
                self.lifecyclePostStartHandlerHttpGetPath = value
            }
            if let value = dict["LifecyclePostStartHandlerHttpGetPort"] as? Int32 {
                self.lifecyclePostStartHandlerHttpGetPort = value
            }
            if let value = dict["LifecyclePostStartHandlerHttpGetScheme"] as? String {
                self.lifecyclePostStartHandlerHttpGetScheme = value
            }
            if let value = dict["LifecyclePostStartHandlerTcpSocketHost"] as? String {
                self.lifecyclePostStartHandlerTcpSocketHost = value
            }
            if let value = dict["LifecyclePostStartHandlerTcpSocketPort"] as? Int32 {
                self.lifecyclePostStartHandlerTcpSocketPort = value
            }
            if let value = dict["LifecyclePreStopHandlerExec"] as? [String] {
                self.lifecyclePreStopHandlerExec = value
            }
            if let value = dict["LifecyclePreStopHandlerHttpGetHost"] as? String {
                self.lifecyclePreStopHandlerHttpGetHost = value
            }
            if let value = dict["LifecyclePreStopHandlerHttpGetHttpHeader"] as? [Any?] {
                var tmp : [UpdateContainerGroupRequest.Container.LifecyclePreStopHandlerHttpGetHttpHeader] = []
                for v in value {
                    if v != nil {
                        var model = UpdateContainerGroupRequest.Container.LifecyclePreStopHandlerHttpGetHttpHeader()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.lifecyclePreStopHandlerHttpGetHttpHeader = tmp
            }
            if let value = dict["LifecyclePreStopHandlerHttpGetPath"] as? String {
                self.lifecyclePreStopHandlerHttpGetPath = value
            }
            if let value = dict["LifecyclePreStopHandlerHttpGetPort"] as? Int32 {
                self.lifecyclePreStopHandlerHttpGetPort = value
            }
            if let value = dict["LifecyclePreStopHandlerHttpGetScheme"] as? String {
                self.lifecyclePreStopHandlerHttpGetScheme = value
            }
            if let value = dict["LifecyclePreStopHandlerTcpSocketHost"] as? String {
                self.lifecyclePreStopHandlerTcpSocketHost = value
            }
            if let value = dict["LifecyclePreStopHandlerTcpSocketPort"] as? Int32 {
                self.lifecyclePreStopHandlerTcpSocketPort = value
            }
            if let value = dict["Memory"] as? Double {
                self.memory = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Port"] as? [Any?] {
                var tmp : [UpdateContainerGroupRequest.Container.Port] = []
                for v in value {
                    if v != nil {
                        var model = UpdateContainerGroupRequest.Container.Port()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.port = tmp
            }
            if let value = dict["Stdin"] as? Bool {
                self.stdin = value
            }
            if let value = dict["StdinOnce"] as? Bool {
                self.stdinOnce = value
            }
            if let value = dict["Tty"] as? Bool {
                self.tty = value
            }
            if let value = dict["VolumeMount"] as? [Any?] {
                var tmp : [UpdateContainerGroupRequest.Container.VolumeMount] = []
                for v in value {
                    if v != nil {
                        var model = UpdateContainerGroupRequest.Container.VolumeMount()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.volumeMount = tmp
            }
            if let value = dict["WorkingDir"] as? String {
                self.workingDir = value
            }
        }
    }
    public class ImageRegistryCredential : Tea.TeaModel {
        public var password: String?

        public var server: String?

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
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Server"] as? String {
                self.server = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public class InitContainer : Tea.TeaModel {
        public class SecurityContext : Tea.TeaModel {
            public class Capability : Tea.TeaModel {
                public var add: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.add != nil {
                        map["Add"] = self.add!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Add"] as? [String] {
                        self.add = value
                    }
                }
            }
            public var capability: UpdateContainerGroupRequest.InitContainer.SecurityContext.Capability?

            public var readOnlyRootFilesystem: Bool?

            public var runAsUser: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.capability?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capability != nil {
                    map["Capability"] = self.capability?.toMap()
                }
                if self.readOnlyRootFilesystem != nil {
                    map["ReadOnlyRootFilesystem"] = self.readOnlyRootFilesystem!
                }
                if self.runAsUser != nil {
                    map["RunAsUser"] = self.runAsUser!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Capability"] as? [String: Any?] {
                    var model = UpdateContainerGroupRequest.InitContainer.SecurityContext.Capability()
                    model.fromMap(value)
                    self.capability = model
                }
                if let value = dict["ReadOnlyRootFilesystem"] as? Bool {
                    self.readOnlyRootFilesystem = value
                }
                if let value = dict["RunAsUser"] as? Int64 {
                    self.runAsUser = value
                }
            }
        }
        public class EnvironmentVar : Tea.TeaModel {
            public class FieldRef : Tea.TeaModel {
                public var fieldPath: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fieldPath != nil {
                        map["FieldPath"] = self.fieldPath!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FieldPath"] as? String {
                        self.fieldPath = value
                    }
                }
            }
            public var fieldRef: UpdateContainerGroupRequest.InitContainer.EnvironmentVar.FieldRef?

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
                try self.fieldRef?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fieldRef != nil {
                    map["FieldRef"] = self.fieldRef?.toMap()
                }
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
                if let value = dict["FieldRef"] as? [String: Any?] {
                    var model = UpdateContainerGroupRequest.InitContainer.EnvironmentVar.FieldRef()
                    model.fromMap(value)
                    self.fieldRef = model
                }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public class Port : Tea.TeaModel {
            public var port: Int32?

            public var protocol_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
            }
        }
        public class VolumeMount : Tea.TeaModel {
            public var mountPath: String?

            public var mountPropagation: String?

            public var name: String?

            public var readOnly: Bool?

            public var subPath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mountPath != nil {
                    map["MountPath"] = self.mountPath!
                }
                if self.mountPropagation != nil {
                    map["MountPropagation"] = self.mountPropagation!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.readOnly != nil {
                    map["ReadOnly"] = self.readOnly!
                }
                if self.subPath != nil {
                    map["SubPath"] = self.subPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MountPath"] as? String {
                    self.mountPath = value
                }
                if let value = dict["MountPropagation"] as? String {
                    self.mountPropagation = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ReadOnly"] as? Bool {
                    self.readOnly = value
                }
                if let value = dict["SubPath"] as? String {
                    self.subPath = value
                }
            }
        }
        public var securityContext: UpdateContainerGroupRequest.InitContainer.SecurityContext?

        public var arg: [String]?

        public var command: [String]?

        public var cpu: Double?

        public var environmentVar: [UpdateContainerGroupRequest.InitContainer.EnvironmentVar]?

        public var gpu: Int32?

        public var image: String?

        public var imagePullPolicy: String?

        public var memory: Double?

        public var name: String?

        public var port: [UpdateContainerGroupRequest.InitContainer.Port]?

        public var stdin: Bool?

        public var stdinOnce: Bool?

        public var tty: Bool?

        public var volumeMount: [UpdateContainerGroupRequest.InitContainer.VolumeMount]?

        public var workingDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.securityContext?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityContext != nil {
                map["SecurityContext"] = self.securityContext?.toMap()
            }
            if self.arg != nil {
                map["Arg"] = self.arg!
            }
            if self.command != nil {
                map["Command"] = self.command!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.environmentVar != nil {
                var tmp : [Any] = []
                for k in self.environmentVar! {
                    tmp.append(k.toMap())
                }
                map["EnvironmentVar"] = tmp
            }
            if self.gpu != nil {
                map["Gpu"] = self.gpu!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.imagePullPolicy != nil {
                map["ImagePullPolicy"] = self.imagePullPolicy!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.port != nil {
                var tmp : [Any] = []
                for k in self.port! {
                    tmp.append(k.toMap())
                }
                map["Port"] = tmp
            }
            if self.stdin != nil {
                map["Stdin"] = self.stdin!
            }
            if self.stdinOnce != nil {
                map["StdinOnce"] = self.stdinOnce!
            }
            if self.tty != nil {
                map["Tty"] = self.tty!
            }
            if self.volumeMount != nil {
                var tmp : [Any] = []
                for k in self.volumeMount! {
                    tmp.append(k.toMap())
                }
                map["VolumeMount"] = tmp
            }
            if self.workingDir != nil {
                map["WorkingDir"] = self.workingDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecurityContext"] as? [String: Any?] {
                var model = UpdateContainerGroupRequest.InitContainer.SecurityContext()
                model.fromMap(value)
                self.securityContext = model
            }
            if let value = dict["Arg"] as? [String] {
                self.arg = value
            }
            if let value = dict["Command"] as? [String] {
                self.command = value
            }
            if let value = dict["Cpu"] as? Double {
                self.cpu = value
            }
            if let value = dict["EnvironmentVar"] as? [Any?] {
                var tmp : [UpdateContainerGroupRequest.InitContainer.EnvironmentVar] = []
                for v in value {
                    if v != nil {
                        var model = UpdateContainerGroupRequest.InitContainer.EnvironmentVar()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.environmentVar = tmp
            }
            if let value = dict["Gpu"] as? Int32 {
                self.gpu = value
            }
            if let value = dict["Image"] as? String {
                self.image = value
            }
            if let value = dict["ImagePullPolicy"] as? String {
                self.imagePullPolicy = value
            }
            if let value = dict["Memory"] as? Double {
                self.memory = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Port"] as? [Any?] {
                var tmp : [UpdateContainerGroupRequest.InitContainer.Port] = []
                for v in value {
                    if v != nil {
                        var model = UpdateContainerGroupRequest.InitContainer.Port()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.port = tmp
            }
            if let value = dict["Stdin"] as? Bool {
                self.stdin = value
            }
            if let value = dict["StdinOnce"] as? Bool {
                self.stdinOnce = value
            }
            if let value = dict["Tty"] as? Bool {
                self.tty = value
            }
            if let value = dict["VolumeMount"] as? [Any?] {
                var tmp : [UpdateContainerGroupRequest.InitContainer.VolumeMount] = []
                for v in value {
                    if v != nil {
                        var model = UpdateContainerGroupRequest.InitContainer.VolumeMount()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.volumeMount = tmp
            }
            if let value = dict["WorkingDir"] as? String {
                self.workingDir = value
            }
        }
    }
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
    public class Volume : Tea.TeaModel {
        public class ConfigFileVolume : Tea.TeaModel {
            public class ConfigFileToPath : Tea.TeaModel {
                public var content: String?

                public var path: String?

                public override init() {
                    super.init()
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
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                }
            }
            public var configFileToPath: [UpdateContainerGroupRequest.Volume.ConfigFileVolume.ConfigFileToPath]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configFileToPath != nil {
                    var tmp : [Any] = []
                    for k in self.configFileToPath! {
                        tmp.append(k.toMap())
                    }
                    map["ConfigFileToPath"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfigFileToPath"] as? [Any?] {
                    var tmp : [UpdateContainerGroupRequest.Volume.ConfigFileVolume.ConfigFileToPath] = []
                    for v in value {
                        if v != nil {
                            var model = UpdateContainerGroupRequest.Volume.ConfigFileVolume.ConfigFileToPath()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.configFileToPath = tmp
                }
            }
        }
        public class EmptyDirVolume : Tea.TeaModel {
            public var medium: String?

            public var sizeLimit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.medium != nil {
                    map["Medium"] = self.medium!
                }
                if self.sizeLimit != nil {
                    map["SizeLimit"] = self.sizeLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Medium"] as? String {
                    self.medium = value
                }
                if let value = dict["SizeLimit"] as? String {
                    self.sizeLimit = value
                }
            }
        }
        public class FlexVolume : Tea.TeaModel {
            public var driver: String?

            public var fsType: String?

            public var options: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.driver != nil {
                    map["Driver"] = self.driver!
                }
                if self.fsType != nil {
                    map["FsType"] = self.fsType!
                }
                if self.options != nil {
                    map["Options"] = self.options!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Driver"] as? String {
                    self.driver = value
                }
                if let value = dict["FsType"] as? String {
                    self.fsType = value
                }
                if let value = dict["Options"] as? String {
                    self.options = value
                }
            }
        }
        public class HostPathVolume : Tea.TeaModel {
            public var path: String?

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
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Path"] as? String {
                    self.path = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class NFSVolume : Tea.TeaModel {
            public var path: String?

            public var readOnly: Bool?

            public var server: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.path != nil {
                    map["Path"] = self.path!
                }
                if self.readOnly != nil {
                    map["ReadOnly"] = self.readOnly!
                }
                if self.server != nil {
                    map["Server"] = self.server!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Path"] as? String {
                    self.path = value
                }
                if let value = dict["ReadOnly"] as? Bool {
                    self.readOnly = value
                }
                if let value = dict["Server"] as? String {
                    self.server = value
                }
            }
        }
        public var configFileVolume: UpdateContainerGroupRequest.Volume.ConfigFileVolume?

        public var emptyDirVolume: UpdateContainerGroupRequest.Volume.EmptyDirVolume?

        public var flexVolume: UpdateContainerGroupRequest.Volume.FlexVolume?

        public var hostPathVolume: UpdateContainerGroupRequest.Volume.HostPathVolume?

        public var NFSVolume: UpdateContainerGroupRequest.Volume.NFSVolume?

        public var name: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.configFileVolume?.validate()
            try self.emptyDirVolume?.validate()
            try self.flexVolume?.validate()
            try self.hostPathVolume?.validate()
            try self.NFSVolume?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configFileVolume != nil {
                map["ConfigFileVolume"] = self.configFileVolume?.toMap()
            }
            if self.emptyDirVolume != nil {
                map["EmptyDirVolume"] = self.emptyDirVolume?.toMap()
            }
            if self.flexVolume != nil {
                map["FlexVolume"] = self.flexVolume?.toMap()
            }
            if self.hostPathVolume != nil {
                map["HostPathVolume"] = self.hostPathVolume?.toMap()
            }
            if self.NFSVolume != nil {
                map["NFSVolume"] = self.NFSVolume?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigFileVolume"] as? [String: Any?] {
                var model = UpdateContainerGroupRequest.Volume.ConfigFileVolume()
                model.fromMap(value)
                self.configFileVolume = model
            }
            if let value = dict["EmptyDirVolume"] as? [String: Any?] {
                var model = UpdateContainerGroupRequest.Volume.EmptyDirVolume()
                model.fromMap(value)
                self.emptyDirVolume = model
            }
            if let value = dict["FlexVolume"] as? [String: Any?] {
                var model = UpdateContainerGroupRequest.Volume.FlexVolume()
                model.fromMap(value)
                self.flexVolume = model
            }
            if let value = dict["HostPathVolume"] as? [String: Any?] {
                var model = UpdateContainerGroupRequest.Volume.HostPathVolume()
                model.fromMap(value)
                self.hostPathVolume = model
            }
            if let value = dict["NFSVolume"] as? [String: Any?] {
                var model = UpdateContainerGroupRequest.Volume.NFSVolume()
                model.fromMap(value)
                self.NFSVolume = model
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var dnsConfig: UpdateContainerGroupRequest.DnsConfig?

    public var acrRegistryInfo: [UpdateContainerGroupRequest.AcrRegistryInfo]?

    public var clientToken: String?

    public var container: [UpdateContainerGroupRequest.Container]?

    public var containerGroupId: String?

    public var cpu: Double?

    public var imageRegistryCredential: [UpdateContainerGroupRequest.ImageRegistryCredential]?

    public var initContainer: [UpdateContainerGroupRequest.InitContainer]?

    public var memory: Double?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var restartPolicy: String?

    public var tag: [UpdateContainerGroupRequest.Tag]?

    public var updateType: String?

    public var volume: [UpdateContainerGroupRequest.Volume]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dnsConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dnsConfig != nil {
            map["DnsConfig"] = self.dnsConfig?.toMap()
        }
        if self.acrRegistryInfo != nil {
            var tmp : [Any] = []
            for k in self.acrRegistryInfo! {
                tmp.append(k.toMap())
            }
            map["AcrRegistryInfo"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.container != nil {
            var tmp : [Any] = []
            for k in self.container! {
                tmp.append(k.toMap())
            }
            map["Container"] = tmp
        }
        if self.containerGroupId != nil {
            map["ContainerGroupId"] = self.containerGroupId!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.imageRegistryCredential != nil {
            var tmp : [Any] = []
            for k in self.imageRegistryCredential! {
                tmp.append(k.toMap())
            }
            map["ImageRegistryCredential"] = tmp
        }
        if self.initContainer != nil {
            var tmp : [Any] = []
            for k in self.initContainer! {
                tmp.append(k.toMap())
            }
            map["InitContainer"] = tmp
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.restartPolicy != nil {
            map["RestartPolicy"] = self.restartPolicy!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.updateType != nil {
            map["UpdateType"] = self.updateType!
        }
        if self.volume != nil {
            var tmp : [Any] = []
            for k in self.volume! {
                tmp.append(k.toMap())
            }
            map["Volume"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DnsConfig"] as? [String: Any?] {
            var model = UpdateContainerGroupRequest.DnsConfig()
            model.fromMap(value)
            self.dnsConfig = model
        }
        if let value = dict["AcrRegistryInfo"] as? [Any?] {
            var tmp : [UpdateContainerGroupRequest.AcrRegistryInfo] = []
            for v in value {
                if v != nil {
                    var model = UpdateContainerGroupRequest.AcrRegistryInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.acrRegistryInfo = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Container"] as? [Any?] {
            var tmp : [UpdateContainerGroupRequest.Container] = []
            for v in value {
                if v != nil {
                    var model = UpdateContainerGroupRequest.Container()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.container = tmp
        }
        if let value = dict["ContainerGroupId"] as? String {
            self.containerGroupId = value
        }
        if let value = dict["Cpu"] as? Double {
            self.cpu = value
        }
        if let value = dict["ImageRegistryCredential"] as? [Any?] {
            var tmp : [UpdateContainerGroupRequest.ImageRegistryCredential] = []
            for v in value {
                if v != nil {
                    var model = UpdateContainerGroupRequest.ImageRegistryCredential()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.imageRegistryCredential = tmp
        }
        if let value = dict["InitContainer"] as? [Any?] {
            var tmp : [UpdateContainerGroupRequest.InitContainer] = []
            for v in value {
                if v != nil {
                    var model = UpdateContainerGroupRequest.InitContainer()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.initContainer = tmp
        }
        if let value = dict["Memory"] as? Double {
            self.memory = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RestartPolicy"] as? String {
            self.restartPolicy = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [UpdateContainerGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = UpdateContainerGroupRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["UpdateType"] as? String {
            self.updateType = value
        }
        if let value = dict["Volume"] as? [Any?] {
            var tmp : [UpdateContainerGroupRequest.Volume] = []
            for v in value {
                if v != nil {
                    var model = UpdateContainerGroupRequest.Volume()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.volume = tmp
        }
    }
}

public class UpdateContainerGroupResponseBody : Tea.TeaModel {
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

public class UpdateContainerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateContainerGroupResponseBody?

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
            var model = UpdateContainerGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataCacheRequest : Tea.TeaModel {
    public class DataSource : Tea.TeaModel {
        public var options: [String: String]?

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
            if self.options != nil {
                map["Options"] = self.options!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Options"] as? [String: String] {
                self.options = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class EipCreateParam : Tea.TeaModel {
        public var bandwidth: Int32?

        public var commonBandwidthPackage: String?

        public var ISP: String?

        public var internetChargeType: String?

        public var publicIpAddressPoolId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.commonBandwidthPackage != nil {
                map["CommonBandwidthPackage"] = self.commonBandwidthPackage!
            }
            if self.ISP != nil {
                map["ISP"] = self.ISP!
            }
            if self.internetChargeType != nil {
                map["InternetChargeType"] = self.internetChargeType!
            }
            if self.publicIpAddressPoolId != nil {
                map["PublicIpAddressPoolId"] = self.publicIpAddressPoolId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bandwidth"] as? Int32 {
                self.bandwidth = value
            }
            if let value = dict["CommonBandwidthPackage"] as? String {
                self.commonBandwidthPackage = value
            }
            if let value = dict["ISP"] as? String {
                self.ISP = value
            }
            if let value = dict["InternetChargeType"] as? String {
                self.internetChargeType = value
            }
            if let value = dict["PublicIpAddressPoolId"] as? String {
                self.publicIpAddressPoolId = value
            }
        }
    }
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
    public var bucket: String?

    public var clientToken: String?

    public var dataCacheId: String?

    public var dataSource: UpdateDataCacheRequest.DataSource?

    public var eipCreateParam: UpdateDataCacheRequest.EipCreateParam?

    public var eipInstanceId: String?

    public var name: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var retentionDays: Int32?

    public var securityGroupId: String?

    public var size: Int32?

    public var tag: [UpdateDataCacheRequest.Tag]?

    public var vSwitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataSource?.validate()
        try self.eipCreateParam?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dataCacheId != nil {
            map["DataCacheId"] = self.dataCacheId!
        }
        if self.dataSource != nil {
            map["DataSource"] = self.dataSource?.toMap()
        }
        if self.eipCreateParam != nil {
            map["EipCreateParam"] = self.eipCreateParam?.toMap()
        }
        if self.eipInstanceId != nil {
            map["EipInstanceId"] = self.eipInstanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DataCacheId"] as? String {
            self.dataCacheId = value
        }
        if let value = dict["DataSource"] as? [String: Any?] {
            var model = UpdateDataCacheRequest.DataSource()
            model.fromMap(value)
            self.dataSource = model
        }
        if let value = dict["EipCreateParam"] as? [String: Any?] {
            var model = UpdateDataCacheRequest.EipCreateParam()
            model.fromMap(value)
            self.eipCreateParam = model
        }
        if let value = dict["EipInstanceId"] as? String {
            self.eipInstanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RetentionDays"] as? Int32 {
            self.retentionDays = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [UpdateDataCacheRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = UpdateDataCacheRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
    }
}

public class UpdateDataCacheResponseBody : Tea.TeaModel {
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

public class UpdateDataCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataCacheResponseBody?

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
            var model = UpdateDataCacheResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateImageCacheRequest : Tea.TeaModel {
    public class AcrRegistryInfo : Tea.TeaModel {
        public var domain: [String]?

        public var instanceId: String?

        public var instanceName: String?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? [String] {
                self.domain = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public class ImageRegistryCredential : Tea.TeaModel {
        public var password: String?

        public var server: String?

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
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.server != nil {
                map["Server"] = self.server!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Server"] as? String {
                self.server = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
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
    public var acrRegistryInfo: [UpdateImageCacheRequest.AcrRegistryInfo]?

    public var autoMatchImageCache: Bool?

    public var clientToken: String?

    public var eipInstanceId: String?

    public var eliminationStrategy: String?

    public var flash: Bool?

    public var flashCopyCount: Int32?

    public var image: [String]?

    public var imageCacheId: String?

    public var imageCacheName: String?

    public var imageCacheSize: Int32?

    public var imageRegistryCredential: [UpdateImageCacheRequest.ImageRegistryCredential]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var retentionDays: Int32?

    public var securityGroupId: String?

    public var standardCopyCount: Int32?

    public var tag: [UpdateImageCacheRequest.Tag]?

    public var vSwitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrRegistryInfo != nil {
            var tmp : [Any] = []
            for k in self.acrRegistryInfo! {
                tmp.append(k.toMap())
            }
            map["AcrRegistryInfo"] = tmp
        }
        if self.autoMatchImageCache != nil {
            map["AutoMatchImageCache"] = self.autoMatchImageCache!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.eipInstanceId != nil {
            map["EipInstanceId"] = self.eipInstanceId!
        }
        if self.eliminationStrategy != nil {
            map["EliminationStrategy"] = self.eliminationStrategy!
        }
        if self.flash != nil {
            map["Flash"] = self.flash!
        }
        if self.flashCopyCount != nil {
            map["FlashCopyCount"] = self.flashCopyCount!
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.imageCacheId != nil {
            map["ImageCacheId"] = self.imageCacheId!
        }
        if self.imageCacheName != nil {
            map["ImageCacheName"] = self.imageCacheName!
        }
        if self.imageCacheSize != nil {
            map["ImageCacheSize"] = self.imageCacheSize!
        }
        if self.imageRegistryCredential != nil {
            var tmp : [Any] = []
            for k in self.imageRegistryCredential! {
                tmp.append(k.toMap())
            }
            map["ImageRegistryCredential"] = tmp
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.retentionDays != nil {
            map["RetentionDays"] = self.retentionDays!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.standardCopyCount != nil {
            map["StandardCopyCount"] = self.standardCopyCount!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcrRegistryInfo"] as? [Any?] {
            var tmp : [UpdateImageCacheRequest.AcrRegistryInfo] = []
            for v in value {
                if v != nil {
                    var model = UpdateImageCacheRequest.AcrRegistryInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.acrRegistryInfo = tmp
        }
        if let value = dict["AutoMatchImageCache"] as? Bool {
            self.autoMatchImageCache = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["EipInstanceId"] as? String {
            self.eipInstanceId = value
        }
        if let value = dict["EliminationStrategy"] as? String {
            self.eliminationStrategy = value
        }
        if let value = dict["Flash"] as? Bool {
            self.flash = value
        }
        if let value = dict["FlashCopyCount"] as? Int32 {
            self.flashCopyCount = value
        }
        if let value = dict["Image"] as? [String] {
            self.image = value
        }
        if let value = dict["ImageCacheId"] as? String {
            self.imageCacheId = value
        }
        if let value = dict["ImageCacheName"] as? String {
            self.imageCacheName = value
        }
        if let value = dict["ImageCacheSize"] as? Int32 {
            self.imageCacheSize = value
        }
        if let value = dict["ImageRegistryCredential"] as? [Any?] {
            var tmp : [UpdateImageCacheRequest.ImageRegistryCredential] = []
            for v in value {
                if v != nil {
                    var model = UpdateImageCacheRequest.ImageRegistryCredential()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.imageRegistryCredential = tmp
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["RetentionDays"] as? Int32 {
            self.retentionDays = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["StandardCopyCount"] as? Int32 {
            self.standardCopyCount = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [UpdateImageCacheRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = UpdateImageCacheRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
    }
}

public class UpdateImageCacheResponseBody : Tea.TeaModel {
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

public class UpdateImageCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateImageCacheResponseBody?

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
            var model = UpdateImageCacheResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVirtualNodeRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var clusterDNS: String?

    public var clusterDomain: String?

    public var customResources: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [UpdateVirtualNodeRequest.Tag]?

    public var virtualNodeId: String?

    public var virtualNodeName: String?

    public override init() {
        super.init()
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
        if self.clusterDNS != nil {
            map["ClusterDNS"] = self.clusterDNS!
        }
        if self.clusterDomain != nil {
            map["ClusterDomain"] = self.clusterDomain!
        }
        if self.customResources != nil {
            map["CustomResources"] = self.customResources!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.virtualNodeId != nil {
            map["VirtualNodeId"] = self.virtualNodeId!
        }
        if self.virtualNodeName != nil {
            map["VirtualNodeName"] = self.virtualNodeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterDNS"] as? String {
            self.clusterDNS = value
        }
        if let value = dict["ClusterDomain"] as? String {
            self.clusterDomain = value
        }
        if let value = dict["CustomResources"] as? String {
            self.customResources = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [UpdateVirtualNodeRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = UpdateVirtualNodeRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VirtualNodeId"] as? String {
            self.virtualNodeId = value
        }
        if let value = dict["VirtualNodeName"] as? String {
            self.virtualNodeName = value
        }
    }
}

public class UpdateVirtualNodeResponseBody : Tea.TeaModel {
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

public class UpdateVirtualNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVirtualNodeResponseBody?

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
            var model = UpdateVirtualNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
