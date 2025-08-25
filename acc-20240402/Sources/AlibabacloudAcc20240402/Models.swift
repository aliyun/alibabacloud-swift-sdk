import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CapacityResource : Tea.TeaModel {
    public var CPU: String?

    public var GPU: String?

    public var memory: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CPU != nil {
            map["CPU"] = self.CPU!
        }
        if self.GPU != nil {
            map["GPU"] = self.GPU!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CPU"] as? String {
            self.CPU = value
        }
        if let value = dict["GPU"] as? String {
            self.GPU = value
        }
        if let value = dict["Memory"] as? String {
            self.memory = value
        }
    }
}

public class CreateImageCacheRequest : Tea.TeaModel {
    public class AcrRegistryInfos : Tea.TeaModel {
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
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public class ImageRegistryCredentials : Tea.TeaModel {
        public var password: String?

        public var server: String?

        public var skipCertVerification: Bool?

        public var usePlainHttp: Bool?

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
            if self.skipCertVerification != nil {
                map["SkipCertVerification"] = self.skipCertVerification!
            }
            if self.usePlainHttp != nil {
                map["UsePlainHttp"] = self.usePlainHttp!
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
            if let value = dict["SkipCertVerification"] as? Bool {
                self.skipCertVerification = value
            }
            if let value = dict["UsePlainHttp"] as? Bool {
                self.usePlainHttp = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public class NetworkConfig : Tea.TeaModel {
        public class EipInstance : Tea.TeaModel {
            public var autoCreate: Bool?

            public var bandwidth: Int32?

            public var instanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoCreate != nil {
                    map["AutoCreate"] = self.autoCreate!
                }
                if self.bandwidth != nil {
                    map["Bandwidth"] = self.bandwidth!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoCreate"] as? Bool {
                    self.autoCreate = value
                }
                if let value = dict["Bandwidth"] as? Int32 {
                    self.bandwidth = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
            }
        }
        public var eipInstance: CreateImageCacheRequest.NetworkConfig.EipInstance?

        public var securityGroupId: String?

        public var vSwitchIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.eipInstance?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eipInstance != nil {
                map["EipInstance"] = self.eipInstance?.toMap()
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EipInstance"] as? [String: Any?] {
                var model = CreateImageCacheRequest.NetworkConfig.EipInstance()
                model.fromMap(value)
                self.eipInstance = model
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
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
    public var acrRegistryInfos: [CreateImageCacheRequest.AcrRegistryInfos]?

    public var clientToken: String?

    public var imageCacheName: String?

    public var imageRegistryCredentials: [CreateImageCacheRequest.ImageRegistryCredentials]?

    public var images: [String]?

    public var networkConfig: CreateImageCacheRequest.NetworkConfig?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [CreateImageCacheRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrRegistryInfos != nil {
            var tmp : [Any] = []
            for k in self.acrRegistryInfos! {
                tmp.append(k.toMap())
            }
            map["AcrRegistryInfos"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.imageCacheName != nil {
            map["ImageCacheName"] = self.imageCacheName!
        }
        if self.imageRegistryCredentials != nil {
            var tmp : [Any] = []
            for k in self.imageRegistryCredentials! {
                tmp.append(k.toMap())
            }
            map["ImageRegistryCredentials"] = tmp
        }
        if self.images != nil {
            map["Images"] = self.images!
        }
        if self.networkConfig != nil {
            map["NetworkConfig"] = self.networkConfig?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if let value = dict["AcrRegistryInfos"] as? [Any?] {
            var tmp : [CreateImageCacheRequest.AcrRegistryInfos] = []
            for v in value {
                if v != nil {
                    var model = CreateImageCacheRequest.AcrRegistryInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.acrRegistryInfos = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ImageCacheName"] as? String {
            self.imageCacheName = value
        }
        if let value = dict["ImageRegistryCredentials"] as? [Any?] {
            var tmp : [CreateImageCacheRequest.ImageRegistryCredentials] = []
            for v in value {
                if v != nil {
                    var model = CreateImageCacheRequest.ImageRegistryCredentials()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.imageRegistryCredentials = tmp
        }
        if let value = dict["Images"] as? [String] {
            self.images = value
        }
        if let value = dict["NetworkConfig"] as? [String: Any?] {
            var model = CreateImageCacheRequest.NetworkConfig()
            model.fromMap(value)
            self.networkConfig = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateImageCacheRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateImageCacheRequest.Tags()
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

public class CreateImageCacheShrinkRequest : Tea.TeaModel {
    public class AcrRegistryInfos : Tea.TeaModel {
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
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public class ImageRegistryCredentials : Tea.TeaModel {
        public var password: String?

        public var server: String?

        public var skipCertVerification: Bool?

        public var usePlainHttp: Bool?

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
            if self.skipCertVerification != nil {
                map["SkipCertVerification"] = self.skipCertVerification!
            }
            if self.usePlainHttp != nil {
                map["UsePlainHttp"] = self.usePlainHttp!
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
            if let value = dict["SkipCertVerification"] as? Bool {
                self.skipCertVerification = value
            }
            if let value = dict["UsePlainHttp"] as? Bool {
                self.usePlainHttp = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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
    public var acrRegistryInfos: [CreateImageCacheShrinkRequest.AcrRegistryInfos]?

    public var clientToken: String?

    public var imageCacheName: String?

    public var imageRegistryCredentials: [CreateImageCacheShrinkRequest.ImageRegistryCredentials]?

    public var images: [String]?

    public var networkConfigShrink: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tags: [CreateImageCacheShrinkRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acrRegistryInfos != nil {
            var tmp : [Any] = []
            for k in self.acrRegistryInfos! {
                tmp.append(k.toMap())
            }
            map["AcrRegistryInfos"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.imageCacheName != nil {
            map["ImageCacheName"] = self.imageCacheName!
        }
        if self.imageRegistryCredentials != nil {
            var tmp : [Any] = []
            for k in self.imageRegistryCredentials! {
                tmp.append(k.toMap())
            }
            map["ImageRegistryCredentials"] = tmp
        }
        if self.images != nil {
            map["Images"] = self.images!
        }
        if self.networkConfigShrink != nil {
            map["NetworkConfig"] = self.networkConfigShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if let value = dict["AcrRegistryInfos"] as? [Any?] {
            var tmp : [CreateImageCacheShrinkRequest.AcrRegistryInfos] = []
            for v in value {
                if v != nil {
                    var model = CreateImageCacheShrinkRequest.AcrRegistryInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.acrRegistryInfos = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ImageCacheName"] as? String {
            self.imageCacheName = value
        }
        if let value = dict["ImageRegistryCredentials"] as? [Any?] {
            var tmp : [CreateImageCacheShrinkRequest.ImageRegistryCredentials] = []
            for v in value {
                if v != nil {
                    var model = CreateImageCacheShrinkRequest.ImageRegistryCredentials()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.imageRegistryCredentials = tmp
        }
        if let value = dict["Images"] as? [String] {
            self.images = value
        }
        if let value = dict["NetworkConfig"] as? String {
            self.networkConfigShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateImageCacheShrinkRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateImageCacheShrinkRequest.Tags()
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

public class CreateImageCacheResponseBody : Tea.TeaModel {
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

public class DeleteImageCacheRequest : Tea.TeaModel {
    public var force: Bool?

    public var imageCacheId: String?

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
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.imageCacheId != nil {
            map["ImageCacheId"] = self.imageCacheId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Force"] as? Bool {
            self.force = value
        }
        if let value = dict["ImageCacheId"] as? String {
            self.imageCacheId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

public class GetImageCacheRequest : Tea.TeaModel {
    public var imageCacheId: String?

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
        if self.imageCacheId != nil {
            map["ImageCacheId"] = self.imageCacheId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageCacheId"] as? String {
            self.imageCacheId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetImageCacheResponseBody : Tea.TeaModel {
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
    public class NetworkConfig : Tea.TeaModel {
        public class EipInstance : Tea.TeaModel {
            public var autoCreate: Bool?

            public var bandwidth: Int32?

            public var instanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoCreate != nil {
                    map["AutoCreate"] = self.autoCreate!
                }
                if self.bandwidth != nil {
                    map["Bandwidth"] = self.bandwidth!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoCreate"] as? Bool {
                    self.autoCreate = value
                }
                if let value = dict["Bandwidth"] as? Int32 {
                    self.bandwidth = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
            }
        }
        public var eipInstance: GetImageCacheResponseBody.NetworkConfig.EipInstance?

        public var securityGroupId: String?

        public var vSwitchIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.eipInstance?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.eipInstance != nil {
                map["EipInstance"] = self.eipInstance?.toMap()
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EipInstance"] as? [String: Any?] {
                var model = GetImageCacheResponseBody.NetworkConfig.EipInstance()
                model.fromMap(value)
                self.eipInstance = model
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
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
    public var createTime: String?

    public var events: [GetImageCacheResponseBody.Events]?

    public var imageCacheId: String?

    public var imageCacheName: String?

    public var images: [String]?

    public var networkConfig: GetImageCacheResponseBody.NetworkConfig?

    public var paymentType: String?

    public var readyTime: String?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var size: Int32?

    public var status: String?

    public var tags: [GetImageCacheResponseBody.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.networkConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["Events"] = tmp
        }
        if self.imageCacheId != nil {
            map["ImageCacheId"] = self.imageCacheId!
        }
        if self.imageCacheName != nil {
            map["ImageCacheName"] = self.imageCacheName!
        }
        if self.images != nil {
            map["Images"] = self.images!
        }
        if self.networkConfig != nil {
            map["NetworkConfig"] = self.networkConfig?.toMap()
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.readyTime != nil {
            map["ReadyTime"] = self.readyTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.size != nil {
            map["Size"] = self.size!
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
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Events"] as? [Any?] {
            var tmp : [GetImageCacheResponseBody.Events] = []
            for v in value {
                if v != nil {
                    var model = GetImageCacheResponseBody.Events()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.events = tmp
        }
        if let value = dict["ImageCacheId"] as? String {
            self.imageCacheId = value
        }
        if let value = dict["ImageCacheName"] as? String {
            self.imageCacheName = value
        }
        if let value = dict["Images"] as? [String] {
            self.images = value
        }
        if let value = dict["NetworkConfig"] as? [String: Any?] {
            var model = GetImageCacheResponseBody.NetworkConfig()
            model.fromMap(value)
            self.networkConfig = model
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["ReadyTime"] as? String {
            self.readyTime = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Size"] as? Int32 {
            self.size = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetImageCacheResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetImageCacheResponseBody.Tags()
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

public class GetImageCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageCacheResponseBody?

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
            var model = GetImageCacheResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListImageCachesRequest : Tea.TeaModel {
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
    public var imageCacheName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var tags: [ListImageCachesRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageCacheName != nil {
            map["ImageCacheName"] = self.imageCacheName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
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
        if let value = dict["ImageCacheName"] as? String {
            self.imageCacheName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
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
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [ListImageCachesRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListImageCachesRequest.Tags()
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

public class ListImageCachesResponseBody : Tea.TeaModel {
    public class ImageCaches : Tea.TeaModel {
        public var createTime: String?

        public var imageCacheId: String?

        public var imageCacheName: String?

        public var images: [String]?

        public var readyTime: String?

        public var resourceGroupId: String?

        public var size: Int32?

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
            if self.imageCacheId != nil {
                map["ImageCacheId"] = self.imageCacheId!
            }
            if self.imageCacheName != nil {
                map["ImageCacheName"] = self.imageCacheName!
            }
            if self.images != nil {
                map["Images"] = self.images!
            }
            if self.readyTime != nil {
                map["ReadyTime"] = self.readyTime!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.size != nil {
                map["Size"] = self.size!
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
            if let value = dict["ImageCacheId"] as? String {
                self.imageCacheId = value
            }
            if let value = dict["ImageCacheName"] as? String {
                self.imageCacheName = value
            }
            if let value = dict["Images"] as? [String] {
                self.images = value
            }
            if let value = dict["ReadyTime"] as? String {
                self.readyTime = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var imageCaches: [ListImageCachesResponseBody.ImageCaches]?

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
        if self.imageCaches != nil {
            var tmp : [Any] = []
            for k in self.imageCaches! {
                tmp.append(k.toMap())
            }
            map["ImageCaches"] = tmp
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
        if let value = dict["ImageCaches"] as? [Any?] {
            var tmp : [ListImageCachesResponseBody.ImageCaches] = []
            for v in value {
                if v != nil {
                    var model = ListImageCachesResponseBody.ImageCaches()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.imageCaches = tmp
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

public class ListImageCachesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListImageCachesResponseBody?

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
            var model = ListImageCachesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
