import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AttachKVCacheStoreRequest : Tea.TeaModel {
    public class Arns : Tea.TeaModel {
        public var assumeRoleFor: String?

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
            if self.assumeRoleFor != nil {
                map["AssumeRoleFor"] = self.assumeRoleFor!
            }
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
            if let value = dict["AssumeRoleFor"] as? String {
                self.assumeRoleFor = value
            }
            if let value = dict["RoleArn"] as? String {
                self.roleArn = value
            }
            if let value = dict["RoleType"] as? String {
                self.roleType = value
            }
        }
    }
    public class ResourceIds : Tea.TeaModel {
        public var kvcsId: String?

        public var vscId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kvcsId != nil {
                map["KvcsId"] = self.kvcsId!
            }
            if self.vscId != nil {
                map["VscId"] = self.vscId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["KvcsId"] as? String {
                self.kvcsId = value
            }
            if let value = dict["VscId"] as? String {
                self.vscId = value
            }
        }
    }
    public var arns: [AttachKVCacheStoreRequest.Arns]?

    public var clientToken: String?

    public var regionId: String?

    public var resourceIds: [AttachKVCacheStoreRequest.ResourceIds]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arns != nil {
            var tmp : [Any] = []
            for k in self.arns! {
                tmp.append(k.toMap())
            }
            map["Arns"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIds != nil {
            var tmp : [Any] = []
            for k in self.resourceIds! {
                tmp.append(k.toMap())
            }
            map["ResourceIds"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arns"] as? [Any?] {
            var tmp : [AttachKVCacheStoreRequest.Arns] = []
            for v in value {
                if v != nil {
                    var model = AttachKVCacheStoreRequest.Arns()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.arns = tmp
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceIds"] as? [Any?] {
            var tmp : [AttachKVCacheStoreRequest.ResourceIds] = []
            for v in value {
                if v != nil {
                    var model = AttachKVCacheStoreRequest.ResourceIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceIds = tmp
        }
    }
}

public class AttachKVCacheStoreResponseBody : Tea.TeaModel {
    public class AttachResults : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var kvcsId: String?

        public var status: String?

        public var vscId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.kvcsId != nil {
                map["KvcsId"] = self.kvcsId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vscId != nil {
                map["VscId"] = self.vscId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["KvcsId"] as? String {
                self.kvcsId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VscId"] as? String {
                self.vscId = value
            }
        }
    }
    public var attachResults: [AttachKVCacheStoreResponseBody.AttachResults]?

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
        if self.attachResults != nil {
            var tmp : [Any] = []
            for k in self.attachResults! {
                tmp.append(k.toMap())
            }
            map["AttachResults"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttachResults"] as? [Any?] {
            var tmp : [AttachKVCacheStoreResponseBody.AttachResults] = []
            for v in value {
                if v != nil {
                    var model = AttachKVCacheStoreResponseBody.AttachResults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attachResults = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AttachKVCacheStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachKVCacheStoreResponseBody?

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
            var model = AttachKVCacheStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKVCacheStoreRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var capacity: Int64?

    public var clientToken: String?

    public var description_: String?

    public var hpnZone: String?

    public var name: String?

    public var paymentType: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [CreateKVCacheStoreRequest.Tag]?

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
        if self.capacity != nil {
            map["Capacity"] = self.capacity!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.hpnZone != nil {
            map["HpnZone"] = self.hpnZone!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.paymentType != nil {
            map["PaymentType"] = self.paymentType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Capacity"] as? Int64 {
            self.capacity = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["HpnZone"] as? String {
            self.hpnZone = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PaymentType"] as? String {
            self.paymentType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateKVCacheStoreRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateKVCacheStoreRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateKVCacheStoreResponseBody : Tea.TeaModel {
    public var kvcsId: String?

    public var orderId: String?

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
        if self.kvcsId != nil {
            map["KvcsId"] = self.kvcsId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KvcsId"] as? String {
            self.kvcsId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateKVCacheStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKVCacheStoreResponseBody?

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
            var model = CreateKVCacheStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteKVCacheStoreRequest : Tea.TeaModel {
    public var kvcsId: String?

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
        if self.kvcsId != nil {
            map["KvcsId"] = self.kvcsId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KvcsId"] as? String {
            self.kvcsId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteKVCacheStoreResponseBody : Tea.TeaModel {
    public var kvcsId: String?

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
        if self.kvcsId != nil {
            map["KvcsId"] = self.kvcsId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KvcsId"] as? String {
            self.kvcsId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteKVCacheStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteKVCacheStoreResponseBody?

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
            var model = DeleteKVCacheStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["RegionEndpoint"] as? String {
                self.regionEndpoint = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
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

public class DescribeZonesRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeZonesResponseBody : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public var localName: String?

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
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var requestId: String?

    public var zones: [DescribeZonesResponseBody.Zones]?

    public override init() {
        super.init()
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
        if self.zones != nil {
            var tmp : [Any] = []
            for k in self.zones! {
                tmp.append(k.toMap())
            }
            map["Zones"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Zones"] as? [Any?] {
            var tmp : [DescribeZonesResponseBody.Zones] = []
            for v in value {
                if v != nil {
                    var model = DescribeZonesResponseBody.Zones()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.zones = tmp
        }
    }
}

public class DescribeZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeZonesResponseBody?

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
            var model = DescribeZonesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachKVCacheStoreRequest : Tea.TeaModel {
    public class ResourceIds : Tea.TeaModel {
        public var kvcsId: String?

        public var vscId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kvcsId != nil {
                map["KvcsId"] = self.kvcsId!
            }
            if self.vscId != nil {
                map["VscId"] = self.vscId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["KvcsId"] as? String {
                self.kvcsId = value
            }
            if let value = dict["VscId"] as? String {
                self.vscId = value
            }
        }
    }
    public var clientToken: String?

    public var regionId: String?

    public var resourceIds: [DetachKVCacheStoreRequest.ResourceIds]?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceIds != nil {
            var tmp : [Any] = []
            for k in self.resourceIds! {
                tmp.append(k.toMap())
            }
            map["ResourceIds"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceIds"] as? [Any?] {
            var tmp : [DetachKVCacheStoreRequest.ResourceIds] = []
            for v in value {
                if v != nil {
                    var model = DetachKVCacheStoreRequest.ResourceIds()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceIds = tmp
        }
    }
}

public class DetachKVCacheStoreResponseBody : Tea.TeaModel {
    public class DetachResults : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var kvcsId: String?

        public var status: String?

        public var vscId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.kvcsId != nil {
                map["KvcsId"] = self.kvcsId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vscId != nil {
                map["VscId"] = self.vscId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["KvcsId"] as? String {
                self.kvcsId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VscId"] as? String {
                self.vscId = value
            }
        }
    }
    public var detachResults: [DetachKVCacheStoreResponseBody.DetachResults]?

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
        if self.detachResults != nil {
            var tmp : [Any] = []
            for k in self.detachResults! {
                tmp.append(k.toMap())
            }
            map["DetachResults"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DetachResults"] as? [Any?] {
            var tmp : [DetachKVCacheStoreResponseBody.DetachResults] = []
            for v in value {
                if v != nil {
                    var model = DetachKVCacheStoreResponseBody.DetachResults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.detachResults = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetachKVCacheStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachKVCacheStoreResponseBody?

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
            var model = DetachKVCacheStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKVCacheStoreRequest : Tea.TeaModel {
    public var kvcsId: String?

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
        if self.kvcsId != nil {
            map["KvcsId"] = self.kvcsId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KvcsId"] as? String {
            self.kvcsId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetKVCacheStoreResponseBody : Tea.TeaModel {
    public class KvCacheStore : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var capacity: Int64?

        public var createTime: String?

        public var description_: String?

        public var extraStatus: String?

        public var hpnZone: String?

        public var kvcsId: String?

        public var mountPointId: String?

        public var name: String?

        public var paymentType: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var status: String?

        public var tags: [GetKVCacheStoreResponseBody.KvCacheStore.Tags]?

        public var type: String?

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
            if self.capacity != nil {
                map["Capacity"] = self.capacity!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.extraStatus != nil {
                map["ExtraStatus"] = self.extraStatus!
            }
            if self.hpnZone != nil {
                map["HpnZone"] = self.hpnZone!
            }
            if self.kvcsId != nil {
                map["KvcsId"] = self.kvcsId!
            }
            if self.mountPointId != nil {
                map["MountPointId"] = self.mountPointId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.paymentType != nil {
                map["PaymentType"] = self.paymentType!
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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Capacity"] as? Int64 {
                self.capacity = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExtraStatus"] as? String {
                self.extraStatus = value
            }
            if let value = dict["HpnZone"] as? String {
                self.hpnZone = value
            }
            if let value = dict["KvcsId"] as? String {
                self.kvcsId = value
            }
            if let value = dict["MountPointId"] as? String {
                self.mountPointId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PaymentType"] as? String {
                self.paymentType = value
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
                var tmp : [GetKVCacheStoreResponseBody.KvCacheStore.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetKVCacheStoreResponseBody.KvCacheStore.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var kvCacheStore: GetKVCacheStoreResponseBody.KvCacheStore?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.kvCacheStore?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.kvCacheStore != nil {
            map["KvCacheStore"] = self.kvCacheStore?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KvCacheStore"] as? [String: Any?] {
            var model = GetKVCacheStoreResponseBody.KvCacheStore()
            model.fromMap(value)
            self.kvCacheStore = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetKVCacheStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKVCacheStoreResponseBody?

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
            var model = GetKVCacheStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKVCacheStoreAttachInfoRequest : Tea.TeaModel {
    public var kvcsIds: [String]?

    public var maxResults: Int64?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.kvcsIds != nil {
            map["KvcsIds"] = self.kvcsIds!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KvcsIds"] as? [String] {
            self.kvcsIds = value
        }
        if let value = dict["MaxResults"] as? Int64 {
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListKVCacheStoreAttachInfoResponseBody : Tea.TeaModel {
    public class AttachInfos : Tea.TeaModel {
        public var attachedAt: String?

        public var capacity: Int64?

        public var kvcsId: String?

        public var mountPointId: String?

        public var regionId: String?

        public var status: String?

        public var type: String?

        public var vscId: String?

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
            if self.attachedAt != nil {
                map["AttachedAt"] = self.attachedAt!
            }
            if self.capacity != nil {
                map["Capacity"] = self.capacity!
            }
            if self.kvcsId != nil {
                map["KvcsId"] = self.kvcsId!
            }
            if self.mountPointId != nil {
                map["MountPointId"] = self.mountPointId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.vscId != nil {
                map["VscId"] = self.vscId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachedAt"] as? String {
                self.attachedAt = value
            }
            if let value = dict["Capacity"] as? Int64 {
                self.capacity = value
            }
            if let value = dict["KvcsId"] as? String {
                self.kvcsId = value
            }
            if let value = dict["MountPointId"] as? String {
                self.mountPointId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["VscId"] as? String {
                self.vscId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var attachInfos: [ListKVCacheStoreAttachInfoResponseBody.AttachInfos]?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.attachInfos != nil {
            var tmp : [Any] = []
            for k in self.attachInfos! {
                tmp.append(k.toMap())
            }
            map["AttachInfos"] = tmp
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
        if let value = dict["AttachInfos"] as? [Any?] {
            var tmp : [ListKVCacheStoreAttachInfoResponseBody.AttachInfos] = []
            for v in value {
                if v != nil {
                    var model = ListKVCacheStoreAttachInfoResponseBody.AttachInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attachInfos = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListKVCacheStoreAttachInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKVCacheStoreAttachInfoResponseBody?

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
            var model = ListKVCacheStoreAttachInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKVCacheStoreAvailableHpnZonesRequest : Tea.TeaModel {
    public var kvcsIds: [String]?

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
        if self.kvcsIds != nil {
            map["KvcsIds"] = self.kvcsIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KvcsIds"] as? [String] {
            self.kvcsIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListKVCacheStoreAvailableHpnZonesResponseBody : Tea.TeaModel {
    public class InstanceHpnZones : Tea.TeaModel {
        public class AvailableHpnZones : Tea.TeaModel {
            public var hpnZone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.hpnZone != nil {
                    map["HpnZone"] = self.hpnZone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HpnZone"] as? String {
                    self.hpnZone = value
                }
            }
        }
        public var availableHpnZones: [ListKVCacheStoreAvailableHpnZonesResponseBody.InstanceHpnZones.AvailableHpnZones]?

        public var kvcsId: String?

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
            if self.availableHpnZones != nil {
                var tmp : [Any] = []
                for k in self.availableHpnZones! {
                    tmp.append(k.toMap())
                }
                map["AvailableHpnZones"] = tmp
            }
            if self.kvcsId != nil {
                map["KvcsId"] = self.kvcsId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AvailableHpnZones"] as? [Any?] {
                var tmp : [ListKVCacheStoreAvailableHpnZonesResponseBody.InstanceHpnZones.AvailableHpnZones] = []
                for v in value {
                    if v != nil {
                        var model = ListKVCacheStoreAvailableHpnZonesResponseBody.InstanceHpnZones.AvailableHpnZones()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.availableHpnZones = tmp
            }
            if let value = dict["KvcsId"] as? String {
                self.kvcsId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var instanceHpnZones: [ListKVCacheStoreAvailableHpnZonesResponseBody.InstanceHpnZones]?

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
        if self.instanceHpnZones != nil {
            var tmp : [Any] = []
            for k in self.instanceHpnZones! {
                tmp.append(k.toMap())
            }
            map["InstanceHpnZones"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceHpnZones"] as? [Any?] {
            var tmp : [ListKVCacheStoreAvailableHpnZonesResponseBody.InstanceHpnZones] = []
            for v in value {
                if v != nil {
                    var model = ListKVCacheStoreAvailableHpnZonesResponseBody.InstanceHpnZones()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceHpnZones = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListKVCacheStoreAvailableHpnZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKVCacheStoreAvailableHpnZonesResponseBody?

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
            var model = ListKVCacheStoreAvailableHpnZonesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKVCacheStoresRequest : Tea.TeaModel {
    public var kvcsIds: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var status: String?

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
        if self.kvcsIds != nil {
            map["KvcsIds"] = self.kvcsIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KvcsIds"] as? String {
            self.kvcsIds = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class ListKVCacheStoresResponseBody : Tea.TeaModel {
    public class KVCacheStores : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var capacity: Int64?

        public var createTime: String?

        public var description_: String?

        public var extraStatus: String?

        public var hpnZone: String?

        public var kvcsId: String?

        public var mountPointId: String?

        public var name: String?

        public var paymentType: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var status: String?

        public var tags: [ListKVCacheStoresResponseBody.KVCacheStores.Tags]?

        public var type: String?

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
            if self.capacity != nil {
                map["Capacity"] = self.capacity!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.extraStatus != nil {
                map["ExtraStatus"] = self.extraStatus!
            }
            if self.hpnZone != nil {
                map["HpnZone"] = self.hpnZone!
            }
            if self.kvcsId != nil {
                map["KvcsId"] = self.kvcsId!
            }
            if self.mountPointId != nil {
                map["MountPointId"] = self.mountPointId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.paymentType != nil {
                map["PaymentType"] = self.paymentType!
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
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Capacity"] as? Int64 {
                self.capacity = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ExtraStatus"] as? String {
                self.extraStatus = value
            }
            if let value = dict["HpnZone"] as? String {
                self.hpnZone = value
            }
            if let value = dict["KvcsId"] as? String {
                self.kvcsId = value
            }
            if let value = dict["MountPointId"] as? String {
                self.mountPointId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PaymentType"] as? String {
                self.paymentType = value
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
                var tmp : [ListKVCacheStoresResponseBody.KVCacheStores.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListKVCacheStoresResponseBody.KVCacheStores.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var KVCacheStores: [ListKVCacheStoresResponseBody.KVCacheStores]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pageTotal: Int32?

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
        if self.KVCacheStores != nil {
            var tmp : [Any] = []
            for k in self.KVCacheStores! {
                tmp.append(k.toMap())
            }
            map["KVCacheStores"] = tmp
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
        if self.pageTotal != nil {
            map["PageTotal"] = self.pageTotal!
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
        if let value = dict["KVCacheStores"] as? [Any?] {
            var tmp : [ListKVCacheStoresResponseBody.KVCacheStores] = []
            for v in value {
                if v != nil {
                    var model = ListKVCacheStoresResponseBody.KVCacheStores()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.KVCacheStores = tmp
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
        if let value = dict["PageTotal"] as? Int32 {
            self.pageTotal = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListKVCacheStoresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKVCacheStoresResponseBody?

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
            var model = ListKVCacheStoresResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateKVCacheStoreRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var capacity: Int64?

    public var clientToken: String?

    public var description_: String?

    public var kvcsId: String?

    public var name: String?

    public var regionId: String?

    public var tag: [UpdateKVCacheStoreRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.capacity != nil {
            map["Capacity"] = self.capacity!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.kvcsId != nil {
            map["KvcsId"] = self.kvcsId!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if let value = dict["Capacity"] as? Int64 {
            self.capacity = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["KvcsId"] as? String {
            self.kvcsId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [UpdateKVCacheStoreRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = UpdateKVCacheStoreRequest.Tag()
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

public class UpdateKVCacheStoreResponseBody : Tea.TeaModel {
    public var kvcsId: String?

    public var orderId: String?

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
        if self.kvcsId != nil {
            map["KvcsId"] = self.kvcsId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KvcsId"] as? String {
            self.kvcsId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateKVCacheStoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateKVCacheStoreResponseBody?

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
            var model = UpdateKVCacheStoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
