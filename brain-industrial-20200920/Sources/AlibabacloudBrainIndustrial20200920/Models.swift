import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActivateLicenseRequest : Tea.TeaModel {
    public var fingerprint: String?

    public var id: String?

    public var instanceId: String?

    public var orderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fingerprint != nil {
            map["Fingerprint"] = self.fingerprint!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Fingerprint"] as? String {
            self.fingerprint = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
    }
}

public class ActivateLicenseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ActivateRecord : Tea.TeaModel {
            public var activateTime: String?

            public var buyTime: String?

            public var duration: String?

            public var expireTime: String?

            public var licenseCode: String?

            public var orderId: String?

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
                if self.activateTime != nil {
                    map["ActivateTime"] = self.activateTime!
                }
                if self.buyTime != nil {
                    map["BuyTime"] = self.buyTime!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.licenseCode != nil {
                    map["LicenseCode"] = self.licenseCode!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActivateTime"] as? String {
                    self.activateTime = value
                }
                if let value = dict["BuyTime"] as? String {
                    self.buyTime = value
                }
                if let value = dict["Duration"] as? String {
                    self.duration = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["LicenseCode"] as? String {
                    self.licenseCode = value
                }
                if let value = dict["OrderId"] as? String {
                    self.orderId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var activateRecord: [ActivateLicenseResponseBody.Data.ActivateRecord]?

        public var activateTime: String?

        public var allDuration: String?

        public var applicableSpecs: String?

        public var buyTime: String?

        public var cpuLimit: Int32?

        public var description_: String?

        public var duration: String?

        public var effectTime: String?

        public var expireTime: String?

        public var fingerprint: String?

        public var id: String?

        public var instanceId: String?

        public var licenseCode: String?

        public var licenseSpecName: String?

        public var memoryLimit: Int32?

        public var status: String?

        public var unActivateAllDuration: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activateRecord != nil {
                var tmp : [Any] = []
                for k in self.activateRecord! {
                    tmp.append(k.toMap())
                }
                map["ActivateRecord"] = tmp
            }
            if self.activateTime != nil {
                map["ActivateTime"] = self.activateTime!
            }
            if self.allDuration != nil {
                map["AllDuration"] = self.allDuration!
            }
            if self.applicableSpecs != nil {
                map["ApplicableSpecs"] = self.applicableSpecs!
            }
            if self.buyTime != nil {
                map["BuyTime"] = self.buyTime!
            }
            if self.cpuLimit != nil {
                map["CpuLimit"] = self.cpuLimit!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.effectTime != nil {
                map["EffectTime"] = self.effectTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.fingerprint != nil {
                map["Fingerprint"] = self.fingerprint!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.licenseCode != nil {
                map["LicenseCode"] = self.licenseCode!
            }
            if self.licenseSpecName != nil {
                map["LicenseSpecName"] = self.licenseSpecName!
            }
            if self.memoryLimit != nil {
                map["MemoryLimit"] = self.memoryLimit!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.unActivateAllDuration != nil {
                map["UnActivateAllDuration"] = self.unActivateAllDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActivateRecord"] as? [Any?] {
                var tmp : [ActivateLicenseResponseBody.Data.ActivateRecord] = []
                for v in value {
                    if v != nil {
                        var model = ActivateLicenseResponseBody.Data.ActivateRecord()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.activateRecord = tmp
            }
            if let value = dict["ActivateTime"] as? String {
                self.activateTime = value
            }
            if let value = dict["AllDuration"] as? String {
                self.allDuration = value
            }
            if let value = dict["ApplicableSpecs"] as? String {
                self.applicableSpecs = value
            }
            if let value = dict["BuyTime"] as? String {
                self.buyTime = value
            }
            if let value = dict["CpuLimit"] as? Int32 {
                self.cpuLimit = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["EffectTime"] as? String {
                self.effectTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Fingerprint"] as? String {
                self.fingerprint = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LicenseCode"] as? String {
                self.licenseCode = value
            }
            if let value = dict["LicenseSpecName"] as? String {
                self.licenseSpecName = value
            }
            if let value = dict["MemoryLimit"] as? Int32 {
                self.memoryLimit = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UnActivateAllDuration"] as? String {
                self.unActivateAllDuration = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ActivateLicenseResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ActivateLicenseResponseBody.Data()
            model.fromMap(value)
            self.data = model
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
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class ActivateLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActivateLicenseResponseBody?

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
            var model = ActivateLicenseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AicsOpenApiInvokeRequest : Tea.TeaModel {
    public var jobId: String?

    public var nodeId: String?

    public var param: [String: Any]?

    public var serviceId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.param != nil {
            map["Param"] = self.param!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["Param"] as? [String: Any] {
            self.param = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class AicsOpenApiInvokeShrinkRequest : Tea.TeaModel {
    public var jobId: String?

    public var nodeId: String?

    public var paramShrink: String?

    public var serviceId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.nodeId != nil {
            map["NodeId"] = self.nodeId!
        }
        if self.paramShrink != nil {
            map["Param"] = self.paramShrink!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["NodeId"] as? String {
            self.nodeId = value
        }
        if let value = dict["Param"] as? String {
            self.paramShrink = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class AicsOpenApiInvokeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
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
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class AicsOpenApiInvokeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AicsOpenApiInvokeResponseBody?

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
            var model = AicsOpenApiInvokeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateEssOptJobRequest : Tea.TeaModel {
    public class ElecPrice : Tea.TeaModel {
        public var dataTime: String?

        public var price: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataTime != nil {
                map["DataTime"] = self.dataTime!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataTime"] as? String {
                self.dataTime = value
            }
            if let value = dict["Price"] as? String {
                self.price = value
            }
        }
    }
    public class GenPrice : Tea.TeaModel {
        public var dataTime: String?

        public var price: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataTime != nil {
                map["DataTime"] = self.dataTime!
            }
            if self.price != nil {
                map["Price"] = self.price!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataTime"] as? String {
                self.dataTime = value
            }
            if let value = dict["Price"] as? String {
                self.price = value
            }
        }
    }
    public class Location : Tea.TeaModel {
        public var altitude: Double?

        public var latitude: Double?

        public var longitude: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.altitude != nil {
                map["Altitude"] = self.altitude!
            }
            if self.latitude != nil {
                map["Latitude"] = self.latitude!
            }
            if self.longitude != nil {
                map["Longitude"] = self.longitude!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Altitude"] as? Double {
                self.altitude = value
            }
            if let value = dict["Latitude"] as? Double {
                self.latitude = value
            }
            if let value = dict["Longitude"] as? Double {
                self.longitude = value
            }
        }
    }
    public class SystemData : Tea.TeaModel {
        public var historyData: [[String: Any]]?

        public var systemId: String?

        public var systemParams: [String: Any]?

        public var systemType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.historyData != nil {
                map["HistoryData"] = self.historyData!
            }
            if self.systemId != nil {
                map["SystemId"] = self.systemId!
            }
            if self.systemParams != nil {
                map["SystemParams"] = self.systemParams!
            }
            if self.systemType != nil {
                map["SystemType"] = self.systemType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HistoryData"] as? [[String: Any]] {
                self.historyData = value
            }
            if let value = dict["SystemId"] as? String {
                self.systemId = value
            }
            if let value = dict["SystemParams"] as? [String: Any] {
                self.systemParams = value
            }
            if let value = dict["SystemType"] as? String {
                self.systemType = value
            }
        }
    }
    public var businessKey: String?

    public var duration: Int32?

    public var elecPrice: [CreateEssOptJobRequest.ElecPrice]?

    public var freq: String?

    public var genPrice: [CreateEssOptJobRequest.GenPrice]?

    public var location: CreateEssOptJobRequest.Location?

    public var modelVersion: String?

    public var runDate: String?

    public var systemData: [CreateEssOptJobRequest.SystemData]?

    public var timeZone: String?

    public var topoType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.location?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessKey != nil {
            map["BusinessKey"] = self.businessKey!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.elecPrice != nil {
            var tmp : [Any] = []
            for k in self.elecPrice! {
                tmp.append(k.toMap())
            }
            map["ElecPrice"] = tmp
        }
        if self.freq != nil {
            map["Freq"] = self.freq!
        }
        if self.genPrice != nil {
            var tmp : [Any] = []
            for k in self.genPrice! {
                tmp.append(k.toMap())
            }
            map["GenPrice"] = tmp
        }
        if self.location != nil {
            map["Location"] = self.location?.toMap()
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.runDate != nil {
            map["RunDate"] = self.runDate!
        }
        if self.systemData != nil {
            var tmp : [Any] = []
            for k in self.systemData! {
                tmp.append(k.toMap())
            }
            map["SystemData"] = tmp
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        if self.topoType != nil {
            map["TopoType"] = self.topoType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessKey"] as? String {
            self.businessKey = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["ElecPrice"] as? [Any?] {
            var tmp : [CreateEssOptJobRequest.ElecPrice] = []
            for v in value {
                if v != nil {
                    var model = CreateEssOptJobRequest.ElecPrice()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.elecPrice = tmp
        }
        if let value = dict["Freq"] as? String {
            self.freq = value
        }
        if let value = dict["GenPrice"] as? [Any?] {
            var tmp : [CreateEssOptJobRequest.GenPrice] = []
            for v in value {
                if v != nil {
                    var model = CreateEssOptJobRequest.GenPrice()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.genPrice = tmp
        }
        if let value = dict["Location"] as? [String: Any?] {
            var model = CreateEssOptJobRequest.Location()
            model.fromMap(value)
            self.location = model
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["RunDate"] as? String {
            self.runDate = value
        }
        if let value = dict["SystemData"] as? [Any?] {
            var tmp : [CreateEssOptJobRequest.SystemData] = []
            for v in value {
                if v != nil {
                    var model = CreateEssOptJobRequest.SystemData()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.systemData = tmp
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["TopoType"] as? String {
            self.topoType = value
        }
    }
}

public class CreateEssOptJobShrinkRequest : Tea.TeaModel {
    public var businessKey: String?

    public var duration: Int32?

    public var elecPriceShrink: String?

    public var freq: String?

    public var genPriceShrink: String?

    public var locationShrink: String?

    public var modelVersion: String?

    public var runDate: String?

    public var systemDataShrink: String?

    public var timeZone: String?

    public var topoType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessKey != nil {
            map["BusinessKey"] = self.businessKey!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.elecPriceShrink != nil {
            map["ElecPrice"] = self.elecPriceShrink!
        }
        if self.freq != nil {
            map["Freq"] = self.freq!
        }
        if self.genPriceShrink != nil {
            map["GenPrice"] = self.genPriceShrink!
        }
        if self.locationShrink != nil {
            map["Location"] = self.locationShrink!
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.runDate != nil {
            map["RunDate"] = self.runDate!
        }
        if self.systemDataShrink != nil {
            map["SystemData"] = self.systemDataShrink!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        if self.topoType != nil {
            map["TopoType"] = self.topoType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessKey"] as? String {
            self.businessKey = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["ElecPrice"] as? String {
            self.elecPriceShrink = value
        }
        if let value = dict["Freq"] as? String {
            self.freq = value
        }
        if let value = dict["GenPrice"] as? String {
            self.genPriceShrink = value
        }
        if let value = dict["Location"] as? String {
            self.locationShrink = value
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["RunDate"] as? String {
            self.runDate = value
        }
        if let value = dict["SystemData"] as? String {
            self.systemDataShrink = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["TopoType"] as? String {
            self.topoType = value
        }
    }
}

public class CreateEssOptJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Response : Tea.TeaModel {
            public var debugInfo: Any?

            public var jobType: String?

            public var result: Any?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.debugInfo != nil {
                    map["DebugInfo"] = self.debugInfo!
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DebugInfo"] as? Any {
                    self.debugInfo = value
                }
                if let value = dict["JobType"] as? String {
                    self.jobType = value
                }
                if let value = dict["Result"] as? Any {
                    self.result = value
                }
            }
        }
        public var completed: Bool?

        public var createTime: String?

        public var error: String?

        public var jobId: String?

        public var progress: Int32?

        public var response: CreateEssOptJobResponseBody.Data.Response?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.response?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completed != nil {
                map["Completed"] = self.completed!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.response != nil {
                map["Response"] = self.response?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Completed"] as? Bool {
                self.completed = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Error"] as? String {
                self.error = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["Response"] as? [String: Any?] {
                var model = CreateEssOptJobResponseBody.Data.Response()
                model.fromMap(value)
                self.response = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: CreateEssOptJobResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateEssOptJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class CreateEssOptJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEssOptJobResponseBody?

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
            var model = CreateEssOptJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLoadForecastByFileUrlJobRequest : Tea.TeaModel {
    public var businessKey: String?

    public var dataMode: String?

    public var deviceType: String?

    public var duration: Int32?

    public var forecastHorizon: String?

    public var freq: String?

    public var historyUrl: String?

    public var modelVersion: String?

    public var runDate: String?

    public var systemType: String?

    public var timeColumn: String?

    public var timeZone: String?

    public var valueColumn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessKey != nil {
            map["BusinessKey"] = self.businessKey!
        }
        if self.dataMode != nil {
            map["DataMode"] = self.dataMode!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.forecastHorizon != nil {
            map["ForecastHorizon"] = self.forecastHorizon!
        }
        if self.freq != nil {
            map["Freq"] = self.freq!
        }
        if self.historyUrl != nil {
            map["HistoryUrl"] = self.historyUrl!
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.runDate != nil {
            map["RunDate"] = self.runDate!
        }
        if self.systemType != nil {
            map["SystemType"] = self.systemType!
        }
        if self.timeColumn != nil {
            map["TimeColumn"] = self.timeColumn!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        if self.valueColumn != nil {
            map["ValueColumn"] = self.valueColumn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessKey"] as? String {
            self.businessKey = value
        }
        if let value = dict["DataMode"] as? String {
            self.dataMode = value
        }
        if let value = dict["DeviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["ForecastHorizon"] as? String {
            self.forecastHorizon = value
        }
        if let value = dict["Freq"] as? String {
            self.freq = value
        }
        if let value = dict["HistoryUrl"] as? String {
            self.historyUrl = value
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["RunDate"] as? String {
            self.runDate = value
        }
        if let value = dict["SystemType"] as? String {
            self.systemType = value
        }
        if let value = dict["TimeColumn"] as? String {
            self.timeColumn = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["ValueColumn"] as? String {
            self.valueColumn = value
        }
    }
}

public class CreateLoadForecastByFileUrlJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Response : Tea.TeaModel {
            public var debugInfo: Any?

            public var jobType: String?

            public var result: Any?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.debugInfo != nil {
                    map["DebugInfo"] = self.debugInfo!
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DebugInfo"] as? Any {
                    self.debugInfo = value
                }
                if let value = dict["JobType"] as? String {
                    self.jobType = value
                }
                if let value = dict["Result"] as? Any {
                    self.result = value
                }
            }
        }
        public var completed: Bool?

        public var createTime: String?

        public var error: String?

        public var jobId: String?

        public var progress: Int32?

        public var response: CreateLoadForecastByFileUrlJobResponseBody.Data.Response?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.response?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completed != nil {
                map["Completed"] = self.completed!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.response != nil {
                map["Response"] = self.response?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Completed"] as? Bool {
                self.completed = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Error"] as? String {
                self.error = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["Response"] as? [String: Any?] {
                var model = CreateLoadForecastByFileUrlJobResponseBody.Data.Response()
                model.fromMap(value)
                self.response = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: CreateLoadForecastByFileUrlJobResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateLoadForecastByFileUrlJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class CreateLoadForecastByFileUrlJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLoadForecastByFileUrlJobResponseBody?

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
            var model = CreateLoadForecastByFileUrlJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateLoadForecastJobRequest : Tea.TeaModel {
    public class HistoryData : Tea.TeaModel {
        public var runTime: String?

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
            if self.runTime != nil {
                map["RunTime"] = self.runTime!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RunTime"] as? String {
                self.runTime = value
            }
            if let value = dict["Value"] as? Double {
                self.value = value
            }
        }
    }
    public var businessKey: String?

    public var dataMode: String?

    public var deviceType: String?

    public var duration: Int32?

    public var forecastHorizon: String?

    public var freq: String?

    public var historyData: [CreateLoadForecastJobRequest.HistoryData]?

    public var modelVersion: String?

    public var runDate: String?

    public var systemType: String?

    public var timeZone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessKey != nil {
            map["BusinessKey"] = self.businessKey!
        }
        if self.dataMode != nil {
            map["DataMode"] = self.dataMode!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.forecastHorizon != nil {
            map["ForecastHorizon"] = self.forecastHorizon!
        }
        if self.freq != nil {
            map["Freq"] = self.freq!
        }
        if self.historyData != nil {
            var tmp : [Any] = []
            for k in self.historyData! {
                tmp.append(k.toMap())
            }
            map["HistoryData"] = tmp
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.runDate != nil {
            map["RunDate"] = self.runDate!
        }
        if self.systemType != nil {
            map["SystemType"] = self.systemType!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessKey"] as? String {
            self.businessKey = value
        }
        if let value = dict["DataMode"] as? String {
            self.dataMode = value
        }
        if let value = dict["DeviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["ForecastHorizon"] as? String {
            self.forecastHorizon = value
        }
        if let value = dict["Freq"] as? String {
            self.freq = value
        }
        if let value = dict["HistoryData"] as? [Any?] {
            var tmp : [CreateLoadForecastJobRequest.HistoryData] = []
            for v in value {
                if v != nil {
                    var model = CreateLoadForecastJobRequest.HistoryData()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.historyData = tmp
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["RunDate"] as? String {
            self.runDate = value
        }
        if let value = dict["SystemType"] as? String {
            self.systemType = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
    }
}

public class CreateLoadForecastJobShrinkRequest : Tea.TeaModel {
    public var businessKey: String?

    public var dataMode: String?

    public var deviceType: String?

    public var duration: Int32?

    public var forecastHorizon: String?

    public var freq: String?

    public var historyDataShrink: String?

    public var modelVersion: String?

    public var runDate: String?

    public var systemType: String?

    public var timeZone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessKey != nil {
            map["BusinessKey"] = self.businessKey!
        }
        if self.dataMode != nil {
            map["DataMode"] = self.dataMode!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.forecastHorizon != nil {
            map["ForecastHorizon"] = self.forecastHorizon!
        }
        if self.freq != nil {
            map["Freq"] = self.freq!
        }
        if self.historyDataShrink != nil {
            map["HistoryData"] = self.historyDataShrink!
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.runDate != nil {
            map["RunDate"] = self.runDate!
        }
        if self.systemType != nil {
            map["SystemType"] = self.systemType!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessKey"] as? String {
            self.businessKey = value
        }
        if let value = dict["DataMode"] as? String {
            self.dataMode = value
        }
        if let value = dict["DeviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["ForecastHorizon"] as? String {
            self.forecastHorizon = value
        }
        if let value = dict["Freq"] as? String {
            self.freq = value
        }
        if let value = dict["HistoryData"] as? String {
            self.historyDataShrink = value
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["RunDate"] as? String {
            self.runDate = value
        }
        if let value = dict["SystemType"] as? String {
            self.systemType = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
    }
}

public class CreateLoadForecastJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Response : Tea.TeaModel {
            public var debugInfo: Any?

            public var jobType: String?

            public var result: Any?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.debugInfo != nil {
                    map["DebugInfo"] = self.debugInfo!
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DebugInfo"] as? Any {
                    self.debugInfo = value
                }
                if let value = dict["JobType"] as? String {
                    self.jobType = value
                }
                if let value = dict["Result"] as? Any {
                    self.result = value
                }
            }
        }
        public var completed: Bool?

        public var createTime: String?

        public var error: String?

        public var jobId: String?

        public var progress: Int32?

        public var response: CreateLoadForecastJobResponseBody.Data.Response?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.response?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completed != nil {
                map["Completed"] = self.completed!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.response != nil {
                map["Response"] = self.response?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Completed"] as? Bool {
                self.completed = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Error"] as? String {
                self.error = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["Response"] as? [String: Any?] {
                var model = CreateLoadForecastJobResponseBody.Data.Response()
                model.fromMap(value)
                self.response = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: CreateLoadForecastJobResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateLoadForecastJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class CreateLoadForecastJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLoadForecastJobResponseBody?

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
            var model = CreateLoadForecastJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePowerForecastByFileUrlJobRequest : Tea.TeaModel {
    public class Location : Tea.TeaModel {
        public var altitude: Double?

        public var latitude: Double?

        public var longitude: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.altitude != nil {
                map["Altitude"] = self.altitude!
            }
            if self.latitude != nil {
                map["Latitude"] = self.latitude!
            }
            if self.longitude != nil {
                map["Longitude"] = self.longitude!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Altitude"] as? Double {
                self.altitude = value
            }
            if let value = dict["Latitude"] as? Double {
                self.latitude = value
            }
            if let value = dict["Longitude"] as? Double {
                self.longitude = value
            }
        }
    }
    public var businessKey: String?

    public var dataMode: String?

    public var deviceType: String?

    public var duration: Int32?

    public var forecastHorizon: String?

    public var freq: String?

    public var historyUrl: String?

    public var location: CreatePowerForecastByFileUrlJobRequest.Location?

    public var modelVersion: String?

    public var runDate: String?

    public var systemType: String?

    public var timeColumn: String?

    public var timeZone: String?

    public var valueColumn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.location?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessKey != nil {
            map["BusinessKey"] = self.businessKey!
        }
        if self.dataMode != nil {
            map["DataMode"] = self.dataMode!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.forecastHorizon != nil {
            map["ForecastHorizon"] = self.forecastHorizon!
        }
        if self.freq != nil {
            map["Freq"] = self.freq!
        }
        if self.historyUrl != nil {
            map["HistoryUrl"] = self.historyUrl!
        }
        if self.location != nil {
            map["Location"] = self.location?.toMap()
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.runDate != nil {
            map["RunDate"] = self.runDate!
        }
        if self.systemType != nil {
            map["SystemType"] = self.systemType!
        }
        if self.timeColumn != nil {
            map["TimeColumn"] = self.timeColumn!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        if self.valueColumn != nil {
            map["ValueColumn"] = self.valueColumn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessKey"] as? String {
            self.businessKey = value
        }
        if let value = dict["DataMode"] as? String {
            self.dataMode = value
        }
        if let value = dict["DeviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["ForecastHorizon"] as? String {
            self.forecastHorizon = value
        }
        if let value = dict["Freq"] as? String {
            self.freq = value
        }
        if let value = dict["HistoryUrl"] as? String {
            self.historyUrl = value
        }
        if let value = dict["Location"] as? [String: Any?] {
            var model = CreatePowerForecastByFileUrlJobRequest.Location()
            model.fromMap(value)
            self.location = model
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["RunDate"] as? String {
            self.runDate = value
        }
        if let value = dict["SystemType"] as? String {
            self.systemType = value
        }
        if let value = dict["TimeColumn"] as? String {
            self.timeColumn = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["ValueColumn"] as? String {
            self.valueColumn = value
        }
    }
}

public class CreatePowerForecastByFileUrlJobShrinkRequest : Tea.TeaModel {
    public var businessKey: String?

    public var dataMode: String?

    public var deviceType: String?

    public var duration: Int32?

    public var forecastHorizon: String?

    public var freq: String?

    public var historyUrl: String?

    public var locationShrink: String?

    public var modelVersion: String?

    public var runDate: String?

    public var systemType: String?

    public var timeColumn: String?

    public var timeZone: String?

    public var valueColumn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessKey != nil {
            map["BusinessKey"] = self.businessKey!
        }
        if self.dataMode != nil {
            map["DataMode"] = self.dataMode!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.forecastHorizon != nil {
            map["ForecastHorizon"] = self.forecastHorizon!
        }
        if self.freq != nil {
            map["Freq"] = self.freq!
        }
        if self.historyUrl != nil {
            map["HistoryUrl"] = self.historyUrl!
        }
        if self.locationShrink != nil {
            map["Location"] = self.locationShrink!
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.runDate != nil {
            map["RunDate"] = self.runDate!
        }
        if self.systemType != nil {
            map["SystemType"] = self.systemType!
        }
        if self.timeColumn != nil {
            map["TimeColumn"] = self.timeColumn!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        if self.valueColumn != nil {
            map["ValueColumn"] = self.valueColumn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessKey"] as? String {
            self.businessKey = value
        }
        if let value = dict["DataMode"] as? String {
            self.dataMode = value
        }
        if let value = dict["DeviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["ForecastHorizon"] as? String {
            self.forecastHorizon = value
        }
        if let value = dict["Freq"] as? String {
            self.freq = value
        }
        if let value = dict["HistoryUrl"] as? String {
            self.historyUrl = value
        }
        if let value = dict["Location"] as? String {
            self.locationShrink = value
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["RunDate"] as? String {
            self.runDate = value
        }
        if let value = dict["SystemType"] as? String {
            self.systemType = value
        }
        if let value = dict["TimeColumn"] as? String {
            self.timeColumn = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
        if let value = dict["ValueColumn"] as? String {
            self.valueColumn = value
        }
    }
}

public class CreatePowerForecastByFileUrlJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Response : Tea.TeaModel {
            public var debugInfo: Any?

            public var jobType: String?

            public var result: Any?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.debugInfo != nil {
                    map["DebugInfo"] = self.debugInfo!
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DebugInfo"] as? Any {
                    self.debugInfo = value
                }
                if let value = dict["JobType"] as? String {
                    self.jobType = value
                }
                if let value = dict["Result"] as? Any {
                    self.result = value
                }
            }
        }
        public var completed: Bool?

        public var createTime: String?

        public var error: String?

        public var jobId: String?

        public var progress: Int32?

        public var response: CreatePowerForecastByFileUrlJobResponseBody.Data.Response?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.response?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completed != nil {
                map["Completed"] = self.completed!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.response != nil {
                map["Response"] = self.response?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Completed"] as? Bool {
                self.completed = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Error"] as? String {
                self.error = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["Response"] as? [String: Any?] {
                var model = CreatePowerForecastByFileUrlJobResponseBody.Data.Response()
                model.fromMap(value)
                self.response = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: CreatePowerForecastByFileUrlJobResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreatePowerForecastByFileUrlJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class CreatePowerForecastByFileUrlJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePowerForecastByFileUrlJobResponseBody?

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
            var model = CreatePowerForecastByFileUrlJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePowerForecastJobRequest : Tea.TeaModel {
    public class HistoryData : Tea.TeaModel {
        public var runTime: String?

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
            if self.runTime != nil {
                map["RunTime"] = self.runTime!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RunTime"] as? String {
                self.runTime = value
            }
            if let value = dict["Value"] as? Double {
                self.value = value
            }
        }
    }
    public class Location : Tea.TeaModel {
        public var altitude: Double?

        public var latitude: Double?

        public var longitude: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.altitude != nil {
                map["Altitude"] = self.altitude!
            }
            if self.latitude != nil {
                map["Latitude"] = self.latitude!
            }
            if self.longitude != nil {
                map["Longitude"] = self.longitude!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Altitude"] as? Double {
                self.altitude = value
            }
            if let value = dict["Latitude"] as? Double {
                self.latitude = value
            }
            if let value = dict["Longitude"] as? Double {
                self.longitude = value
            }
        }
    }
    public var businessKey: String?

    public var dataMode: String?

    public var deviceType: String?

    public var duration: Int32?

    public var forecastHorizon: String?

    public var freq: String?

    public var historyData: [CreatePowerForecastJobRequest.HistoryData]?

    public var location: CreatePowerForecastJobRequest.Location?

    public var modelVersion: String?

    public var runDate: String?

    public var systemType: String?

    public var timeZone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.location?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessKey != nil {
            map["BusinessKey"] = self.businessKey!
        }
        if self.dataMode != nil {
            map["DataMode"] = self.dataMode!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.forecastHorizon != nil {
            map["ForecastHorizon"] = self.forecastHorizon!
        }
        if self.freq != nil {
            map["Freq"] = self.freq!
        }
        if self.historyData != nil {
            var tmp : [Any] = []
            for k in self.historyData! {
                tmp.append(k.toMap())
            }
            map["HistoryData"] = tmp
        }
        if self.location != nil {
            map["Location"] = self.location?.toMap()
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.runDate != nil {
            map["RunDate"] = self.runDate!
        }
        if self.systemType != nil {
            map["SystemType"] = self.systemType!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessKey"] as? String {
            self.businessKey = value
        }
        if let value = dict["DataMode"] as? String {
            self.dataMode = value
        }
        if let value = dict["DeviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["ForecastHorizon"] as? String {
            self.forecastHorizon = value
        }
        if let value = dict["Freq"] as? String {
            self.freq = value
        }
        if let value = dict["HistoryData"] as? [Any?] {
            var tmp : [CreatePowerForecastJobRequest.HistoryData] = []
            for v in value {
                if v != nil {
                    var model = CreatePowerForecastJobRequest.HistoryData()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.historyData = tmp
        }
        if let value = dict["Location"] as? [String: Any?] {
            var model = CreatePowerForecastJobRequest.Location()
            model.fromMap(value)
            self.location = model
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["RunDate"] as? String {
            self.runDate = value
        }
        if let value = dict["SystemType"] as? String {
            self.systemType = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
    }
}

public class CreatePowerForecastJobShrinkRequest : Tea.TeaModel {
    public var businessKey: String?

    public var dataMode: String?

    public var deviceType: String?

    public var duration: Int32?

    public var forecastHorizon: String?

    public var freq: String?

    public var historyDataShrink: String?

    public var locationShrink: String?

    public var modelVersion: String?

    public var runDate: String?

    public var systemType: String?

    public var timeZone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessKey != nil {
            map["BusinessKey"] = self.businessKey!
        }
        if self.dataMode != nil {
            map["DataMode"] = self.dataMode!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.forecastHorizon != nil {
            map["ForecastHorizon"] = self.forecastHorizon!
        }
        if self.freq != nil {
            map["Freq"] = self.freq!
        }
        if self.historyDataShrink != nil {
            map["HistoryData"] = self.historyDataShrink!
        }
        if self.locationShrink != nil {
            map["Location"] = self.locationShrink!
        }
        if self.modelVersion != nil {
            map["ModelVersion"] = self.modelVersion!
        }
        if self.runDate != nil {
            map["RunDate"] = self.runDate!
        }
        if self.systemType != nil {
            map["SystemType"] = self.systemType!
        }
        if self.timeZone != nil {
            map["TimeZone"] = self.timeZone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessKey"] as? String {
            self.businessKey = value
        }
        if let value = dict["DataMode"] as? String {
            self.dataMode = value
        }
        if let value = dict["DeviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["ForecastHorizon"] as? String {
            self.forecastHorizon = value
        }
        if let value = dict["Freq"] as? String {
            self.freq = value
        }
        if let value = dict["HistoryData"] as? String {
            self.historyDataShrink = value
        }
        if let value = dict["Location"] as? String {
            self.locationShrink = value
        }
        if let value = dict["ModelVersion"] as? String {
            self.modelVersion = value
        }
        if let value = dict["RunDate"] as? String {
            self.runDate = value
        }
        if let value = dict["SystemType"] as? String {
            self.systemType = value
        }
        if let value = dict["TimeZone"] as? String {
            self.timeZone = value
        }
    }
}

public class CreatePowerForecastJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Response : Tea.TeaModel {
            public var debugInfo: Any?

            public var jobType: String?

            public var result: Any?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.debugInfo != nil {
                    map["DebugInfo"] = self.debugInfo!
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DebugInfo"] as? Any {
                    self.debugInfo = value
                }
                if let value = dict["JobType"] as? String {
                    self.jobType = value
                }
                if let value = dict["Result"] as? Any {
                    self.result = value
                }
            }
        }
        public var completed: Bool?

        public var createTime: String?

        public var error: String?

        public var jobId: String?

        public var progress: Int32?

        public var response: CreatePowerForecastJobResponseBody.Data.Response?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.response?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completed != nil {
                map["Completed"] = self.completed!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.response != nil {
                map["Response"] = self.response?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Completed"] as? Bool {
                self.completed = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Error"] as? String {
                self.error = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["Response"] as? [String: Any?] {
                var model = CreatePowerForecastJobResponseBody.Data.Response()
                model.fromMap(value)
                self.response = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: CreatePowerForecastJobResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreatePowerForecastJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class CreatePowerForecastJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePowerForecastJobResponseBody?

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
            var model = CreatePowerForecastJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAivppAlgoJobRequest : Tea.TeaModel {
    public var jobId: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class GetAivppAlgoJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Response : Tea.TeaModel {
            public var debugInfo: Any?

            public var jobType: String?

            public var result: Any?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.debugInfo != nil {
                    map["DebugInfo"] = self.debugInfo!
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.result != nil {
                    map["Result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DebugInfo"] as? Any {
                    self.debugInfo = value
                }
                if let value = dict["JobType"] as? String {
                    self.jobType = value
                }
                if let value = dict["Result"] as? Any {
                    self.result = value
                }
            }
        }
        public var completed: Bool?

        public var createTime: String?

        public var error: String?

        public var jobId: String?

        public var progress: Int32?

        public var response: GetAivppAlgoJobResponseBody.Data.Response?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.response?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.completed != nil {
                map["Completed"] = self.completed!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.error != nil {
                map["Error"] = self.error!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.response != nil {
                map["Response"] = self.response?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Completed"] as? Bool {
                self.completed = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Error"] as? String {
                self.error = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Progress"] as? Int32 {
                self.progress = value
            }
            if let value = dict["Response"] as? [String: Any?] {
                var model = GetAivppAlgoJobResponseBody.Data.Response()
                model.fromMap(value)
                self.response = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: GetAivppAlgoJobResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetAivppAlgoJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class GetAivppAlgoJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAivppAlgoJobResponseBody?

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
            var model = GetAivppAlgoJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLicenseRequest : Tea.TeaModel {
    public var id: Int64?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetLicenseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ActivateRecord : Tea.TeaModel {
            public var activateTime: String?

            public var buyTime: String?

            public var duration: String?

            public var expireTime: String?

            public var licenseCode: String?

            public var orderId: String?

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
                if self.activateTime != nil {
                    map["ActivateTime"] = self.activateTime!
                }
                if self.buyTime != nil {
                    map["BuyTime"] = self.buyTime!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.licenseCode != nil {
                    map["LicenseCode"] = self.licenseCode!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActivateTime"] as? String {
                    self.activateTime = value
                }
                if let value = dict["BuyTime"] as? String {
                    self.buyTime = value
                }
                if let value = dict["Duration"] as? String {
                    self.duration = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["LicenseCode"] as? String {
                    self.licenseCode = value
                }
                if let value = dict["OrderId"] as? String {
                    self.orderId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var activateRecord: [GetLicenseResponseBody.Data.ActivateRecord]?

        public var activateTime: String?

        public var adaptiveMachine: String?

        public var allDuration: String?

        public var applicableSpecs: String?

        public var buyTime: String?

        public var cpuLimit: Int32?

        public var description_: String?

        public var duration: String?

        public var effectTime: String?

        public var expireTime: String?

        public var fingerprint: String?

        public var id: Int64?

        public var instanceId: String?

        public var licenseCode: String?

        public var licenseSpecCode: String?

        public var licenseSpecName: String?

        public var licenseSpecType: String?

        public var memoryLimit: Int32?

        public var proposal: String?

        public var status: String?

        public var unActivateAllDuration: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activateRecord != nil {
                var tmp : [Any] = []
                for k in self.activateRecord! {
                    tmp.append(k.toMap())
                }
                map["ActivateRecord"] = tmp
            }
            if self.activateTime != nil {
                map["ActivateTime"] = self.activateTime!
            }
            if self.adaptiveMachine != nil {
                map["AdaptiveMachine"] = self.adaptiveMachine!
            }
            if self.allDuration != nil {
                map["AllDuration"] = self.allDuration!
            }
            if self.applicableSpecs != nil {
                map["ApplicableSpecs"] = self.applicableSpecs!
            }
            if self.buyTime != nil {
                map["BuyTime"] = self.buyTime!
            }
            if self.cpuLimit != nil {
                map["CpuLimit"] = self.cpuLimit!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.effectTime != nil {
                map["EffectTime"] = self.effectTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.fingerprint != nil {
                map["Fingerprint"] = self.fingerprint!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.licenseCode != nil {
                map["LicenseCode"] = self.licenseCode!
            }
            if self.licenseSpecCode != nil {
                map["LicenseSpecCode"] = self.licenseSpecCode!
            }
            if self.licenseSpecName != nil {
                map["LicenseSpecName"] = self.licenseSpecName!
            }
            if self.licenseSpecType != nil {
                map["LicenseSpecType"] = self.licenseSpecType!
            }
            if self.memoryLimit != nil {
                map["MemoryLimit"] = self.memoryLimit!
            }
            if self.proposal != nil {
                map["Proposal"] = self.proposal!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.unActivateAllDuration != nil {
                map["UnActivateAllDuration"] = self.unActivateAllDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActivateRecord"] as? [Any?] {
                var tmp : [GetLicenseResponseBody.Data.ActivateRecord] = []
                for v in value {
                    if v != nil {
                        var model = GetLicenseResponseBody.Data.ActivateRecord()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.activateRecord = tmp
            }
            if let value = dict["ActivateTime"] as? String {
                self.activateTime = value
            }
            if let value = dict["AdaptiveMachine"] as? String {
                self.adaptiveMachine = value
            }
            if let value = dict["AllDuration"] as? String {
                self.allDuration = value
            }
            if let value = dict["ApplicableSpecs"] as? String {
                self.applicableSpecs = value
            }
            if let value = dict["BuyTime"] as? String {
                self.buyTime = value
            }
            if let value = dict["CpuLimit"] as? Int32 {
                self.cpuLimit = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["EffectTime"] as? String {
                self.effectTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Fingerprint"] as? String {
                self.fingerprint = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LicenseCode"] as? String {
                self.licenseCode = value
            }
            if let value = dict["LicenseSpecCode"] as? String {
                self.licenseSpecCode = value
            }
            if let value = dict["LicenseSpecName"] as? String {
                self.licenseSpecName = value
            }
            if let value = dict["LicenseSpecType"] as? String {
                self.licenseSpecType = value
            }
            if let value = dict["MemoryLimit"] as? Int32 {
                self.memoryLimit = value
            }
            if let value = dict["Proposal"] as? String {
                self.proposal = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UnActivateAllDuration"] as? String {
                self.unActivateAllDuration = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetLicenseResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetLicenseResponseBody.Data()
            model.fromMap(value)
            self.data = model
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
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class GetLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLicenseResponseBody?

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
            var model = GetLicenseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAivppResourcesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var maxResults: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
    }
}

public class ListAivppResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var detail: String?

        public var expireTime: String?

        public var instanceId: String?

        public var instanceType: String?

        public var leftQuantity: String?

        public var orderId: String?

        public var quantity: String?

        public var specification: String?

        public var startTime: String?

        public var status: String?

        public var userId: String?

        public override init() {
            super.init()
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
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.leftQuantity != nil {
                map["LeftQuantity"] = self.leftQuantity!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            if self.specification != nil {
                map["Specification"] = self.specification!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Detail"] as? String {
                self.detail = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["LeftQuantity"] as? String {
                self.leftQuantity = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["Quantity"] as? String {
                self.quantity = value
            }
            if let value = dict["Specification"] as? String {
                self.specification = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var data: [ListAivppResourcesResponseBody.Data]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

    public var requestId: String?

    public var success: String?

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
            var tmp : [ListAivppResourcesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListAivppResourcesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListAivppResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAivppResourcesResponseBody?

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
            var model = ListAivppResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListLicensesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var pageSize: Int32?

    public var queryStr: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryStr != nil {
            map["QueryStr"] = self.queryStr!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryStr"] as? String {
            self.queryStr = value
        }
    }
}

public class ListLicensesResponseBody : Tea.TeaModel {
    public class LicenseList : Tea.TeaModel {
        public var activateTime: String?

        public var adaptiveMachine: Int32?

        public var allDuration: String?

        public var buyTime: String?

        public var cpuLimit: Int32?

        public var description_: String?

        public var duration: String?

        public var effectTime: String?

        public var expireTime: String?

        public var id: String?

        public var instanceId: String?

        public var licenseSpecCode: String?

        public var licenseSpecName: String?

        public var licenseSpecType: String?

        public var memoryLimit: Int32?

        public var status: String?

        public var unActivateAllDuration: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activateTime != nil {
                map["ActivateTime"] = self.activateTime!
            }
            if self.adaptiveMachine != nil {
                map["AdaptiveMachine"] = self.adaptiveMachine!
            }
            if self.allDuration != nil {
                map["AllDuration"] = self.allDuration!
            }
            if self.buyTime != nil {
                map["BuyTime"] = self.buyTime!
            }
            if self.cpuLimit != nil {
                map["CpuLimit"] = self.cpuLimit!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.effectTime != nil {
                map["EffectTime"] = self.effectTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.licenseSpecCode != nil {
                map["LicenseSpecCode"] = self.licenseSpecCode!
            }
            if self.licenseSpecName != nil {
                map["LicenseSpecName"] = self.licenseSpecName!
            }
            if self.licenseSpecType != nil {
                map["LicenseSpecType"] = self.licenseSpecType!
            }
            if self.memoryLimit != nil {
                map["MemoryLimit"] = self.memoryLimit!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.unActivateAllDuration != nil {
                map["UnActivateAllDuration"] = self.unActivateAllDuration!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActivateTime"] as? String {
                self.activateTime = value
            }
            if let value = dict["AdaptiveMachine"] as? Int32 {
                self.adaptiveMachine = value
            }
            if let value = dict["AllDuration"] as? String {
                self.allDuration = value
            }
            if let value = dict["BuyTime"] as? String {
                self.buyTime = value
            }
            if let value = dict["CpuLimit"] as? Int32 {
                self.cpuLimit = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Duration"] as? String {
                self.duration = value
            }
            if let value = dict["EffectTime"] as? String {
                self.effectTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["LicenseSpecCode"] as? String {
                self.licenseSpecCode = value
            }
            if let value = dict["LicenseSpecName"] as? String {
                self.licenseSpecName = value
            }
            if let value = dict["LicenseSpecType"] as? String {
                self.licenseSpecType = value
            }
            if let value = dict["MemoryLimit"] as? Int32 {
                self.memoryLimit = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UnActivateAllDuration"] as? String {
                self.unActivateAllDuration = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var currentPage: Int32?

    public var httpStatusCode: Int32?

    public var licenseList: [ListLicensesResponseBody.LicenseList]?

    public var message: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int64?

    public var totalPage: String?

    public var totalPageCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.licenseList != nil {
            var tmp : [Any] = []
            for k in self.licenseList! {
                tmp.append(k.toMap())
            }
            map["LicenseList"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        if self.totalPageCount != nil {
            map["TotalPageCount"] = self.totalPageCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["LicenseList"] as? [Any?] {
            var tmp : [ListLicensesResponseBody.LicenseList] = []
            for v in value {
                if v != nil {
                    var model = ListLicensesResponseBody.LicenseList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.licenseList = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? String {
            self.totalPage = value
        }
        if let value = dict["TotalPageCount"] as? String {
            self.totalPageCount = value
        }
    }
}

public class ListLicensesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListLicensesResponseBody?

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
            var model = ListLicensesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserResourcesRequest : Tea.TeaModel {
    public var commodityCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommodityCode"] as? String {
            self.commodityCode = value
        }
    }
}

public class ListUserResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var chargeType: String?

        public var commodityCode: String?

        public var endDate: String?

        public var instanceId: String?

        public var region: String?

        public var startDate: String?

        public var status: String?

        public var statusMsg: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["chargeType"] = self.chargeType!
            }
            if self.commodityCode != nil {
                map["commodityCode"] = self.commodityCode!
            }
            if self.endDate != nil {
                map["endDate"] = self.endDate!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.region != nil {
                map["region"] = self.region!
            }
            if self.startDate != nil {
                map["startDate"] = self.startDate!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.statusMsg != nil {
                map["statusMsg"] = self.statusMsg!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["commodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["endDate"] as? String {
                self.endDate = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["region"] as? String {
                self.region = value
            }
            if let value = dict["startDate"] as? String {
                self.startDate = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["statusMsg"] as? String {
                self.statusMsg = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [ListUserResourcesResponseBody.Data]?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListUserResourcesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListUserResourcesResponseBody.Data()
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class ListUserResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserResourcesResponseBody?

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
            var model = ListUserResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateLicenseDescriptionRequest : Tea.TeaModel {
    public var description_: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class UpdateLicenseDescriptionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
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
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class UpdateLicenseDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLicenseDescriptionResponseBody?

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
            var model = UpdateLicenseDescriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
