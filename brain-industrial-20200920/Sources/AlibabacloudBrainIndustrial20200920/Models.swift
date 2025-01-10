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
