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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Fingerprint") {
            self.fingerprint = dict["Fingerprint"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActivateTime") {
                    self.activateTime = dict["ActivateTime"] as! String
                }
                if dict.keys.contains("BuyTime") {
                    self.buyTime = dict["BuyTime"] as! String
                }
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("LicenseCode") {
                    self.licenseCode = dict["LicenseCode"] as! String
                }
                if dict.keys.contains("OrderId") {
                    self.orderId = dict["OrderId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActivateRecord") {
                var tmp : [ActivateLicenseResponseBody.Data.ActivateRecord] = []
                for v in dict["ActivateRecord"] as! [Any] {
                    var model = ActivateLicenseResponseBody.Data.ActivateRecord()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.activateRecord = tmp
            }
            if dict.keys.contains("ActivateTime") {
                self.activateTime = dict["ActivateTime"] as! String
            }
            if dict.keys.contains("AllDuration") {
                self.allDuration = dict["AllDuration"] as! String
            }
            if dict.keys.contains("ApplicableSpecs") {
                self.applicableSpecs = dict["ApplicableSpecs"] as! String
            }
            if dict.keys.contains("BuyTime") {
                self.buyTime = dict["BuyTime"] as! String
            }
            if dict.keys.contains("CpuLimit") {
                self.cpuLimit = dict["CpuLimit"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("EffectTime") {
                self.effectTime = dict["EffectTime"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Fingerprint") {
                self.fingerprint = dict["Fingerprint"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LicenseCode") {
                self.licenseCode = dict["LicenseCode"] as! String
            }
            if dict.keys.contains("LicenseSpecName") {
                self.licenseSpecName = dict["LicenseSpecName"] as! String
            }
            if dict.keys.contains("MemoryLimit") {
                self.memoryLimit = dict["MemoryLimit"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UnActivateAllDuration") {
                self.unActivateAllDuration = dict["UnActivateAllDuration"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = ActivateLicenseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ActivateLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataTime") {
                self.dataTime = dict["DataTime"] as! String
            }
            if dict.keys.contains("Price") {
                self.price = dict["Price"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataTime") {
                self.dataTime = dict["DataTime"] as! String
            }
            if dict.keys.contains("Price") {
                self.price = dict["Price"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Altitude") {
                self.altitude = dict["Altitude"] as! Double
            }
            if dict.keys.contains("Latitude") {
                self.latitude = dict["Latitude"] as! Double
            }
            if dict.keys.contains("Longitude") {
                self.longitude = dict["Longitude"] as! Double
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HistoryData") {
                self.historyData = dict["HistoryData"] as! [[String: Any]]
            }
            if dict.keys.contains("SystemId") {
                self.systemId = dict["SystemId"] as! String
            }
            if dict.keys.contains("SystemParams") {
                self.systemParams = dict["SystemParams"] as! [String: Any]
            }
            if dict.keys.contains("SystemType") {
                self.systemType = dict["SystemType"] as! String
            }
        }
    }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("ElecPrice") {
            var tmp : [CreateEssOptJobRequest.ElecPrice] = []
            for v in dict["ElecPrice"] as! [Any] {
                var model = CreateEssOptJobRequest.ElecPrice()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.elecPrice = tmp
        }
        if dict.keys.contains("Freq") {
            self.freq = dict["Freq"] as! String
        }
        if dict.keys.contains("GenPrice") {
            var tmp : [CreateEssOptJobRequest.GenPrice] = []
            for v in dict["GenPrice"] as! [Any] {
                var model = CreateEssOptJobRequest.GenPrice()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.genPrice = tmp
        }
        if dict.keys.contains("Location") {
            var model = CreateEssOptJobRequest.Location()
            model.fromMap(dict["Location"] as! [String: Any])
            self.location = model
        }
        if dict.keys.contains("ModelVersion") {
            self.modelVersion = dict["ModelVersion"] as! String
        }
        if dict.keys.contains("RunDate") {
            self.runDate = dict["RunDate"] as! String
        }
        if dict.keys.contains("SystemData") {
            var tmp : [CreateEssOptJobRequest.SystemData] = []
            for v in dict["SystemData"] as! [Any] {
                var model = CreateEssOptJobRequest.SystemData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.systemData = tmp
        }
        if dict.keys.contains("TimeZone") {
            self.timeZone = dict["TimeZone"] as! String
        }
        if dict.keys.contains("TopoType") {
            self.topoType = dict["TopoType"] as! String
        }
    }
}

public class CreateEssOptJobShrinkRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("ElecPrice") {
            self.elecPriceShrink = dict["ElecPrice"] as! String
        }
        if dict.keys.contains("Freq") {
            self.freq = dict["Freq"] as! String
        }
        if dict.keys.contains("GenPrice") {
            self.genPriceShrink = dict["GenPrice"] as! String
        }
        if dict.keys.contains("Location") {
            self.locationShrink = dict["Location"] as! String
        }
        if dict.keys.contains("ModelVersion") {
            self.modelVersion = dict["ModelVersion"] as! String
        }
        if dict.keys.contains("RunDate") {
            self.runDate = dict["RunDate"] as! String
        }
        if dict.keys.contains("SystemData") {
            self.systemDataShrink = dict["SystemData"] as! String
        }
        if dict.keys.contains("TimeZone") {
            self.timeZone = dict["TimeZone"] as! String
        }
        if dict.keys.contains("TopoType") {
            self.topoType = dict["TopoType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DebugInfo") {
                    self.debugInfo = dict["DebugInfo"] as! Any
                }
                if dict.keys.contains("JobType") {
                    self.jobType = dict["JobType"] as! String
                }
                if dict.keys.contains("Result") {
                    self.result = dict["Result"] as! Any
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Completed") {
                self.completed = dict["Completed"] as! Bool
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! Int32
            }
            if dict.keys.contains("Response") {
                var model = CreateEssOptJobResponseBody.Data.Response()
                model.fromMap(dict["Response"] as! [String: Any])
                self.response = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateEssOptJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateEssOptJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RunTime") {
                self.runTime = dict["RunTime"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! Double
            }
        }
    }
    public var deviceType: String?

    public var duration: Int32?

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
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceType") {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("Freq") {
            self.freq = dict["Freq"] as! String
        }
        if dict.keys.contains("HistoryData") {
            var tmp : [CreateLoadForecastJobRequest.HistoryData] = []
            for v in dict["HistoryData"] as! [Any] {
                var model = CreateLoadForecastJobRequest.HistoryData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.historyData = tmp
        }
        if dict.keys.contains("ModelVersion") {
            self.modelVersion = dict["ModelVersion"] as! String
        }
        if dict.keys.contains("RunDate") {
            self.runDate = dict["RunDate"] as! String
        }
        if dict.keys.contains("SystemType") {
            self.systemType = dict["SystemType"] as! String
        }
        if dict.keys.contains("TimeZone") {
            self.timeZone = dict["TimeZone"] as! String
        }
    }
}

public class CreateLoadForecastJobShrinkRequest : Tea.TeaModel {
    public var deviceType: String?

    public var duration: Int32?

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
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceType") {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("Freq") {
            self.freq = dict["Freq"] as! String
        }
        if dict.keys.contains("HistoryData") {
            self.historyDataShrink = dict["HistoryData"] as! String
        }
        if dict.keys.contains("ModelVersion") {
            self.modelVersion = dict["ModelVersion"] as! String
        }
        if dict.keys.contains("RunDate") {
            self.runDate = dict["RunDate"] as! String
        }
        if dict.keys.contains("SystemType") {
            self.systemType = dict["SystemType"] as! String
        }
        if dict.keys.contains("TimeZone") {
            self.timeZone = dict["TimeZone"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DebugInfo") {
                    self.debugInfo = dict["DebugInfo"] as! Any
                }
                if dict.keys.contains("JobType") {
                    self.jobType = dict["JobType"] as! String
                }
                if dict.keys.contains("Result") {
                    self.result = dict["Result"] as! Any
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Completed") {
                self.completed = dict["Completed"] as! Bool
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! Int32
            }
            if dict.keys.contains("Response") {
                var model = CreateLoadForecastJobResponseBody.Data.Response()
                model.fromMap(dict["Response"] as! [String: Any])
                self.response = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreateLoadForecastJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateLoadForecastJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RunTime") {
                self.runTime = dict["RunTime"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! Double
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Altitude") {
                self.altitude = dict["Altitude"] as! Double
            }
            if dict.keys.contains("Latitude") {
                self.latitude = dict["Latitude"] as! Double
            }
            if dict.keys.contains("Longitude") {
                self.longitude = dict["Longitude"] as! Double
            }
        }
    }
    public var deviceType: String?

    public var duration: Int32?

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
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceType") {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("Freq") {
            self.freq = dict["Freq"] as! String
        }
        if dict.keys.contains("HistoryData") {
            var tmp : [CreatePowerForecastJobRequest.HistoryData] = []
            for v in dict["HistoryData"] as! [Any] {
                var model = CreatePowerForecastJobRequest.HistoryData()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.historyData = tmp
        }
        if dict.keys.contains("Location") {
            var model = CreatePowerForecastJobRequest.Location()
            model.fromMap(dict["Location"] as! [String: Any])
            self.location = model
        }
        if dict.keys.contains("ModelVersion") {
            self.modelVersion = dict["ModelVersion"] as! String
        }
        if dict.keys.contains("RunDate") {
            self.runDate = dict["RunDate"] as! String
        }
        if dict.keys.contains("SystemType") {
            self.systemType = dict["SystemType"] as! String
        }
        if dict.keys.contains("TimeZone") {
            self.timeZone = dict["TimeZone"] as! String
        }
    }
}

public class CreatePowerForecastJobShrinkRequest : Tea.TeaModel {
    public var deviceType: String?

    public var duration: Int32?

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
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceType") {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("Freq") {
            self.freq = dict["Freq"] as! String
        }
        if dict.keys.contains("HistoryData") {
            self.historyDataShrink = dict["HistoryData"] as! String
        }
        if dict.keys.contains("Location") {
            self.locationShrink = dict["Location"] as! String
        }
        if dict.keys.contains("ModelVersion") {
            self.modelVersion = dict["ModelVersion"] as! String
        }
        if dict.keys.contains("RunDate") {
            self.runDate = dict["RunDate"] as! String
        }
        if dict.keys.contains("SystemType") {
            self.systemType = dict["SystemType"] as! String
        }
        if dict.keys.contains("TimeZone") {
            self.timeZone = dict["TimeZone"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DebugInfo") {
                    self.debugInfo = dict["DebugInfo"] as! Any
                }
                if dict.keys.contains("JobType") {
                    self.jobType = dict["JobType"] as! String
                }
                if dict.keys.contains("Result") {
                    self.result = dict["Result"] as! Any
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Completed") {
                self.completed = dict["Completed"] as! Bool
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! Int32
            }
            if dict.keys.contains("Response") {
                var model = CreatePowerForecastJobResponseBody.Data.Response()
                model.fromMap(dict["Response"] as! [String: Any])
                self.response = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CreatePowerForecastJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreatePowerForecastJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DebugInfo") {
                    self.debugInfo = dict["DebugInfo"] as! Any
                }
                if dict.keys.contains("JobType") {
                    self.jobType = dict["JobType"] as! String
                }
                if dict.keys.contains("Result") {
                    self.result = dict["Result"] as! Any
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Completed") {
                self.completed = dict["Completed"] as! Bool
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! Int32
            }
            if dict.keys.contains("Response") {
                var model = GetAivppAlgoJobResponseBody.Data.Response()
                model.fromMap(dict["Response"] as! [String: Any])
                self.response = model
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetAivppAlgoJobResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAivppAlgoJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActivateTime") {
                    self.activateTime = dict["ActivateTime"] as! String
                }
                if dict.keys.contains("BuyTime") {
                    self.buyTime = dict["BuyTime"] as! String
                }
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("LicenseCode") {
                    self.licenseCode = dict["LicenseCode"] as! String
                }
                if dict.keys.contains("OrderId") {
                    self.orderId = dict["OrderId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActivateRecord") {
                var tmp : [GetLicenseResponseBody.Data.ActivateRecord] = []
                for v in dict["ActivateRecord"] as! [Any] {
                    var model = GetLicenseResponseBody.Data.ActivateRecord()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.activateRecord = tmp
            }
            if dict.keys.contains("ActivateTime") {
                self.activateTime = dict["ActivateTime"] as! String
            }
            if dict.keys.contains("AdaptiveMachine") {
                self.adaptiveMachine = dict["AdaptiveMachine"] as! String
            }
            if dict.keys.contains("AllDuration") {
                self.allDuration = dict["AllDuration"] as! String
            }
            if dict.keys.contains("ApplicableSpecs") {
                self.applicableSpecs = dict["ApplicableSpecs"] as! String
            }
            if dict.keys.contains("BuyTime") {
                self.buyTime = dict["BuyTime"] as! String
            }
            if dict.keys.contains("CpuLimit") {
                self.cpuLimit = dict["CpuLimit"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("EffectTime") {
                self.effectTime = dict["EffectTime"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Fingerprint") {
                self.fingerprint = dict["Fingerprint"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LicenseCode") {
                self.licenseCode = dict["LicenseCode"] as! String
            }
            if dict.keys.contains("LicenseSpecCode") {
                self.licenseSpecCode = dict["LicenseSpecCode"] as! String
            }
            if dict.keys.contains("LicenseSpecName") {
                self.licenseSpecName = dict["LicenseSpecName"] as! String
            }
            if dict.keys.contains("LicenseSpecType") {
                self.licenseSpecType = dict["LicenseSpecType"] as! String
            }
            if dict.keys.contains("MemoryLimit") {
                self.memoryLimit = dict["MemoryLimit"] as! Int32
            }
            if dict.keys.contains("Proposal") {
                self.proposal = dict["Proposal"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UnActivateAllDuration") {
                self.unActivateAllDuration = dict["UnActivateAllDuration"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetLicenseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Detail") {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("LeftQuantity") {
                self.leftQuantity = dict["LeftQuantity"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("Quantity") {
                self.quantity = dict["Quantity"] as! String
            }
            if dict.keys.contains("Specification") {
                self.specification = dict["Specification"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListAivppResourcesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListAivppResourcesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAivppResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryStr") {
            self.queryStr = dict["QueryStr"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActivateTime") {
                self.activateTime = dict["ActivateTime"] as! String
            }
            if dict.keys.contains("AdaptiveMachine") {
                self.adaptiveMachine = dict["AdaptiveMachine"] as! Int32
            }
            if dict.keys.contains("AllDuration") {
                self.allDuration = dict["AllDuration"] as! String
            }
            if dict.keys.contains("BuyTime") {
                self.buyTime = dict["BuyTime"] as! String
            }
            if dict.keys.contains("CpuLimit") {
                self.cpuLimit = dict["CpuLimit"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! String
            }
            if dict.keys.contains("EffectTime") {
                self.effectTime = dict["EffectTime"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("LicenseSpecCode") {
                self.licenseSpecCode = dict["LicenseSpecCode"] as! String
            }
            if dict.keys.contains("LicenseSpecName") {
                self.licenseSpecName = dict["LicenseSpecName"] as! String
            }
            if dict.keys.contains("LicenseSpecType") {
                self.licenseSpecType = dict["LicenseSpecType"] as! String
            }
            if dict.keys.contains("MemoryLimit") {
                self.memoryLimit = dict["MemoryLimit"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UnActivateAllDuration") {
                self.unActivateAllDuration = dict["UnActivateAllDuration"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("LicenseList") {
            var tmp : [ListLicensesResponseBody.LicenseList] = []
            for v in dict["LicenseList"] as! [Any] {
                var model = ListLicensesResponseBody.LicenseList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.licenseList = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! String
        }
        if dict.keys.contains("TotalPageCount") {
            self.totalPageCount = dict["TotalPageCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListLicensesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommodityCode") {
            self.commodityCode = dict["CommodityCode"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chargeType") {
                self.chargeType = dict["chargeType"] as! String
            }
            if dict.keys.contains("commodityCode") {
                self.commodityCode = dict["commodityCode"] as! String
            }
            if dict.keys.contains("endDate") {
                self.endDate = dict["endDate"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("region") {
                self.region = dict["region"] as! String
            }
            if dict.keys.contains("startDate") {
                self.startDate = dict["startDate"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("statusMsg") {
                self.statusMsg = dict["statusMsg"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var tmp : [ListUserResourcesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListUserResourcesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListUserResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateLicenseDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
