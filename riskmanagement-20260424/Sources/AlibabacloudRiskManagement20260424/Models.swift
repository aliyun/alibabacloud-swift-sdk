import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BindAuthToMachineRequest : Tea.TeaModel {
    public class SdkRequest : Tea.TeaModel {
        public var authVersion: Int32?

        public var autoBind: Int32?

        public var bind: [String]?

        public var bindAll: Bool?

        public var criteria: String?

        public var isPreBind: Int32?

        public var logicalExp: String?

        public var ntmVersion: Int64?

        public var preBindOrderId: Int64?

        public var unBind: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authVersion != nil {
                map["AuthVersion"] = self.authVersion!
            }
            if self.autoBind != nil {
                map["AutoBind"] = self.autoBind!
            }
            if self.bind != nil {
                map["Bind"] = self.bind!
            }
            if self.bindAll != nil {
                map["BindAll"] = self.bindAll!
            }
            if self.criteria != nil {
                map["Criteria"] = self.criteria!
            }
            if self.isPreBind != nil {
                map["IsPreBind"] = self.isPreBind!
            }
            if self.logicalExp != nil {
                map["LogicalExp"] = self.logicalExp!
            }
            if self.ntmVersion != nil {
                map["NtmVersion"] = self.ntmVersion!
            }
            if self.preBindOrderId != nil {
                map["PreBindOrderId"] = self.preBindOrderId!
            }
            if self.unBind != nil {
                map["UnBind"] = self.unBind!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthVersion"] as? Int32 {
                self.authVersion = value
            }
            if let value = dict["AutoBind"] as? Int32 {
                self.autoBind = value
            }
            if let value = dict["Bind"] as? [String] {
                self.bind = value
            }
            if let value = dict["BindAll"] as? Bool {
                self.bindAll = value
            }
            if let value = dict["Criteria"] as? String {
                self.criteria = value
            }
            if let value = dict["IsPreBind"] as? Int32 {
                self.isPreBind = value
            }
            if let value = dict["LogicalExp"] as? String {
                self.logicalExp = value
            }
            if let value = dict["NtmVersion"] as? Int64 {
                self.ntmVersion = value
            }
            if let value = dict["PreBindOrderId"] as? Int64 {
                self.preBindOrderId = value
            }
            if let value = dict["UnBind"] as? [String] {
                self.unBind = value
            }
        }
    }
    public var regionId: String?

    public var sdkRequest: BindAuthToMachineRequest.SdkRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sdkRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sdkRequest != nil {
            map["SdkRequest"] = self.sdkRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? [String: Any?] {
            var model = BindAuthToMachineRequest.SdkRequest()
            model.fromMap(value)
            self.sdkRequest = model
        }
    }
}

public class BindAuthToMachineShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var sdkRequestShrink: String?

    public override init() {
        super.init()
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
        if self.sdkRequestShrink != nil {
            map["SdkRequest"] = self.sdkRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? String {
            self.sdkRequestShrink = value
        }
    }
}

public class BindAuthToMachineResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Body : Tea.TeaModel {
            public var bindCount: Int32?

            public var insufficientCoreCount: Int32?

            public var insufficientEcsCount: Int32?

            public var requestId: String?

            public var resultCode: Int32?

            public var unBindCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindCount != nil {
                    map["BindCount"] = self.bindCount!
                }
                if self.insufficientCoreCount != nil {
                    map["InsufficientCoreCount"] = self.insufficientCoreCount!
                }
                if self.insufficientEcsCount != nil {
                    map["InsufficientEcsCount"] = self.insufficientEcsCount!
                }
                if self.requestId != nil {
                    map["RequestId"] = self.requestId!
                }
                if self.resultCode != nil {
                    map["ResultCode"] = self.resultCode!
                }
                if self.unBindCount != nil {
                    map["UnBindCount"] = self.unBindCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BindCount"] as? Int32 {
                    self.bindCount = value
                }
                if let value = dict["InsufficientCoreCount"] as? Int32 {
                    self.insufficientCoreCount = value
                }
                if let value = dict["InsufficientEcsCount"] as? Int32 {
                    self.insufficientEcsCount = value
                }
                if let value = dict["RequestId"] as? String {
                    self.requestId = value
                }
                if let value = dict["ResultCode"] as? Int32 {
                    self.resultCode = value
                }
                if let value = dict["UnBindCount"] as? Int32 {
                    self.unBindCount = value
                }
            }
        }
        public var body: BindAuthToMachineResponseBody.Data.Body?

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
            if self.body != nil {
                map["Body"] = self.body?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Body"] as? [String: Any?] {
                var model = BindAuthToMachineResponseBody.Data.Body()
                model.fromMap(value)
                self.body = model
            }
        }
    }
    public var code: String?

    public var data: BindAuthToMachineResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = BindAuthToMachineResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BindAuthToMachineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindAuthToMachineResponseBody?

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
            var model = BindAuthToMachineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSasTrialRequest : Tea.TeaModel {
    public class SdkRequest : Tea.TeaModel {
        public class RequestForm : Tea.TeaModel {
            public var tryReason: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tryReason != nil {
                    map["TryReason"] = self.tryReason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TryReason"] as? String {
                    self.tryReason = value
                }
            }
        }
        public var fromEcs: Bool?

        public var lang: String?

        public var requestForm: CreateSasTrialRequest.SdkRequest.RequestForm?

        public var tryType: Int32?

        public var tryVersion: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.requestForm?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fromEcs != nil {
                map["FromEcs"] = self.fromEcs!
            }
            if self.lang != nil {
                map["Lang"] = self.lang!
            }
            if self.requestForm != nil {
                map["RequestForm"] = self.requestForm?.toMap()
            }
            if self.tryType != nil {
                map["TryType"] = self.tryType!
            }
            if self.tryVersion != nil {
                map["TryVersion"] = self.tryVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FromEcs"] as? Bool {
                self.fromEcs = value
            }
            if let value = dict["Lang"] as? String {
                self.lang = value
            }
            if let value = dict["RequestForm"] as? [String: Any?] {
                var model = CreateSasTrialRequest.SdkRequest.RequestForm()
                model.fromMap(value)
                self.requestForm = model
            }
            if let value = dict["TryType"] as? Int32 {
                self.tryType = value
            }
            if let value = dict["TryVersion"] as? Int32 {
                self.tryVersion = value
            }
        }
    }
    public var regionId: String?

    public var sdkRequest: CreateSasTrialRequest.SdkRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sdkRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sdkRequest != nil {
            map["SdkRequest"] = self.sdkRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? [String: Any?] {
            var model = CreateSasTrialRequest.SdkRequest()
            model.fromMap(value)
            self.sdkRequest = model
        }
    }
}

public class CreateSasTrialShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var sdkRequestShrink: String?

    public override init() {
        super.init()
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
        if self.sdkRequestShrink != nil {
            map["SdkRequest"] = self.sdkRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? String {
            self.sdkRequestShrink = value
        }
    }
}

public class CreateSasTrialResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Body : Tea.TeaModel {
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
        public var body: CreateSasTrialResponseBody.Data.Body?

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
            if self.body != nil {
                map["Body"] = self.body?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Body"] as? [String: Any?] {
                var model = CreateSasTrialResponseBody.Data.Body()
                model.fromMap(value)
                self.body = model
            }
        }
    }
    public var code: String?

    public var data: CreateSasTrialResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = CreateSasTrialResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateSasTrialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSasTrialResponseBody?

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
            var model = CreateSasTrialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceLinkedRoleRequest : Tea.TeaModel {
    public class SdkRequest : Tea.TeaModel {
        public var serviceLinkedRole: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceLinkedRole != nil {
                map["ServiceLinkedRole"] = self.serviceLinkedRole!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ServiceLinkedRole"] as? String {
                self.serviceLinkedRole = value
            }
        }
    }
    public var regionId: String?

    public var sdkRequest: CreateServiceLinkedRoleRequest.SdkRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sdkRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sdkRequest != nil {
            map["SdkRequest"] = self.sdkRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? [String: Any?] {
            var model = CreateServiceLinkedRoleRequest.SdkRequest()
            model.fromMap(value)
            self.sdkRequest = model
        }
    }
}

public class CreateServiceLinkedRoleShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var sdkRequestShrink: String?

    public override init() {
        super.init()
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
        if self.sdkRequestShrink != nil {
            map["SdkRequest"] = self.sdkRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? String {
            self.sdkRequestShrink = value
        }
    }
}

public class CreateServiceLinkedRoleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Body : Tea.TeaModel {
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
        public var body: CreateServiceLinkedRoleResponseBody.Data.Body?

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
            if self.body != nil {
                map["Body"] = self.body?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Body"] as? [String: Any?] {
                var model = CreateServiceLinkedRoleResponseBody.Data.Body()
                model.fromMap(value)
                self.body = model
            }
        }
    }
    public var code: String?

    public var data: CreateServiceLinkedRoleResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = CreateServiceLinkedRoleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateServiceLinkedRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceLinkedRoleResponseBody?

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
            var model = CreateServiceLinkedRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVirusScanOnceTaskRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ip: String?

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
        if self.ip != nil {
            map["Ip"] = self.ip!
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
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateVirusScanOnceTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var businessType: String?

        public var platform: String?

        public var requestId: String?

        public var selectionKey: Int32?

        public var targetType: String?

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
            if self.businessType != nil {
                map["BusinessType"] = self.businessType!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.selectionKey != nil {
                map["SelectionKey"] = self.selectionKey!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BusinessType"] as? String {
                self.businessType = value
            }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["SelectionKey"] as? Int32 {
                self.selectionKey = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var code: String?

    public var data: CreateVirusScanOnceTaskResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = CreateVirusScanOnceTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateVirusScanOnceTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVirusScanOnceTaskResponseBody?

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
            var model = CreateVirusScanOnceTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCloudCenterInstancesRequest : Tea.TeaModel {
    public class SdkRequest : Tea.TeaModel {
        public var criteria: String?

        public var currentPage: Int32?

        public var flags: String?

        public var importance: Int32?

        public var lang: String?

        public var logicalExp: String?

        public var machineTypes: String?

        public var nextToken: String?

        public var noGroupTrace: Bool?

        public var pageSize: String?

        public var resourceDirectoryAccountId: String?

        public var useNextToken: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.criteria != nil {
                map["Criteria"] = self.criteria!
            }
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.flags != nil {
                map["Flags"] = self.flags!
            }
            if self.importance != nil {
                map["Importance"] = self.importance!
            }
            if self.lang != nil {
                map["Lang"] = self.lang!
            }
            if self.logicalExp != nil {
                map["LogicalExp"] = self.logicalExp!
            }
            if self.machineTypes != nil {
                map["MachineTypes"] = self.machineTypes!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.noGroupTrace != nil {
                map["NoGroupTrace"] = self.noGroupTrace!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.resourceDirectoryAccountId != nil {
                map["ResourceDirectoryAccountId"] = self.resourceDirectoryAccountId!
            }
            if self.useNextToken != nil {
                map["UseNextToken"] = self.useNextToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Criteria"] as? String {
                self.criteria = value
            }
            if let value = dict["CurrentPage"] as? Int32 {
                self.currentPage = value
            }
            if let value = dict["Flags"] as? String {
                self.flags = value
            }
            if let value = dict["Importance"] as? Int32 {
                self.importance = value
            }
            if let value = dict["Lang"] as? String {
                self.lang = value
            }
            if let value = dict["LogicalExp"] as? String {
                self.logicalExp = value
            }
            if let value = dict["MachineTypes"] as? String {
                self.machineTypes = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["NoGroupTrace"] as? Bool {
                self.noGroupTrace = value
            }
            if let value = dict["PageSize"] as? String {
                self.pageSize = value
            }
            if let value = dict["ResourceDirectoryAccountId"] as? String {
                self.resourceDirectoryAccountId = value
            }
            if let value = dict["UseNextToken"] as? Bool {
                self.useNextToken = value
            }
        }
    }
    public var regionId: String?

    public var sdkRequest: DescribeCloudCenterInstancesRequest.SdkRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sdkRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sdkRequest != nil {
            map["SdkRequest"] = self.sdkRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? [String: Any?] {
            var model = DescribeCloudCenterInstancesRequest.SdkRequest()
            model.fromMap(value)
            self.sdkRequest = model
        }
    }
}

public class DescribeCloudCenterInstancesShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var sdkRequestShrink: String?

    public override init() {
        super.init()
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
        if self.sdkRequestShrink != nil {
            map["SdkRequest"] = self.sdkRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? String {
            self.sdkRequestShrink = value
        }
    }
}

public class DescribeCloudCenterInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Body : Tea.TeaModel {
            public class Instances : Tea.TeaModel {
                public var alarmStatus: String?

                public var appId: String?

                public var appName: String?

                public var assetType: String?

                public var assetTypeName: String?

                public var authModifyTime: Int64?

                public var authVersion: Int32?

                public var authVersionName: String?

                public var bind: Bool?

                public var bindFileProtectType: String?

                public var clientStatus: String?

                public var clientSubStatus: String?

                public var clusterId: String?

                public var clusterName: String?

                public var cores: Int32?

                public var cpuInfo: String?

                public var createdTime: Int64?

                public var exposedStatus: Int32?

                public var flag: Int32?

                public var flagName: String?

                public var groupId: Int64?

                public var groupTrace: String?

                public var hasContainer: String?

                public var hcStatus: String?

                public var healthCheckCount: Int32?

                public var importance: Int32?

                public var instanceId: String?

                public var instanceName: String?

                public var internetIp: String?

                public var intranetIp: String?

                public var ip: String?

                public var ipListString: String?

                public var kernel: String?

                public var lastLoginTimestamp: Int64?

                public var macListString: String?

                public var mem: String?

                public var namespace: String?

                public var os: String?

                public var osName: String?

                public var podCount: Int32?

                public var postPaidFlag: Int32?

                public var region: String?

                public var regionId: String?

                public var regionName: String?

                public var riskCount: String?

                public var riskStatus: String?

                public var safeEventCount: String?

                public var serviceId: String?

                public var status: String?

                public var tag: String?

                public var tagId: String?

                public var tagResources: String?

                public var uuid: String?

                public var vendor: Int32?

                public var vendorName: String?

                public var vendorUid: String?

                public var vendorUserName: String?

                public var vpcInstanceId: String?

                public var vulCount: Int32?

                public var vulStatus: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.alarmStatus != nil {
                        map["AlarmStatus"] = self.alarmStatus!
                    }
                    if self.appId != nil {
                        map["AppId"] = self.appId!
                    }
                    if self.appName != nil {
                        map["AppName"] = self.appName!
                    }
                    if self.assetType != nil {
                        map["AssetType"] = self.assetType!
                    }
                    if self.assetTypeName != nil {
                        map["AssetTypeName"] = self.assetTypeName!
                    }
                    if self.authModifyTime != nil {
                        map["AuthModifyTime"] = self.authModifyTime!
                    }
                    if self.authVersion != nil {
                        map["AuthVersion"] = self.authVersion!
                    }
                    if self.authVersionName != nil {
                        map["AuthVersionName"] = self.authVersionName!
                    }
                    if self.bind != nil {
                        map["Bind"] = self.bind!
                    }
                    if self.bindFileProtectType != nil {
                        map["BindFileProtectType"] = self.bindFileProtectType!
                    }
                    if self.clientStatus != nil {
                        map["ClientStatus"] = self.clientStatus!
                    }
                    if self.clientSubStatus != nil {
                        map["ClientSubStatus"] = self.clientSubStatus!
                    }
                    if self.clusterId != nil {
                        map["ClusterId"] = self.clusterId!
                    }
                    if self.clusterName != nil {
                        map["ClusterName"] = self.clusterName!
                    }
                    if self.cores != nil {
                        map["Cores"] = self.cores!
                    }
                    if self.cpuInfo != nil {
                        map["CpuInfo"] = self.cpuInfo!
                    }
                    if self.createdTime != nil {
                        map["CreatedTime"] = self.createdTime!
                    }
                    if self.exposedStatus != nil {
                        map["ExposedStatus"] = self.exposedStatus!
                    }
                    if self.flag != nil {
                        map["Flag"] = self.flag!
                    }
                    if self.flagName != nil {
                        map["FlagName"] = self.flagName!
                    }
                    if self.groupId != nil {
                        map["GroupId"] = self.groupId!
                    }
                    if self.groupTrace != nil {
                        map["GroupTrace"] = self.groupTrace!
                    }
                    if self.hasContainer != nil {
                        map["HasContainer"] = self.hasContainer!
                    }
                    if self.hcStatus != nil {
                        map["HcStatus"] = self.hcStatus!
                    }
                    if self.healthCheckCount != nil {
                        map["HealthCheckCount"] = self.healthCheckCount!
                    }
                    if self.importance != nil {
                        map["Importance"] = self.importance!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.instanceName != nil {
                        map["InstanceName"] = self.instanceName!
                    }
                    if self.internetIp != nil {
                        map["InternetIp"] = self.internetIp!
                    }
                    if self.intranetIp != nil {
                        map["IntranetIp"] = self.intranetIp!
                    }
                    if self.ip != nil {
                        map["Ip"] = self.ip!
                    }
                    if self.ipListString != nil {
                        map["IpListString"] = self.ipListString!
                    }
                    if self.kernel != nil {
                        map["Kernel"] = self.kernel!
                    }
                    if self.lastLoginTimestamp != nil {
                        map["LastLoginTimestamp"] = self.lastLoginTimestamp!
                    }
                    if self.macListString != nil {
                        map["MacListString"] = self.macListString!
                    }
                    if self.mem != nil {
                        map["Mem"] = self.mem!
                    }
                    if self.namespace != nil {
                        map["Namespace"] = self.namespace!
                    }
                    if self.os != nil {
                        map["Os"] = self.os!
                    }
                    if self.osName != nil {
                        map["OsName"] = self.osName!
                    }
                    if self.podCount != nil {
                        map["PodCount"] = self.podCount!
                    }
                    if self.postPaidFlag != nil {
                        map["PostPaidFlag"] = self.postPaidFlag!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.regionName != nil {
                        map["RegionName"] = self.regionName!
                    }
                    if self.riskCount != nil {
                        map["RiskCount"] = self.riskCount!
                    }
                    if self.riskStatus != nil {
                        map["RiskStatus"] = self.riskStatus!
                    }
                    if self.safeEventCount != nil {
                        map["SafeEventCount"] = self.safeEventCount!
                    }
                    if self.serviceId != nil {
                        map["ServiceId"] = self.serviceId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.tag != nil {
                        map["Tag"] = self.tag!
                    }
                    if self.tagId != nil {
                        map["TagId"] = self.tagId!
                    }
                    if self.tagResources != nil {
                        map["TagResources"] = self.tagResources!
                    }
                    if self.uuid != nil {
                        map["Uuid"] = self.uuid!
                    }
                    if self.vendor != nil {
                        map["Vendor"] = self.vendor!
                    }
                    if self.vendorName != nil {
                        map["VendorName"] = self.vendorName!
                    }
                    if self.vendorUid != nil {
                        map["VendorUid"] = self.vendorUid!
                    }
                    if self.vendorUserName != nil {
                        map["VendorUserName"] = self.vendorUserName!
                    }
                    if self.vpcInstanceId != nil {
                        map["VpcInstanceId"] = self.vpcInstanceId!
                    }
                    if self.vulCount != nil {
                        map["VulCount"] = self.vulCount!
                    }
                    if self.vulStatus != nil {
                        map["VulStatus"] = self.vulStatus!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AlarmStatus"] as? String {
                        self.alarmStatus = value
                    }
                    if let value = dict["AppId"] as? String {
                        self.appId = value
                    }
                    if let value = dict["AppName"] as? String {
                        self.appName = value
                    }
                    if let value = dict["AssetType"] as? String {
                        self.assetType = value
                    }
                    if let value = dict["AssetTypeName"] as? String {
                        self.assetTypeName = value
                    }
                    if let value = dict["AuthModifyTime"] as? Int64 {
                        self.authModifyTime = value
                    }
                    if let value = dict["AuthVersion"] as? Int32 {
                        self.authVersion = value
                    }
                    if let value = dict["AuthVersionName"] as? String {
                        self.authVersionName = value
                    }
                    if let value = dict["Bind"] as? Bool {
                        self.bind = value
                    }
                    if let value = dict["BindFileProtectType"] as? String {
                        self.bindFileProtectType = value
                    }
                    if let value = dict["ClientStatus"] as? String {
                        self.clientStatus = value
                    }
                    if let value = dict["ClientSubStatus"] as? String {
                        self.clientSubStatus = value
                    }
                    if let value = dict["ClusterId"] as? String {
                        self.clusterId = value
                    }
                    if let value = dict["ClusterName"] as? String {
                        self.clusterName = value
                    }
                    if let value = dict["Cores"] as? Int32 {
                        self.cores = value
                    }
                    if let value = dict["CpuInfo"] as? String {
                        self.cpuInfo = value
                    }
                    if let value = dict["CreatedTime"] as? Int64 {
                        self.createdTime = value
                    }
                    if let value = dict["ExposedStatus"] as? Int32 {
                        self.exposedStatus = value
                    }
                    if let value = dict["Flag"] as? Int32 {
                        self.flag = value
                    }
                    if let value = dict["FlagName"] as? String {
                        self.flagName = value
                    }
                    if let value = dict["GroupId"] as? Int64 {
                        self.groupId = value
                    }
                    if let value = dict["GroupTrace"] as? String {
                        self.groupTrace = value
                    }
                    if let value = dict["HasContainer"] as? String {
                        self.hasContainer = value
                    }
                    if let value = dict["HcStatus"] as? String {
                        self.hcStatus = value
                    }
                    if let value = dict["HealthCheckCount"] as? Int32 {
                        self.healthCheckCount = value
                    }
                    if let value = dict["Importance"] as? Int32 {
                        self.importance = value
                    }
                    if let value = dict["InstanceId"] as? String {
                        self.instanceId = value
                    }
                    if let value = dict["InstanceName"] as? String {
                        self.instanceName = value
                    }
                    if let value = dict["InternetIp"] as? String {
                        self.internetIp = value
                    }
                    if let value = dict["IntranetIp"] as? String {
                        self.intranetIp = value
                    }
                    if let value = dict["Ip"] as? String {
                        self.ip = value
                    }
                    if let value = dict["IpListString"] as? String {
                        self.ipListString = value
                    }
                    if let value = dict["Kernel"] as? String {
                        self.kernel = value
                    }
                    if let value = dict["LastLoginTimestamp"] as? Int64 {
                        self.lastLoginTimestamp = value
                    }
                    if let value = dict["MacListString"] as? String {
                        self.macListString = value
                    }
                    if let value = dict["Mem"] as? String {
                        self.mem = value
                    }
                    if let value = dict["Namespace"] as? String {
                        self.namespace = value
                    }
                    if let value = dict["Os"] as? String {
                        self.os = value
                    }
                    if let value = dict["OsName"] as? String {
                        self.osName = value
                    }
                    if let value = dict["PodCount"] as? Int32 {
                        self.podCount = value
                    }
                    if let value = dict["PostPaidFlag"] as? Int32 {
                        self.postPaidFlag = value
                    }
                    if let value = dict["Region"] as? String {
                        self.region = value
                    }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["RegionName"] as? String {
                        self.regionName = value
                    }
                    if let value = dict["RiskCount"] as? String {
                        self.riskCount = value
                    }
                    if let value = dict["RiskStatus"] as? String {
                        self.riskStatus = value
                    }
                    if let value = dict["SafeEventCount"] as? String {
                        self.safeEventCount = value
                    }
                    if let value = dict["ServiceId"] as? String {
                        self.serviceId = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["Tag"] as? String {
                        self.tag = value
                    }
                    if let value = dict["TagId"] as? String {
                        self.tagId = value
                    }
                    if let value = dict["TagResources"] as? String {
                        self.tagResources = value
                    }
                    if let value = dict["Uuid"] as? String {
                        self.uuid = value
                    }
                    if let value = dict["Vendor"] as? Int32 {
                        self.vendor = value
                    }
                    if let value = dict["VendorName"] as? String {
                        self.vendorName = value
                    }
                    if let value = dict["VendorUid"] as? String {
                        self.vendorUid = value
                    }
                    if let value = dict["VendorUserName"] as? String {
                        self.vendorUserName = value
                    }
                    if let value = dict["VpcInstanceId"] as? String {
                        self.vpcInstanceId = value
                    }
                    if let value = dict["VulCount"] as? Int32 {
                        self.vulCount = value
                    }
                    if let value = dict["VulStatus"] as? String {
                        self.vulStatus = value
                    }
                }
            }
            public class PageInfo : Tea.TeaModel {
                public var count: Int32?

                public var currentPage: Int32?

                public var nextToken: String?

                public var pageSize: Int32?

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
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.currentPage != nil {
                        map["CurrentPage"] = self.currentPage!
                    }
                    if self.nextToken != nil {
                        map["NextToken"] = self.nextToken!
                    }
                    if self.pageSize != nil {
                        map["PageSize"] = self.pageSize!
                    }
                    if self.totalCount != nil {
                        map["TotalCount"] = self.totalCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Count"] as? Int32 {
                        self.count = value
                    }
                    if let value = dict["CurrentPage"] as? Int32 {
                        self.currentPage = value
                    }
                    if let value = dict["NextToken"] as? String {
                        self.nextToken = value
                    }
                    if let value = dict["PageSize"] as? Int32 {
                        self.pageSize = value
                    }
                    if let value = dict["TotalCount"] as? Int32 {
                        self.totalCount = value
                    }
                }
            }
            public var instances: [DescribeCloudCenterInstancesResponseBody.Data.Body.Instances]?

            public var pageInfo: DescribeCloudCenterInstancesResponseBody.Data.Body.PageInfo?

            public var requestId: String?

            public var success: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.pageInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instances != nil {
                    var tmp : [Any] = []
                    for k in self.instances! {
                        tmp.append(k.toMap())
                    }
                    map["Instances"] = tmp
                }
                if self.pageInfo != nil {
                    map["PageInfo"] = self.pageInfo?.toMap()
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
                if let value = dict["Instances"] as? [Any?] {
                    var tmp : [DescribeCloudCenterInstancesResponseBody.Data.Body.Instances] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeCloudCenterInstancesResponseBody.Data.Body.Instances()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.instances = tmp
                }
                if let value = dict["PageInfo"] as? [String: Any?] {
                    var model = DescribeCloudCenterInstancesResponseBody.Data.Body.PageInfo()
                    model.fromMap(value)
                    self.pageInfo = model
                }
                if let value = dict["RequestId"] as? String {
                    self.requestId = value
                }
                if let value = dict["Success"] as? Bool {
                    self.success = value
                }
            }
        }
        public var body: DescribeCloudCenterInstancesResponseBody.Data.Body?

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
            if self.body != nil {
                map["Body"] = self.body?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Body"] as? [String: Any?] {
                var model = DescribeCloudCenterInstancesResponseBody.Data.Body()
                model.fromMap(value)
                self.body = model
            }
        }
    }
    public var code: String?

    public var data: DescribeCloudCenterInstancesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = DescribeCloudCenterInstancesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeCloudCenterInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudCenterInstancesResponseBody?

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
            var model = DescribeCloudCenterInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceLinkedRoleStatusRequest : Tea.TeaModel {
    public class SdkRequest : Tea.TeaModel {
        public var serviceLinkedRole: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceLinkedRole != nil {
                map["ServiceLinkedRole"] = self.serviceLinkedRole!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ServiceLinkedRole"] as? String {
                self.serviceLinkedRole = value
            }
        }
    }
    public var regionId: String?

    public var sdkRequest: DescribeServiceLinkedRoleStatusRequest.SdkRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sdkRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sdkRequest != nil {
            map["SdkRequest"] = self.sdkRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? [String: Any?] {
            var model = DescribeServiceLinkedRoleStatusRequest.SdkRequest()
            model.fromMap(value)
            self.sdkRequest = model
        }
    }
}

public class DescribeServiceLinkedRoleStatusShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var sdkRequestShrink: String?

    public override init() {
        super.init()
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
        if self.sdkRequestShrink != nil {
            map["SdkRequest"] = self.sdkRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? String {
            self.sdkRequestShrink = value
        }
    }
}

public class DescribeServiceLinkedRoleStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Body : Tea.TeaModel {
            public class RoleStatus : Tea.TeaModel {
                public var status: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Status"] as? Bool {
                        self.status = value
                    }
                }
            }
            public var requestId: String?

            public var roleStatus: DescribeServiceLinkedRoleStatusResponseBody.Data.Body.RoleStatus?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.roleStatus?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.requestId != nil {
                    map["RequestId"] = self.requestId!
                }
                if self.roleStatus != nil {
                    map["RoleStatus"] = self.roleStatus?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RequestId"] as? String {
                    self.requestId = value
                }
                if let value = dict["RoleStatus"] as? [String: Any?] {
                    var model = DescribeServiceLinkedRoleStatusResponseBody.Data.Body.RoleStatus()
                    model.fromMap(value)
                    self.roleStatus = model
                }
            }
        }
        public var body: DescribeServiceLinkedRoleStatusResponseBody.Data.Body?

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
            if self.body != nil {
                map["Body"] = self.body?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Body"] as? [String: Any?] {
                var model = DescribeServiceLinkedRoleStatusResponseBody.Data.Body()
                model.fromMap(value)
                self.body = model
            }
        }
    }
    public var code: String?

    public var data: DescribeServiceLinkedRoleStatusResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = DescribeServiceLinkedRoleStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeServiceLinkedRoleStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceLinkedRoleStatusResponseBody?

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
            var model = DescribeServiceLinkedRoleStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSuspEventsRequest : Tea.TeaModel {
    public class SdkRequest : Tea.TeaModel {
        public var alarmUniqueInfo: String?

        public var assetsTypeList: [String]?

        public var clusterId: String?

        public var containerFieldName: String?

        public var containerFieldValue: String?

        public var currentPage: String?

        public var dealed: String?

        public var detectSource: String?

        public var eventNames: String?

        public var from: String?

        public var groupId: Int64?

        public var id: Int64?

        public var lang: String?

        public var levels: String?

        public var multiAccountActionType: Int32?

        public var name: String?

        public var operateErrorCodeList: [String]?

        public var operateTimeEnd: String?

        public var operateTimeStart: String?

        public var pageSize: String?

        public var parentEventTypes: String?

        public var remark: String?

        public var resourceDirectoryAccountId: Int64?

        public var sortColumn: String?

        public var sortType: String?

        public var source: String?

        public var sourceAliUids: [Int64]?

        public var sourceIp: String?

        public var strictMode: String?

        public var supportOperateCodeList: [String]?

        public var tacticId: String?

        public var targetType: String?

        public var timeEnd: String?

        public var timeStart: String?

        public var uniqueInfo: String?

        public var uuids: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alarmUniqueInfo != nil {
                map["AlarmUniqueInfo"] = self.alarmUniqueInfo!
            }
            if self.assetsTypeList != nil {
                map["AssetsTypeList"] = self.assetsTypeList!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.containerFieldName != nil {
                map["ContainerFieldName"] = self.containerFieldName!
            }
            if self.containerFieldValue != nil {
                map["ContainerFieldValue"] = self.containerFieldValue!
            }
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
            }
            if self.dealed != nil {
                map["Dealed"] = self.dealed!
            }
            if self.detectSource != nil {
                map["DetectSource"] = self.detectSource!
            }
            if self.eventNames != nil {
                map["EventNames"] = self.eventNames!
            }
            if self.from != nil {
                map["From"] = self.from!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lang != nil {
                map["Lang"] = self.lang!
            }
            if self.levels != nil {
                map["Levels"] = self.levels!
            }
            if self.multiAccountActionType != nil {
                map["MultiAccountActionType"] = self.multiAccountActionType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.operateErrorCodeList != nil {
                map["OperateErrorCodeList"] = self.operateErrorCodeList!
            }
            if self.operateTimeEnd != nil {
                map["OperateTimeEnd"] = self.operateTimeEnd!
            }
            if self.operateTimeStart != nil {
                map["OperateTimeStart"] = self.operateTimeStart!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.parentEventTypes != nil {
                map["ParentEventTypes"] = self.parentEventTypes!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.resourceDirectoryAccountId != nil {
                map["ResourceDirectoryAccountId"] = self.resourceDirectoryAccountId!
            }
            if self.sortColumn != nil {
                map["SortColumn"] = self.sortColumn!
            }
            if self.sortType != nil {
                map["SortType"] = self.sortType!
            }
            if self.source != nil {
                map["Source"] = self.source!
            }
            if self.sourceAliUids != nil {
                map["SourceAliUids"] = self.sourceAliUids!
            }
            if self.sourceIp != nil {
                map["SourceIp"] = self.sourceIp!
            }
            if self.strictMode != nil {
                map["StrictMode"] = self.strictMode!
            }
            if self.supportOperateCodeList != nil {
                map["SupportOperateCodeList"] = self.supportOperateCodeList!
            }
            if self.tacticId != nil {
                map["TacticId"] = self.tacticId!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.timeEnd != nil {
                map["TimeEnd"] = self.timeEnd!
            }
            if self.timeStart != nil {
                map["TimeStart"] = self.timeStart!
            }
            if self.uniqueInfo != nil {
                map["UniqueInfo"] = self.uniqueInfo!
            }
            if self.uuids != nil {
                map["Uuids"] = self.uuids!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmUniqueInfo"] as? String {
                self.alarmUniqueInfo = value
            }
            if let value = dict["AssetsTypeList"] as? [String] {
                self.assetsTypeList = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ContainerFieldName"] as? String {
                self.containerFieldName = value
            }
            if let value = dict["ContainerFieldValue"] as? String {
                self.containerFieldValue = value
            }
            if let value = dict["CurrentPage"] as? String {
                self.currentPage = value
            }
            if let value = dict["Dealed"] as? String {
                self.dealed = value
            }
            if let value = dict["DetectSource"] as? String {
                self.detectSource = value
            }
            if let value = dict["EventNames"] as? String {
                self.eventNames = value
            }
            if let value = dict["From"] as? String {
                self.from = value
            }
            if let value = dict["GroupId"] as? Int64 {
                self.groupId = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Lang"] as? String {
                self.lang = value
            }
            if let value = dict["Levels"] as? String {
                self.levels = value
            }
            if let value = dict["MultiAccountActionType"] as? Int32 {
                self.multiAccountActionType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OperateErrorCodeList"] as? [String] {
                self.operateErrorCodeList = value
            }
            if let value = dict["OperateTimeEnd"] as? String {
                self.operateTimeEnd = value
            }
            if let value = dict["OperateTimeStart"] as? String {
                self.operateTimeStart = value
            }
            if let value = dict["PageSize"] as? String {
                self.pageSize = value
            }
            if let value = dict["ParentEventTypes"] as? String {
                self.parentEventTypes = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["ResourceDirectoryAccountId"] as? Int64 {
                self.resourceDirectoryAccountId = value
            }
            if let value = dict["SortColumn"] as? String {
                self.sortColumn = value
            }
            if let value = dict["SortType"] as? String {
                self.sortType = value
            }
            if let value = dict["Source"] as? String {
                self.source = value
            }
            if let value = dict["SourceAliUids"] as? [Int64] {
                self.sourceAliUids = value
            }
            if let value = dict["SourceIp"] as? String {
                self.sourceIp = value
            }
            if let value = dict["StrictMode"] as? String {
                self.strictMode = value
            }
            if let value = dict["SupportOperateCodeList"] as? [String] {
                self.supportOperateCodeList = value
            }
            if let value = dict["TacticId"] as? String {
                self.tacticId = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["TimeEnd"] as? String {
                self.timeEnd = value
            }
            if let value = dict["TimeStart"] as? String {
                self.timeStart = value
            }
            if let value = dict["UniqueInfo"] as? String {
                self.uniqueInfo = value
            }
            if let value = dict["Uuids"] as? String {
                self.uuids = value
            }
        }
    }
    public var regionId: String?

    public var sdkRequest: DescribeSuspEventsRequest.SdkRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sdkRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sdkRequest != nil {
            map["SdkRequest"] = self.sdkRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? [String: Any?] {
            var model = DescribeSuspEventsRequest.SdkRequest()
            model.fromMap(value)
            self.sdkRequest = model
        }
    }
}

public class DescribeSuspEventsShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var sdkRequestShrink: String?

    public override init() {
        super.init()
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
        if self.sdkRequestShrink != nil {
            map["SdkRequest"] = self.sdkRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? String {
            self.sdkRequestShrink = value
        }
    }
}

public class DescribeSuspEventsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Body : Tea.TeaModel {
            public class SuspEvents : Tea.TeaModel {
                public class Details : Tea.TeaModel {
                    public var nameDisplay: String?

                    public var type: String?

                    public var value: String?

                    public var valueDisplay: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.nameDisplay != nil {
                            map["NameDisplay"] = self.nameDisplay!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        if self.valueDisplay != nil {
                            map["ValueDisplay"] = self.valueDisplay!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["NameDisplay"] as? String {
                            self.nameDisplay = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
                        }
                        if let value = dict["ValueDisplay"] as? String {
                            self.valueDisplay = value
                        }
                    }
                }
                public class EventNotes : Tea.TeaModel {
                    public var note: String?

                    public var noteId: Int64?

                    public var noteTime: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.note != nil {
                            map["Note"] = self.note!
                        }
                        if self.noteId != nil {
                            map["NoteId"] = self.noteId!
                        }
                        if self.noteTime != nil {
                            map["NoteTime"] = self.noteTime!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Note"] as? String {
                            self.note = value
                        }
                        if let value = dict["NoteId"] as? Int64 {
                            self.noteId = value
                        }
                        if let value = dict["NoteTime"] as? String {
                            self.noteTime = value
                        }
                    }
                }
                public class TacticItems : Tea.TeaModel {
                    public var tacticDisplayName: String?

                    public var tacticId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.tacticDisplayName != nil {
                            map["TacticDisplayName"] = self.tacticDisplayName!
                        }
                        if self.tacticId != nil {
                            map["TacticId"] = self.tacticId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["TacticDisplayName"] as? String {
                            self.tacticDisplayName = value
                        }
                        if let value = dict["TacticId"] as? String {
                            self.tacticId = value
                        }
                    }
                }
                public var advanced: Bool?

                public var alarmEventName: String?

                public var alarmEventNameDisplay: String?

                public var alarmEventType: String?

                public var alarmEventTypeDisplay: String?

                public var alarmUniqueInfo: String?

                public var appName: String?

                public var autoBreaking: Bool?

                public var canBeDealOnLine: Bool?

                public var canCancelFault: Bool?

                public var clusterId: String?

                public var containHwMode: Bool?

                public var containerId: String?

                public var containerImageId: String?

                public var containerImageName: String?

                public var dataSource: String?

                public var desc: String?

                public var details: [DescribeSuspEventsResponseBody.Data.Body.SuspEvents.Details]?

                public var detectSource: String?

                public var displaySandboxResult: Bool?

                public var eventNotes: [DescribeSuspEventsResponseBody.Data.Body.SuspEvents.EventNotes]?

                public var eventStatus: Int32?

                public var eventSubType: String?

                public var hasTraceInfo: Bool?

                public var id: Int64?

                public var imageUuid: String?

                public var instanceId: String?

                public var instanceName: String?

                public var internetIp: String?

                public var intranetIp: String?

                public var k8sClusterId: String?

                public var k8sClusterName: String?

                public var k8sNamespace: String?

                public var k8sNodeId: String?

                public var k8sNodeName: String?

                public var k8sPodName: String?

                public var largeModel: Bool?

                public var lastTime: String?

                public var lastTimeStamp: Int64?

                public var level: String?

                public var maliciousRuleStatus: String?

                public var markList: [String]?

                public var markMisRules: String?

                public var name: String?

                public var occurrenceTime: String?

                public var occurrenceTimeStamp: Int64?

                public var operateErrorCode: String?

                public var operateMsg: String?

                public var operateTime: Int64?

                public var saleVersion: String?

                public var securityEventIds: String?

                public var sourceAliUid: Int64?

                public var stages: String?

                public var supportOperateCode: String?

                public var tacticItems: [DescribeSuspEventsResponseBody.Data.Body.SuspEvents.TacticItems]?

                public var uniqueInfo: String?

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
                    if self.advanced != nil {
                        map["Advanced"] = self.advanced!
                    }
                    if self.alarmEventName != nil {
                        map["AlarmEventName"] = self.alarmEventName!
                    }
                    if self.alarmEventNameDisplay != nil {
                        map["AlarmEventNameDisplay"] = self.alarmEventNameDisplay!
                    }
                    if self.alarmEventType != nil {
                        map["AlarmEventType"] = self.alarmEventType!
                    }
                    if self.alarmEventTypeDisplay != nil {
                        map["AlarmEventTypeDisplay"] = self.alarmEventTypeDisplay!
                    }
                    if self.alarmUniqueInfo != nil {
                        map["AlarmUniqueInfo"] = self.alarmUniqueInfo!
                    }
                    if self.appName != nil {
                        map["AppName"] = self.appName!
                    }
                    if self.autoBreaking != nil {
                        map["AutoBreaking"] = self.autoBreaking!
                    }
                    if self.canBeDealOnLine != nil {
                        map["CanBeDealOnLine"] = self.canBeDealOnLine!
                    }
                    if self.canCancelFault != nil {
                        map["CanCancelFault"] = self.canCancelFault!
                    }
                    if self.clusterId != nil {
                        map["ClusterId"] = self.clusterId!
                    }
                    if self.containHwMode != nil {
                        map["ContainHwMode"] = self.containHwMode!
                    }
                    if self.containerId != nil {
                        map["ContainerId"] = self.containerId!
                    }
                    if self.containerImageId != nil {
                        map["ContainerImageId"] = self.containerImageId!
                    }
                    if self.containerImageName != nil {
                        map["ContainerImageName"] = self.containerImageName!
                    }
                    if self.dataSource != nil {
                        map["DataSource"] = self.dataSource!
                    }
                    if self.desc != nil {
                        map["Desc"] = self.desc!
                    }
                    if self.details != nil {
                        var tmp : [Any] = []
                        for k in self.details! {
                            tmp.append(k.toMap())
                        }
                        map["Details"] = tmp
                    }
                    if self.detectSource != nil {
                        map["DetectSource"] = self.detectSource!
                    }
                    if self.displaySandboxResult != nil {
                        map["DisplaySandboxResult"] = self.displaySandboxResult!
                    }
                    if self.eventNotes != nil {
                        var tmp : [Any] = []
                        for k in self.eventNotes! {
                            tmp.append(k.toMap())
                        }
                        map["EventNotes"] = tmp
                    }
                    if self.eventStatus != nil {
                        map["EventStatus"] = self.eventStatus!
                    }
                    if self.eventSubType != nil {
                        map["EventSubType"] = self.eventSubType!
                    }
                    if self.hasTraceInfo != nil {
                        map["HasTraceInfo"] = self.hasTraceInfo!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.imageUuid != nil {
                        map["ImageUuid"] = self.imageUuid!
                    }
                    if self.instanceId != nil {
                        map["InstanceId"] = self.instanceId!
                    }
                    if self.instanceName != nil {
                        map["InstanceName"] = self.instanceName!
                    }
                    if self.internetIp != nil {
                        map["InternetIp"] = self.internetIp!
                    }
                    if self.intranetIp != nil {
                        map["IntranetIp"] = self.intranetIp!
                    }
                    if self.k8sClusterId != nil {
                        map["K8sClusterId"] = self.k8sClusterId!
                    }
                    if self.k8sClusterName != nil {
                        map["K8sClusterName"] = self.k8sClusterName!
                    }
                    if self.k8sNamespace != nil {
                        map["K8sNamespace"] = self.k8sNamespace!
                    }
                    if self.k8sNodeId != nil {
                        map["K8sNodeId"] = self.k8sNodeId!
                    }
                    if self.k8sNodeName != nil {
                        map["K8sNodeName"] = self.k8sNodeName!
                    }
                    if self.k8sPodName != nil {
                        map["K8sPodName"] = self.k8sPodName!
                    }
                    if self.largeModel != nil {
                        map["LargeModel"] = self.largeModel!
                    }
                    if self.lastTime != nil {
                        map["LastTime"] = self.lastTime!
                    }
                    if self.lastTimeStamp != nil {
                        map["LastTimeStamp"] = self.lastTimeStamp!
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    if self.maliciousRuleStatus != nil {
                        map["MaliciousRuleStatus"] = self.maliciousRuleStatus!
                    }
                    if self.markList != nil {
                        map["MarkList"] = self.markList!
                    }
                    if self.markMisRules != nil {
                        map["MarkMisRules"] = self.markMisRules!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.occurrenceTime != nil {
                        map["OccurrenceTime"] = self.occurrenceTime!
                    }
                    if self.occurrenceTimeStamp != nil {
                        map["OccurrenceTimeStamp"] = self.occurrenceTimeStamp!
                    }
                    if self.operateErrorCode != nil {
                        map["OperateErrorCode"] = self.operateErrorCode!
                    }
                    if self.operateMsg != nil {
                        map["OperateMsg"] = self.operateMsg!
                    }
                    if self.operateTime != nil {
                        map["OperateTime"] = self.operateTime!
                    }
                    if self.saleVersion != nil {
                        map["SaleVersion"] = self.saleVersion!
                    }
                    if self.securityEventIds != nil {
                        map["SecurityEventIds"] = self.securityEventIds!
                    }
                    if self.sourceAliUid != nil {
                        map["SourceAliUid"] = self.sourceAliUid!
                    }
                    if self.stages != nil {
                        map["Stages"] = self.stages!
                    }
                    if self.supportOperateCode != nil {
                        map["SupportOperateCode"] = self.supportOperateCode!
                    }
                    if self.tacticItems != nil {
                        var tmp : [Any] = []
                        for k in self.tacticItems! {
                            tmp.append(k.toMap())
                        }
                        map["TacticItems"] = tmp
                    }
                    if self.uniqueInfo != nil {
                        map["UniqueInfo"] = self.uniqueInfo!
                    }
                    if self.uuid != nil {
                        map["Uuid"] = self.uuid!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Advanced"] as? Bool {
                        self.advanced = value
                    }
                    if let value = dict["AlarmEventName"] as? String {
                        self.alarmEventName = value
                    }
                    if let value = dict["AlarmEventNameDisplay"] as? String {
                        self.alarmEventNameDisplay = value
                    }
                    if let value = dict["AlarmEventType"] as? String {
                        self.alarmEventType = value
                    }
                    if let value = dict["AlarmEventTypeDisplay"] as? String {
                        self.alarmEventTypeDisplay = value
                    }
                    if let value = dict["AlarmUniqueInfo"] as? String {
                        self.alarmUniqueInfo = value
                    }
                    if let value = dict["AppName"] as? String {
                        self.appName = value
                    }
                    if let value = dict["AutoBreaking"] as? Bool {
                        self.autoBreaking = value
                    }
                    if let value = dict["CanBeDealOnLine"] as? Bool {
                        self.canBeDealOnLine = value
                    }
                    if let value = dict["CanCancelFault"] as? Bool {
                        self.canCancelFault = value
                    }
                    if let value = dict["ClusterId"] as? String {
                        self.clusterId = value
                    }
                    if let value = dict["ContainHwMode"] as? Bool {
                        self.containHwMode = value
                    }
                    if let value = dict["ContainerId"] as? String {
                        self.containerId = value
                    }
                    if let value = dict["ContainerImageId"] as? String {
                        self.containerImageId = value
                    }
                    if let value = dict["ContainerImageName"] as? String {
                        self.containerImageName = value
                    }
                    if let value = dict["DataSource"] as? String {
                        self.dataSource = value
                    }
                    if let value = dict["Desc"] as? String {
                        self.desc = value
                    }
                    if let value = dict["Details"] as? [Any?] {
                        var tmp : [DescribeSuspEventsResponseBody.Data.Body.SuspEvents.Details] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeSuspEventsResponseBody.Data.Body.SuspEvents.Details()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.details = tmp
                    }
                    if let value = dict["DetectSource"] as? String {
                        self.detectSource = value
                    }
                    if let value = dict["DisplaySandboxResult"] as? Bool {
                        self.displaySandboxResult = value
                    }
                    if let value = dict["EventNotes"] as? [Any?] {
                        var tmp : [DescribeSuspEventsResponseBody.Data.Body.SuspEvents.EventNotes] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeSuspEventsResponseBody.Data.Body.SuspEvents.EventNotes()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.eventNotes = tmp
                    }
                    if let value = dict["EventStatus"] as? Int32 {
                        self.eventStatus = value
                    }
                    if let value = dict["EventSubType"] as? String {
                        self.eventSubType = value
                    }
                    if let value = dict["HasTraceInfo"] as? Bool {
                        self.hasTraceInfo = value
                    }
                    if let value = dict["Id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["ImageUuid"] as? String {
                        self.imageUuid = value
                    }
                    if let value = dict["InstanceId"] as? String {
                        self.instanceId = value
                    }
                    if let value = dict["InstanceName"] as? String {
                        self.instanceName = value
                    }
                    if let value = dict["InternetIp"] as? String {
                        self.internetIp = value
                    }
                    if let value = dict["IntranetIp"] as? String {
                        self.intranetIp = value
                    }
                    if let value = dict["K8sClusterId"] as? String {
                        self.k8sClusterId = value
                    }
                    if let value = dict["K8sClusterName"] as? String {
                        self.k8sClusterName = value
                    }
                    if let value = dict["K8sNamespace"] as? String {
                        self.k8sNamespace = value
                    }
                    if let value = dict["K8sNodeId"] as? String {
                        self.k8sNodeId = value
                    }
                    if let value = dict["K8sNodeName"] as? String {
                        self.k8sNodeName = value
                    }
                    if let value = dict["K8sPodName"] as? String {
                        self.k8sPodName = value
                    }
                    if let value = dict["LargeModel"] as? Bool {
                        self.largeModel = value
                    }
                    if let value = dict["LastTime"] as? String {
                        self.lastTime = value
                    }
                    if let value = dict["LastTimeStamp"] as? Int64 {
                        self.lastTimeStamp = value
                    }
                    if let value = dict["Level"] as? String {
                        self.level = value
                    }
                    if let value = dict["MaliciousRuleStatus"] as? String {
                        self.maliciousRuleStatus = value
                    }
                    if let value = dict["MarkList"] as? [String] {
                        self.markList = value
                    }
                    if let value = dict["MarkMisRules"] as? String {
                        self.markMisRules = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["OccurrenceTime"] as? String {
                        self.occurrenceTime = value
                    }
                    if let value = dict["OccurrenceTimeStamp"] as? Int64 {
                        self.occurrenceTimeStamp = value
                    }
                    if let value = dict["OperateErrorCode"] as? String {
                        self.operateErrorCode = value
                    }
                    if let value = dict["OperateMsg"] as? String {
                        self.operateMsg = value
                    }
                    if let value = dict["OperateTime"] as? Int64 {
                        self.operateTime = value
                    }
                    if let value = dict["SaleVersion"] as? String {
                        self.saleVersion = value
                    }
                    if let value = dict["SecurityEventIds"] as? String {
                        self.securityEventIds = value
                    }
                    if let value = dict["SourceAliUid"] as? Int64 {
                        self.sourceAliUid = value
                    }
                    if let value = dict["Stages"] as? String {
                        self.stages = value
                    }
                    if let value = dict["SupportOperateCode"] as? String {
                        self.supportOperateCode = value
                    }
                    if let value = dict["TacticItems"] as? [Any?] {
                        var tmp : [DescribeSuspEventsResponseBody.Data.Body.SuspEvents.TacticItems] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeSuspEventsResponseBody.Data.Body.SuspEvents.TacticItems()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tacticItems = tmp
                    }
                    if let value = dict["UniqueInfo"] as? String {
                        self.uniqueInfo = value
                    }
                    if let value = dict["Uuid"] as? String {
                        self.uuid = value
                    }
                }
            }
            public var count: Int32?

            public var currentPage: Int32?

            public var pageSize: Int32?

            public var requestId: String?

            public var suspEvents: [DescribeSuspEventsResponseBody.Data.Body.SuspEvents]?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.currentPage != nil {
                    map["CurrentPage"] = self.currentPage!
                }
                if self.pageSize != nil {
                    map["PageSize"] = self.pageSize!
                }
                if self.requestId != nil {
                    map["RequestId"] = self.requestId!
                }
                if self.suspEvents != nil {
                    var tmp : [Any] = []
                    for k in self.suspEvents! {
                        tmp.append(k.toMap())
                    }
                    map["SuspEvents"] = tmp
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["CurrentPage"] as? Int32 {
                    self.currentPage = value
                }
                if let value = dict["PageSize"] as? Int32 {
                    self.pageSize = value
                }
                if let value = dict["RequestId"] as? String {
                    self.requestId = value
                }
                if let value = dict["SuspEvents"] as? [Any?] {
                    var tmp : [DescribeSuspEventsResponseBody.Data.Body.SuspEvents] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeSuspEventsResponseBody.Data.Body.SuspEvents()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.suspEvents = tmp
                }
                if let value = dict["TotalCount"] as? Int32 {
                    self.totalCount = value
                }
            }
        }
        public var body: DescribeSuspEventsResponseBody.Data.Body?

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
            if self.body != nil {
                map["Body"] = self.body?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Body"] as? [String: Any?] {
                var model = DescribeSuspEventsResponseBody.Data.Body()
                model.fromMap(value)
                self.body = model
            }
        }
    }
    public var code: String?

    public var data: DescribeSuspEventsResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = DescribeSuspEventsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeSuspEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSuspEventsResponseBody?

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
            var model = DescribeSuspEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAlertRecordAnalysisResultRequest : Tea.TeaModel {
    public class UniqueTagList : Tea.TeaModel {
        public var alarmUniqueInfo: String?

        public var chooseLike: Bool?

        public var ip: String?

        public var machineInstanceId: String?

        public var queryTime: String?

        public var type: String?

        public var uniqueInfo: String?

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
            if self.alarmUniqueInfo != nil {
                map["AlarmUniqueInfo"] = self.alarmUniqueInfo!
            }
            if self.chooseLike != nil {
                map["ChooseLike"] = self.chooseLike!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.machineInstanceId != nil {
                map["MachineInstanceId"] = self.machineInstanceId!
            }
            if self.queryTime != nil {
                map["QueryTime"] = self.queryTime!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uniqueInfo != nil {
                map["UniqueInfo"] = self.uniqueInfo!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlarmUniqueInfo"] as? String {
                self.alarmUniqueInfo = value
            }
            if let value = dict["ChooseLike"] as? Bool {
                self.chooseLike = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["MachineInstanceId"] as? String {
                self.machineInstanceId = value
            }
            if let value = dict["QueryTime"] as? String {
                self.queryTime = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UniqueInfo"] as? String {
                self.uniqueInfo = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var alarmUniqueInfo: String?

    public var aliyunLang: String?

    public var uniqueInfo: String?

    public var uniqueTagList: [GetAlertRecordAnalysisResultRequest.UniqueTagList]?

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
        if self.alarmUniqueInfo != nil {
            map["AlarmUniqueInfo"] = self.alarmUniqueInfo!
        }
        if self.aliyunLang != nil {
            map["AliyunLang"] = self.aliyunLang!
        }
        if self.uniqueInfo != nil {
            map["UniqueInfo"] = self.uniqueInfo!
        }
        if self.uniqueTagList != nil {
            var tmp : [Any] = []
            for k in self.uniqueTagList! {
                tmp.append(k.toMap())
            }
            map["UniqueTagList"] = tmp
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmUniqueInfo"] as? String {
            self.alarmUniqueInfo = value
        }
        if let value = dict["AliyunLang"] as? String {
            self.aliyunLang = value
        }
        if let value = dict["UniqueInfo"] as? String {
            self.uniqueInfo = value
        }
        if let value = dict["UniqueTagList"] as? [Any?] {
            var tmp : [GetAlertRecordAnalysisResultRequest.UniqueTagList] = []
            for v in value {
                if v != nil {
                    var model = GetAlertRecordAnalysisResultRequest.UniqueTagList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.uniqueTagList = tmp
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class GetAlertRecordAnalysisResultShrinkRequest : Tea.TeaModel {
    public var alarmUniqueInfo: String?

    public var aliyunLang: String?

    public var uniqueInfo: String?

    public var uniqueTagListShrink: String?

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
        if self.alarmUniqueInfo != nil {
            map["AlarmUniqueInfo"] = self.alarmUniqueInfo!
        }
        if self.aliyunLang != nil {
            map["AliyunLang"] = self.aliyunLang!
        }
        if self.uniqueInfo != nil {
            map["UniqueInfo"] = self.uniqueInfo!
        }
        if self.uniqueTagListShrink != nil {
            map["UniqueTagList"] = self.uniqueTagListShrink!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlarmUniqueInfo"] as? String {
            self.alarmUniqueInfo = value
        }
        if let value = dict["AliyunLang"] as? String {
            self.aliyunLang = value
        }
        if let value = dict["UniqueInfo"] as? String {
            self.uniqueInfo = value
        }
        if let value = dict["UniqueTagList"] as? String {
            self.uniqueTagListShrink = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class GetAlertRecordAnalysisResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class UniqueTagList : Tea.TeaModel {
            public var alarmUniqueInfo: String?

            public var aliUid: String?

            public var analysisCode: String?

            public var analysisResult: String?

            public var chooseLike: Bool?

            public var ip: String?

            public var machineInstanceId: String?

            public var type: String?

            public var uniqueInfo: String?

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
                if self.alarmUniqueInfo != nil {
                    map["AlarmUniqueInfo"] = self.alarmUniqueInfo!
                }
                if self.aliUid != nil {
                    map["AliUid"] = self.aliUid!
                }
                if self.analysisCode != nil {
                    map["AnalysisCode"] = self.analysisCode!
                }
                if self.analysisResult != nil {
                    map["AnalysisResult"] = self.analysisResult!
                }
                if self.chooseLike != nil {
                    map["ChooseLike"] = self.chooseLike!
                }
                if self.ip != nil {
                    map["Ip"] = self.ip!
                }
                if self.machineInstanceId != nil {
                    map["MachineInstanceId"] = self.machineInstanceId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.uniqueInfo != nil {
                    map["UniqueInfo"] = self.uniqueInfo!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AlarmUniqueInfo"] as? String {
                    self.alarmUniqueInfo = value
                }
                if let value = dict["AliUid"] as? String {
                    self.aliUid = value
                }
                if let value = dict["AnalysisCode"] as? String {
                    self.analysisCode = value
                }
                if let value = dict["AnalysisResult"] as? String {
                    self.analysisResult = value
                }
                if let value = dict["ChooseLike"] as? Bool {
                    self.chooseLike = value
                }
                if let value = dict["Ip"] as? String {
                    self.ip = value
                }
                if let value = dict["MachineInstanceId"] as? String {
                    self.machineInstanceId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["UniqueInfo"] as? String {
                    self.uniqueInfo = value
                }
                if let value = dict["Uuid"] as? String {
                    self.uuid = value
                }
            }
        }
        public var analysisCode: String?

        public var uniqueTagList: [GetAlertRecordAnalysisResultResponseBody.Data.UniqueTagList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analysisCode != nil {
                map["AnalysisCode"] = self.analysisCode!
            }
            if self.uniqueTagList != nil {
                var tmp : [Any] = []
                for k in self.uniqueTagList! {
                    tmp.append(k.toMap())
                }
                map["UniqueTagList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnalysisCode"] as? String {
                self.analysisCode = value
            }
            if let value = dict["UniqueTagList"] as? [Any?] {
                var tmp : [GetAlertRecordAnalysisResultResponseBody.Data.UniqueTagList] = []
                for v in value {
                    if v != nil {
                        var model = GetAlertRecordAnalysisResultResponseBody.Data.UniqueTagList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.uniqueTagList = tmp
            }
        }
    }
    public var code: String?

    public var data: GetAlertRecordAnalysisResultResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = GetAlertRecordAnalysisResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAlertRecordAnalysisResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAlertRecordAnalysisResultResponseBody?

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
            var model = GetAlertRecordAnalysisResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAliYunSafeCenterResultRequest : Tea.TeaModel {
    public class CreateSimilarSecurityEventsQueryTaskRequest : Tea.TeaModel {
        public var regionId: String?

        public var securityEventId: Int64?

        public var similarEventScenarioCode: String?

        public override init() {
            super.init()
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
            if self.securityEventId != nil {
                map["SecurityEventId"] = self.securityEventId!
            }
            if self.similarEventScenarioCode != nil {
                map["SimilarEventScenarioCode"] = self.similarEventScenarioCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SecurityEventId"] as? Int64 {
                self.securityEventId = value
            }
            if let value = dict["SimilarEventScenarioCode"] as? String {
                self.similarEventScenarioCode = value
            }
        }
    }
    public class DescribeInstancesFullStatusRequest : Tea.TeaModel {
        public var instanceId: [String]?

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
            if let value = dict["InstanceId"] as? [String] {
                self.instanceId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public class DescribeSecurityEventOperationStatusRequest : Tea.TeaModel {
        public var regionId: String?

        public var securityEventIds: [String]?

        public var taskId: Int64?

        public override init() {
            super.init()
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
            if self.securityEventIds != nil {
                map["SecurityEventIds"] = self.securityEventIds!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SecurityEventIds"] as? [String] {
                self.securityEventIds = value
            }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public class DescribeSimilarSecurityEventsRequest : Tea.TeaModel {
        public var regionId: String?

        public var taskId: Int64?

        public override init() {
            super.init()
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public class GetAssetDetailByUuidRequest : Tea.TeaModel {
        public var regionId: String?

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
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public class HandleSecurityEventsRequest : Tea.TeaModel {
        public var alertType: String?

        public var fileMd5: String?

        public var filePath: String?

        public var instanceId: String?

        public var ip: String?

        public var markBatch: String?

        public var markMissParam: String?

        public var operationCode: String?

        public var operationParams: String?

        public var regionId: String?

        public var remark: String?

        public var securityEventIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertType != nil {
                map["AlertType"] = self.alertType!
            }
            if self.fileMd5 != nil {
                map["FileMd5"] = self.fileMd5!
            }
            if self.filePath != nil {
                map["FilePath"] = self.filePath!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.markBatch != nil {
                map["MarkBatch"] = self.markBatch!
            }
            if self.markMissParam != nil {
                map["MarkMissParam"] = self.markMissParam!
            }
            if self.operationCode != nil {
                map["OperationCode"] = self.operationCode!
            }
            if self.operationParams != nil {
                map["OperationParams"] = self.operationParams!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.securityEventIds != nil {
                map["SecurityEventIds"] = self.securityEventIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertType"] as? String {
                self.alertType = value
            }
            if let value = dict["FileMd5"] as? String {
                self.fileMd5 = value
            }
            if let value = dict["FilePath"] as? String {
                self.filePath = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["MarkBatch"] as? String {
                self.markBatch = value
            }
            if let value = dict["MarkMissParam"] as? String {
                self.markMissParam = value
            }
            if let value = dict["OperationCode"] as? String {
                self.operationCode = value
            }
            if let value = dict["OperationParams"] as? String {
                self.operationParams = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["SecurityEventIds"] as? [String] {
                self.securityEventIds = value
            }
        }
    }
    public class HandleSimilarSecurityEventsRequest : Tea.TeaModel {
        public var alertType: String?

        public var instanceId: String?

        public var ip: String?

        public var operationCode: String?

        public var operationParams: String?

        public var regionId: String?

        public var sourceIp: String?

        public var taskId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alertType != nil {
                map["AlertType"] = self.alertType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.operationCode != nil {
                map["OperationCode"] = self.operationCode!
            }
            if self.operationParams != nil {
                map["OperationParams"] = self.operationParams!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.sourceIp != nil {
                map["SourceIp"] = self.sourceIp!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlertType"] as? String {
                self.alertType = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["OperationCode"] as? String {
                self.operationCode = value
            }
            if let value = dict["OperationParams"] as? String {
                self.operationParams = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SourceIp"] as? String {
                self.sourceIp = value
            }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public class ListInstancesRequest : Tea.TeaModel {
        public var instanceIds: String?

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
            if self.instanceIds != nil {
                map["InstanceIds"] = self.instanceIds!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceIds"] as? String {
                self.instanceIds = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var createSimilarSecurityEventsQueryTaskRequest: GetAliYunSafeCenterResultRequest.CreateSimilarSecurityEventsQueryTaskRequest?

    public var describeInstancesFullStatusRequest: GetAliYunSafeCenterResultRequest.DescribeInstancesFullStatusRequest?

    public var describeSecurityEventOperationStatusRequest: GetAliYunSafeCenterResultRequest.DescribeSecurityEventOperationStatusRequest?

    public var describeSimilarSecurityEventsRequest: GetAliYunSafeCenterResultRequest.DescribeSimilarSecurityEventsRequest?

    public var getAssetDetailByUuidRequest: GetAliYunSafeCenterResultRequest.GetAssetDetailByUuidRequest?

    public var handleSecurityEventsRequest: GetAliYunSafeCenterResultRequest.HandleSecurityEventsRequest?

    public var handleSimilarSecurityEventsRequest: GetAliYunSafeCenterResultRequest.HandleSimilarSecurityEventsRequest?

    public var interfaceCode: String?

    public var listInstancesRequest: GetAliYunSafeCenterResultRequest.ListInstancesRequest?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createSimilarSecurityEventsQueryTaskRequest?.validate()
        try self.describeInstancesFullStatusRequest?.validate()
        try self.describeSecurityEventOperationStatusRequest?.validate()
        try self.describeSimilarSecurityEventsRequest?.validate()
        try self.getAssetDetailByUuidRequest?.validate()
        try self.handleSecurityEventsRequest?.validate()
        try self.handleSimilarSecurityEventsRequest?.validate()
        try self.listInstancesRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createSimilarSecurityEventsQueryTaskRequest != nil {
            map["CreateSimilarSecurityEventsQueryTaskRequest"] = self.createSimilarSecurityEventsQueryTaskRequest?.toMap()
        }
        if self.describeInstancesFullStatusRequest != nil {
            map["DescribeInstancesFullStatusRequest"] = self.describeInstancesFullStatusRequest?.toMap()
        }
        if self.describeSecurityEventOperationStatusRequest != nil {
            map["DescribeSecurityEventOperationStatusRequest"] = self.describeSecurityEventOperationStatusRequest?.toMap()
        }
        if self.describeSimilarSecurityEventsRequest != nil {
            map["DescribeSimilarSecurityEventsRequest"] = self.describeSimilarSecurityEventsRequest?.toMap()
        }
        if self.getAssetDetailByUuidRequest != nil {
            map["GetAssetDetailByUuidRequest"] = self.getAssetDetailByUuidRequest?.toMap()
        }
        if self.handleSecurityEventsRequest != nil {
            map["HandleSecurityEventsRequest"] = self.handleSecurityEventsRequest?.toMap()
        }
        if self.handleSimilarSecurityEventsRequest != nil {
            map["HandleSimilarSecurityEventsRequest"] = self.handleSimilarSecurityEventsRequest?.toMap()
        }
        if self.interfaceCode != nil {
            map["InterfaceCode"] = self.interfaceCode!
        }
        if self.listInstancesRequest != nil {
            map["ListInstancesRequest"] = self.listInstancesRequest?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateSimilarSecurityEventsQueryTaskRequest"] as? [String: Any?] {
            var model = GetAliYunSafeCenterResultRequest.CreateSimilarSecurityEventsQueryTaskRequest()
            model.fromMap(value)
            self.createSimilarSecurityEventsQueryTaskRequest = model
        }
        if let value = dict["DescribeInstancesFullStatusRequest"] as? [String: Any?] {
            var model = GetAliYunSafeCenterResultRequest.DescribeInstancesFullStatusRequest()
            model.fromMap(value)
            self.describeInstancesFullStatusRequest = model
        }
        if let value = dict["DescribeSecurityEventOperationStatusRequest"] as? [String: Any?] {
            var model = GetAliYunSafeCenterResultRequest.DescribeSecurityEventOperationStatusRequest()
            model.fromMap(value)
            self.describeSecurityEventOperationStatusRequest = model
        }
        if let value = dict["DescribeSimilarSecurityEventsRequest"] as? [String: Any?] {
            var model = GetAliYunSafeCenterResultRequest.DescribeSimilarSecurityEventsRequest()
            model.fromMap(value)
            self.describeSimilarSecurityEventsRequest = model
        }
        if let value = dict["GetAssetDetailByUuidRequest"] as? [String: Any?] {
            var model = GetAliYunSafeCenterResultRequest.GetAssetDetailByUuidRequest()
            model.fromMap(value)
            self.getAssetDetailByUuidRequest = model
        }
        if let value = dict["HandleSecurityEventsRequest"] as? [String: Any?] {
            var model = GetAliYunSafeCenterResultRequest.HandleSecurityEventsRequest()
            model.fromMap(value)
            self.handleSecurityEventsRequest = model
        }
        if let value = dict["HandleSimilarSecurityEventsRequest"] as? [String: Any?] {
            var model = GetAliYunSafeCenterResultRequest.HandleSimilarSecurityEventsRequest()
            model.fromMap(value)
            self.handleSimilarSecurityEventsRequest = model
        }
        if let value = dict["InterfaceCode"] as? String {
            self.interfaceCode = value
        }
        if let value = dict["ListInstancesRequest"] as? [String: Any?] {
            var model = GetAliYunSafeCenterResultRequest.ListInstancesRequest()
            model.fromMap(value)
            self.listInstancesRequest = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetAliYunSafeCenterResultShrinkRequest : Tea.TeaModel {
    public var createSimilarSecurityEventsQueryTaskRequestShrink: String?

    public var describeInstancesFullStatusRequestShrink: String?

    public var describeSecurityEventOperationStatusRequestShrink: String?

    public var describeSimilarSecurityEventsRequestShrink: String?

    public var getAssetDetailByUuidRequestShrink: String?

    public var handleSecurityEventsRequestShrink: String?

    public var handleSimilarSecurityEventsRequestShrink: String?

    public var interfaceCode: String?

    public var listInstancesRequestShrink: String?

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
        if self.createSimilarSecurityEventsQueryTaskRequestShrink != nil {
            map["CreateSimilarSecurityEventsQueryTaskRequest"] = self.createSimilarSecurityEventsQueryTaskRequestShrink!
        }
        if self.describeInstancesFullStatusRequestShrink != nil {
            map["DescribeInstancesFullStatusRequest"] = self.describeInstancesFullStatusRequestShrink!
        }
        if self.describeSecurityEventOperationStatusRequestShrink != nil {
            map["DescribeSecurityEventOperationStatusRequest"] = self.describeSecurityEventOperationStatusRequestShrink!
        }
        if self.describeSimilarSecurityEventsRequestShrink != nil {
            map["DescribeSimilarSecurityEventsRequest"] = self.describeSimilarSecurityEventsRequestShrink!
        }
        if self.getAssetDetailByUuidRequestShrink != nil {
            map["GetAssetDetailByUuidRequest"] = self.getAssetDetailByUuidRequestShrink!
        }
        if self.handleSecurityEventsRequestShrink != nil {
            map["HandleSecurityEventsRequest"] = self.handleSecurityEventsRequestShrink!
        }
        if self.handleSimilarSecurityEventsRequestShrink != nil {
            map["HandleSimilarSecurityEventsRequest"] = self.handleSimilarSecurityEventsRequestShrink!
        }
        if self.interfaceCode != nil {
            map["InterfaceCode"] = self.interfaceCode!
        }
        if self.listInstancesRequestShrink != nil {
            map["ListInstancesRequest"] = self.listInstancesRequestShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateSimilarSecurityEventsQueryTaskRequest"] as? String {
            self.createSimilarSecurityEventsQueryTaskRequestShrink = value
        }
        if let value = dict["DescribeInstancesFullStatusRequest"] as? String {
            self.describeInstancesFullStatusRequestShrink = value
        }
        if let value = dict["DescribeSecurityEventOperationStatusRequest"] as? String {
            self.describeSecurityEventOperationStatusRequestShrink = value
        }
        if let value = dict["DescribeSimilarSecurityEventsRequest"] as? String {
            self.describeSimilarSecurityEventsRequestShrink = value
        }
        if let value = dict["GetAssetDetailByUuidRequest"] as? String {
            self.getAssetDetailByUuidRequestShrink = value
        }
        if let value = dict["HandleSecurityEventsRequest"] as? String {
            self.handleSecurityEventsRequestShrink = value
        }
        if let value = dict["HandleSimilarSecurityEventsRequest"] as? String {
            self.handleSimilarSecurityEventsRequestShrink = value
        }
        if let value = dict["InterfaceCode"] as? String {
            self.interfaceCode = value
        }
        if let value = dict["ListInstancesRequest"] as? String {
            self.listInstancesRequestShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetAliYunSafeCenterResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var agentStatus: Bool?

        public var ecsInstanceStatus: Bool?

        public var instanceIds: [Int64]?

        public var requestId: String?

        public var swasInstanceStatus: Bool?

        public var taskId: Int64?

        public var taskStatus: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentStatus != nil {
                map["AgentStatus"] = self.agentStatus!
            }
            if self.ecsInstanceStatus != nil {
                map["EcsInstanceStatus"] = self.ecsInstanceStatus!
            }
            if self.instanceIds != nil {
                map["InstanceIds"] = self.instanceIds!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.swasInstanceStatus != nil {
                map["SwasInstanceStatus"] = self.swasInstanceStatus!
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
            if let value = dict["AgentStatus"] as? Bool {
                self.agentStatus = value
            }
            if let value = dict["EcsInstanceStatus"] as? Bool {
                self.ecsInstanceStatus = value
            }
            if let value = dict["InstanceIds"] as? [Int64] {
                self.instanceIds = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["SwasInstanceStatus"] as? Bool {
                self.swasInstanceStatus = value
            }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
            if let value = dict["TaskStatus"] as? Bool {
                self.taskStatus = value
            }
        }
    }
    public var code: String?

    public var data: GetAliYunSafeCenterResultResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = GetAliYunSafeCenterResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetAliYunSafeCenterResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAliYunSafeCenterResultResponseBody?

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
            var model = GetAliYunSafeCenterResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCanTrySasRequest : Tea.TeaModel {
    public class SdkRequest : Tea.TeaModel {
        public var fromEcs: Bool?

        public var lang: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fromEcs != nil {
                map["FromEcs"] = self.fromEcs!
            }
            if self.lang != nil {
                map["Lang"] = self.lang!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FromEcs"] as? Bool {
                self.fromEcs = value
            }
            if let value = dict["Lang"] as? String {
                self.lang = value
            }
        }
    }
    public var regionId: String?

    public var sdkRequest: GetCanTrySasRequest.SdkRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sdkRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sdkRequest != nil {
            map["SdkRequest"] = self.sdkRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? [String: Any?] {
            var model = GetCanTrySasRequest.SdkRequest()
            model.fromMap(value)
            self.sdkRequest = model
        }
    }
}

public class GetCanTrySasShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var sdkRequestShrink: String?

    public override init() {
        super.init()
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
        if self.sdkRequestShrink != nil {
            map["SdkRequest"] = self.sdkRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? String {
            self.sdkRequestShrink = value
        }
    }
}

public class GetCanTrySasResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Body : Tea.TeaModel {
            public class Data : Tea.TeaModel {
                public var canTry: Int32?

                public var canTryVersions: [Int32]?

                public var tryType: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.canTry != nil {
                        map["CanTry"] = self.canTry!
                    }
                    if self.canTryVersions != nil {
                        map["CanTryVersions"] = self.canTryVersions!
                    }
                    if self.tryType != nil {
                        map["TryType"] = self.tryType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CanTry"] as? Int32 {
                        self.canTry = value
                    }
                    if let value = dict["CanTryVersions"] as? [Int32] {
                        self.canTryVersions = value
                    }
                    if let value = dict["TryType"] as? Int32 {
                        self.tryType = value
                    }
                }
            }
            public var data: GetCanTrySasResponseBody.Data.Body.Data?

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
                    var model = GetCanTrySasResponseBody.Data.Body.Data()
                    model.fromMap(value)
                    self.data = model
                }
                if let value = dict["RequestId"] as? String {
                    self.requestId = value
                }
            }
        }
        public var body: GetCanTrySasResponseBody.Data.Body?

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
            if self.body != nil {
                map["Body"] = self.body?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Body"] as? [String: Any?] {
                var model = GetCanTrySasResponseBody.Data.Body()
                model.fromMap(value)
                self.body = model
            }
        }
    }
    public var code: String?

    public var data: GetCanTrySasResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = GetCanTrySasResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCanTrySasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCanTrySasResponseBody?

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
            var model = GetCanTrySasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDisposalToolStatusRequest : Tea.TeaModel {
    public var authType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
    }
}

public class GetDisposalToolStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var status: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Status"] as? Bool {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: GetDisposalToolStatusResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = GetDisposalToolStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDisposalToolStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDisposalToolStatusResponseBody?

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
            var model = GetDisposalToolStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetValidDeductInstancesRequest : Tea.TeaModel {
    public class SdkRequest : Tea.TeaModel {
        public var instanceId: String?

        public var modules: String?

        public var status: Int32?

        public override init() {
            super.init()
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
            if self.modules != nil {
                map["Modules"] = self.modules!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Modules"] as? String {
                self.modules = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var regionId: String?

    public var sdkRequest: GetValidDeductInstancesRequest.SdkRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sdkRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sdkRequest != nil {
            map["SdkRequest"] = self.sdkRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? [String: Any?] {
            var model = GetValidDeductInstancesRequest.SdkRequest()
            model.fromMap(value)
            self.sdkRequest = model
        }
    }
}

public class GetValidDeductInstancesShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var sdkRequestShrink: String?

    public override init() {
        super.init()
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
        if self.sdkRequestShrink != nil {
            map["SdkRequest"] = self.sdkRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? String {
            self.sdkRequestShrink = value
        }
    }
}

public class GetValidDeductInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Body : Tea.TeaModel {
            public class Data : Tea.TeaModel {
                public class DeductPackageList : Tea.TeaModel {
                    public var currentPeriodUsed: Int64?

                    public var endTime: Int64?

                    public var initCapacity: Double?

                    public var instanceId: String?

                    public var module: String?

                    public var periodCapacity: Double?

                    public var startTime: Int64?

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
                        if self.currentPeriodUsed != nil {
                            map["CurrentPeriodUsed"] = self.currentPeriodUsed!
                        }
                        if self.endTime != nil {
                            map["EndTime"] = self.endTime!
                        }
                        if self.initCapacity != nil {
                            map["InitCapacity"] = self.initCapacity!
                        }
                        if self.instanceId != nil {
                            map["InstanceId"] = self.instanceId!
                        }
                        if self.module != nil {
                            map["Module"] = self.module!
                        }
                        if self.periodCapacity != nil {
                            map["PeriodCapacity"] = self.periodCapacity!
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
                        if let value = dict["CurrentPeriodUsed"] as? Int64 {
                            self.currentPeriodUsed = value
                        }
                        if let value = dict["EndTime"] as? Int64 {
                            self.endTime = value
                        }
                        if let value = dict["InitCapacity"] as? Double {
                            self.initCapacity = value
                        }
                        if let value = dict["InstanceId"] as? String {
                            self.instanceId = value
                        }
                        if let value = dict["Module"] as? String {
                            self.module = value
                        }
                        if let value = dict["PeriodCapacity"] as? Double {
                            self.periodCapacity = value
                        }
                        if let value = dict["StartTime"] as? Int64 {
                            self.startTime = value
                        }
                        if let value = dict["Status"] as? String {
                            self.status = value
                        }
                    }
                }
                public var canTry: Bool?

                public var deductPackageList: [GetValidDeductInstancesResponseBody.Data.Body.Data.DeductPackageList]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.canTry != nil {
                        map["CanTry"] = self.canTry!
                    }
                    if self.deductPackageList != nil {
                        var tmp : [Any] = []
                        for k in self.deductPackageList! {
                            tmp.append(k.toMap())
                        }
                        map["DeductPackageList"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CanTry"] as? Bool {
                        self.canTry = value
                    }
                    if let value = dict["DeductPackageList"] as? [Any?] {
                        var tmp : [GetValidDeductInstancesResponseBody.Data.Body.Data.DeductPackageList] = []
                        for v in value {
                            if v != nil {
                                var model = GetValidDeductInstancesResponseBody.Data.Body.Data.DeductPackageList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.deductPackageList = tmp
                    }
                }
            }
            public var data: GetValidDeductInstancesResponseBody.Data.Body.Data?

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
                    var model = GetValidDeductInstancesResponseBody.Data.Body.Data()
                    model.fromMap(value)
                    self.data = model
                }
                if let value = dict["RequestId"] as? String {
                    self.requestId = value
                }
            }
        }
        public var body: GetValidDeductInstancesResponseBody.Data.Body?

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
            if self.body != nil {
                map["Body"] = self.body?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Body"] as? [String: Any?] {
                var model = GetValidDeductInstancesResponseBody.Data.Body()
                model.fromMap(value)
                self.body = model
            }
        }
    }
    public var code: String?

    public var data: GetValidDeductInstancesResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = GetValidDeductInstancesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetValidDeductInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetValidDeductInstancesResponseBody?

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
            var model = GetValidDeductInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InitSasModuleRuleRequest : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var cores: String?

        public var instanceId: String?

        public var regionId: String?

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
            if self.cores != nil {
                map["Cores"] = self.cores!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cores"] as? String {
                self.cores = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
        }
    }
    public var autoBind: Int32?

    public var instances: [InitSasModuleRuleRequest.Instances]?

    public var isTrial: Bool?

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
        if self.autoBind != nil {
            map["AutoBind"] = self.autoBind!
        }
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
        }
        if self.isTrial != nil {
            map["IsTrial"] = self.isTrial!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoBind"] as? Int32 {
            self.autoBind = value
        }
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [InitSasModuleRuleRequest.Instances] = []
            for v in value {
                if v != nil {
                    var model = InitSasModuleRuleRequest.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
        if let value = dict["IsTrial"] as? Bool {
            self.isTrial = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class InitSasModuleRuleShrinkRequest : Tea.TeaModel {
    public var autoBind: Int32?

    public var instancesShrink: String?

    public var isTrial: Bool?

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
        if self.autoBind != nil {
            map["AutoBind"] = self.autoBind!
        }
        if self.instancesShrink != nil {
            map["Instances"] = self.instancesShrink!
        }
        if self.isTrial != nil {
            map["IsTrial"] = self.isTrial!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoBind"] as? Int32 {
            self.autoBind = value
        }
        if let value = dict["Instances"] as? String {
            self.instancesShrink = value
        }
        if let value = dict["IsTrial"] as? Bool {
            self.isTrial = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class InitSasModuleRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var code: String?

    public var data: InitSasModuleRuleResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = InitSasModuleRuleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class InitSasModuleRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitSasModuleRuleResponseBody?

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
            var model = InitSasModuleRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVirusScanMachineEventRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var lang: String?

    public var operateTaskId: String?

    public var pageSize: Int32?

    public var regionId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.operateTaskId != nil {
            map["OperateTaskId"] = self.operateTaskId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["OperateTaskId"] as? String {
            self.operateTaskId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class ListVirusScanMachineEventResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VirusScanLatestTaskStatistic : Tea.TeaModel {
            public var completeMachine: Int32?

            public var machineName: String?

            public var progress: String?

            public var riskLevel: String?

            public var safeMachine: Int32?

            public var scanMachine: Int32?

            public var scanPath: [String]?

            public var scanTime: Int64?

            public var scanType: String?

            public var status: Int32?

            public var suspiciousCount: Int32?

            public var suspiciousMachine: Int32?

            public var taskId: String?

            public var unCompleteMachine: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.completeMachine != nil {
                    map["CompleteMachine"] = self.completeMachine!
                }
                if self.machineName != nil {
                    map["MachineName"] = self.machineName!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.riskLevel != nil {
                    map["RiskLevel"] = self.riskLevel!
                }
                if self.safeMachine != nil {
                    map["SafeMachine"] = self.safeMachine!
                }
                if self.scanMachine != nil {
                    map["ScanMachine"] = self.scanMachine!
                }
                if self.scanPath != nil {
                    map["ScanPath"] = self.scanPath!
                }
                if self.scanTime != nil {
                    map["ScanTime"] = self.scanTime!
                }
                if self.scanType != nil {
                    map["ScanType"] = self.scanType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.suspiciousCount != nil {
                    map["SuspiciousCount"] = self.suspiciousCount!
                }
                if self.suspiciousMachine != nil {
                    map["SuspiciousMachine"] = self.suspiciousMachine!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.unCompleteMachine != nil {
                    map["UnCompleteMachine"] = self.unCompleteMachine!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CompleteMachine"] as? Int32 {
                    self.completeMachine = value
                }
                if let value = dict["MachineName"] as? String {
                    self.machineName = value
                }
                if let value = dict["Progress"] as? String {
                    self.progress = value
                }
                if let value = dict["RiskLevel"] as? String {
                    self.riskLevel = value
                }
                if let value = dict["SafeMachine"] as? Int32 {
                    self.safeMachine = value
                }
                if let value = dict["ScanMachine"] as? Int32 {
                    self.scanMachine = value
                }
                if let value = dict["ScanPath"] as? [String] {
                    self.scanPath = value
                }
                if let value = dict["ScanTime"] as? Int64 {
                    self.scanTime = value
                }
                if let value = dict["ScanType"] as? String {
                    self.scanType = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["SuspiciousCount"] as? Int32 {
                    self.suspiciousCount = value
                }
                if let value = dict["SuspiciousMachine"] as? Int32 {
                    self.suspiciousMachine = value
                }
                if let value = dict["TaskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["UnCompleteMachine"] as? Int32 {
                    self.unCompleteMachine = value
                }
            }
        }
        public class VirusScanMachineEventList : Tea.TeaModel {
            public class Data : Tea.TeaModel {
                public class Details : Tea.TeaModel {
                    public var infoType: String?

                    public var nameDisplay: String?

                    public var type: String?

                    public var valueDisplay: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.infoType != nil {
                            map["InfoType"] = self.infoType!
                        }
                        if self.nameDisplay != nil {
                            map["NameDisplay"] = self.nameDisplay!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.valueDisplay != nil {
                            map["ValueDisplay"] = self.valueDisplay!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["InfoType"] as? String {
                            self.infoType = value
                        }
                        if let value = dict["NameDisplay"] as? String {
                            self.nameDisplay = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                        if let value = dict["ValueDisplay"] as? String {
                            self.valueDisplay = value
                        }
                    }
                }
                public var details: [ListVirusScanMachineEventResponseBody.Data.VirusScanMachineEventList.Data.Details]?

                public var eventId: Int64?

                public var eventName: String?

                public var instanceName: String?

                public var internetIp: String?

                public var intranetIp: String?

                public var lastTimeStamp: Int64?

                public var level: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.details != nil {
                        var tmp : [Any] = []
                        for k in self.details! {
                            tmp.append(k.toMap())
                        }
                        map["Details"] = tmp
                    }
                    if self.eventId != nil {
                        map["EventId"] = self.eventId!
                    }
                    if self.eventName != nil {
                        map["EventName"] = self.eventName!
                    }
                    if self.instanceName != nil {
                        map["InstanceName"] = self.instanceName!
                    }
                    if self.internetIp != nil {
                        map["InternetIp"] = self.internetIp!
                    }
                    if self.intranetIp != nil {
                        map["IntranetIp"] = self.intranetIp!
                    }
                    if self.lastTimeStamp != nil {
                        map["LastTimeStamp"] = self.lastTimeStamp!
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Details"] as? [Any?] {
                        var tmp : [ListVirusScanMachineEventResponseBody.Data.VirusScanMachineEventList.Data.Details] = []
                        for v in value {
                            if v != nil {
                                var model = ListVirusScanMachineEventResponseBody.Data.VirusScanMachineEventList.Data.Details()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.details = tmp
                    }
                    if let value = dict["EventId"] as? Int64 {
                        self.eventId = value
                    }
                    if let value = dict["EventName"] as? String {
                        self.eventName = value
                    }
                    if let value = dict["InstanceName"] as? String {
                        self.instanceName = value
                    }
                    if let value = dict["InternetIp"] as? String {
                        self.internetIp = value
                    }
                    if let value = dict["IntranetIp"] as? String {
                        self.intranetIp = value
                    }
                    if let value = dict["LastTimeStamp"] as? Int64 {
                        self.lastTimeStamp = value
                    }
                    if let value = dict["Level"] as? String {
                        self.level = value
                    }
                }
            }
            public class PageInfo : Tea.TeaModel {
                public var currentPage: Int32?

                public var pageSize: Int32?

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
                    if self.currentPage != nil {
                        map["CurrentPage"] = self.currentPage!
                    }
                    if self.pageSize != nil {
                        map["PageSize"] = self.pageSize!
                    }
                    if self.totalCount != nil {
                        map["TotalCount"] = self.totalCount!
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
                    if let value = dict["TotalCount"] as? Int32 {
                        self.totalCount = value
                    }
                }
            }
            public var data: [ListVirusScanMachineEventResponseBody.Data.VirusScanMachineEventList.Data]?

            public var pageInfo: ListVirusScanMachineEventResponseBody.Data.VirusScanMachineEventList.PageInfo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.pageInfo?.validate()
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
                if self.pageInfo != nil {
                    map["PageInfo"] = self.pageInfo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Data"] as? [Any?] {
                    var tmp : [ListVirusScanMachineEventResponseBody.Data.VirusScanMachineEventList.Data] = []
                    for v in value {
                        if v != nil {
                            var model = ListVirusScanMachineEventResponseBody.Data.VirusScanMachineEventList.Data()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.data = tmp
                }
                if let value = dict["PageInfo"] as? [String: Any?] {
                    var model = ListVirusScanMachineEventResponseBody.Data.VirusScanMachineEventList.PageInfo()
                    model.fromMap(value)
                    self.pageInfo = model
                }
            }
        }
        public var requestId: String?

        public var virusScanLatestTaskStatistic: ListVirusScanMachineEventResponseBody.Data.VirusScanLatestTaskStatistic?

        public var virusScanMachineEventList: ListVirusScanMachineEventResponseBody.Data.VirusScanMachineEventList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.virusScanLatestTaskStatistic?.validate()
            try self.virusScanMachineEventList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.virusScanLatestTaskStatistic != nil {
                map["VirusScanLatestTaskStatistic"] = self.virusScanLatestTaskStatistic?.toMap()
            }
            if self.virusScanMachineEventList != nil {
                map["VirusScanMachineEventList"] = self.virusScanMachineEventList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["VirusScanLatestTaskStatistic"] as? [String: Any?] {
                var model = ListVirusScanMachineEventResponseBody.Data.VirusScanLatestTaskStatistic()
                model.fromMap(value)
                self.virusScanLatestTaskStatistic = model
            }
            if let value = dict["VirusScanMachineEventList"] as? [String: Any?] {
                var model = ListVirusScanMachineEventResponseBody.Data.VirusScanMachineEventList()
                model.fromMap(value)
                self.virusScanMachineEventList = model
            }
        }
    }
    public var code: String?

    public var data: ListVirusScanMachineEventResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = ListVirusScanMachineEventResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListVirusScanMachineEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVirusScanMachineEventResponseBody?

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
            var model = ListVirusScanMachineEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OpenTrialPackageRequest : Tea.TeaModel {
    public var autoCloseSwitch: Int32?

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
        if self.autoCloseSwitch != nil {
            map["AutoCloseSwitch"] = self.autoCloseSwitch!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoCloseSwitch"] as? Int32 {
            self.autoCloseSwitch = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class OpenTrialPackageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var code: String?

    public var data: OpenTrialPackageResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = OpenTrialPackageResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class OpenTrialPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenTrialPackageResponseBody?

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
            var model = OpenTrialPackageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySecurityCheckReportRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class QuerySecurityCheckReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cloudSecurityGuide: Int32?

        public var configCheckNumber: Int32?

        public var contactCheckNumber: Int32?

        public var riskEventNumber: Int32?

        public var sasCheckNumber: Int32?

        public var securityStatus: Int32?

        public var suggestionText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cloudSecurityGuide != nil {
                map["CloudSecurityGuide"] = self.cloudSecurityGuide!
            }
            if self.configCheckNumber != nil {
                map["ConfigCheckNumber"] = self.configCheckNumber!
            }
            if self.contactCheckNumber != nil {
                map["ContactCheckNumber"] = self.contactCheckNumber!
            }
            if self.riskEventNumber != nil {
                map["RiskEventNumber"] = self.riskEventNumber!
            }
            if self.sasCheckNumber != nil {
                map["SasCheckNumber"] = self.sasCheckNumber!
            }
            if self.securityStatus != nil {
                map["SecurityStatus"] = self.securityStatus!
            }
            if self.suggestionText != nil {
                map["SuggestionText"] = self.suggestionText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CloudSecurityGuide"] as? Int32 {
                self.cloudSecurityGuide = value
            }
            if let value = dict["ConfigCheckNumber"] as? Int32 {
                self.configCheckNumber = value
            }
            if let value = dict["ContactCheckNumber"] as? Int32 {
                self.contactCheckNumber = value
            }
            if let value = dict["RiskEventNumber"] as? Int32 {
                self.riskEventNumber = value
            }
            if let value = dict["SasCheckNumber"] as? Int32 {
                self.sasCheckNumber = value
            }
            if let value = dict["SecurityStatus"] as? Int32 {
                self.securityStatus = value
            }
            if let value = dict["SuggestionText"] as? String {
                self.suggestionText = value
            }
        }
    }
    public var code: String?

    public var data: QuerySecurityCheckReportResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = QuerySecurityCheckReportResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QuerySecurityCheckReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySecurityCheckReportResponseBody?

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
            var model = QuerySecurityCheckReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartDisposalToolServiceRequest : Tea.TeaModel {
    public var authType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
    }
}

public class StartDisposalToolServiceResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class StartDisposalToolServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDisposalToolServiceResponseBody?

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
            var model = StartDisposalToolServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePostPaidBindRelRequest : Tea.TeaModel {
    public class SdkRequest : Tea.TeaModel {
        public class BindAction : Tea.TeaModel {
            public var bindAll: Bool?

            public var uuidList: [String]?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindAll != nil {
                    map["BindAll"] = self.bindAll!
                }
                if self.uuidList != nil {
                    map["UuidList"] = self.uuidList!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BindAll"] as? Bool {
                    self.bindAll = value
                }
                if let value = dict["UuidList"] as? [String] {
                    self.uuidList = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var autoBind: Int32?

        public var autoBindVersion: Int32?

        public var bindAction: [UpdatePostPaidBindRelRequest.SdkRequest.BindAction]?

        public var updateIfNecessary: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoBind != nil {
                map["AutoBind"] = self.autoBind!
            }
            if self.autoBindVersion != nil {
                map["AutoBindVersion"] = self.autoBindVersion!
            }
            if self.bindAction != nil {
                var tmp : [Any] = []
                for k in self.bindAction! {
                    tmp.append(k.toMap())
                }
                map["BindAction"] = tmp
            }
            if self.updateIfNecessary != nil {
                map["UpdateIfNecessary"] = self.updateIfNecessary!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoBind"] as? Int32 {
                self.autoBind = value
            }
            if let value = dict["AutoBindVersion"] as? Int32 {
                self.autoBindVersion = value
            }
            if let value = dict["BindAction"] as? [Any?] {
                var tmp : [UpdatePostPaidBindRelRequest.SdkRequest.BindAction] = []
                for v in value {
                    if v != nil {
                        var model = UpdatePostPaidBindRelRequest.SdkRequest.BindAction()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bindAction = tmp
            }
            if let value = dict["UpdateIfNecessary"] as? Bool {
                self.updateIfNecessary = value
            }
        }
    }
    public var regionId: String?

    public var sdkRequest: UpdatePostPaidBindRelRequest.SdkRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sdkRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sdkRequest != nil {
            map["SdkRequest"] = self.sdkRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? [String: Any?] {
            var model = UpdatePostPaidBindRelRequest.SdkRequest()
            model.fromMap(value)
            self.sdkRequest = model
        }
    }
}

public class UpdatePostPaidBindRelShrinkRequest : Tea.TeaModel {
    public var regionId: String?

    public var sdkRequestShrink: String?

    public override init() {
        super.init()
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
        if self.sdkRequestShrink != nil {
            map["SdkRequest"] = self.sdkRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SdkRequest"] as? String {
            self.sdkRequestShrink = value
        }
    }
}

public class UpdatePostPaidBindRelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Body : Tea.TeaModel {
            public var bindCount: Int64?

            public var requestId: String?

            public var resultCode: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindCount != nil {
                    map["BindCount"] = self.bindCount!
                }
                if self.requestId != nil {
                    map["RequestId"] = self.requestId!
                }
                if self.resultCode != nil {
                    map["ResultCode"] = self.resultCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BindCount"] as? Int64 {
                    self.bindCount = value
                }
                if let value = dict["RequestId"] as? String {
                    self.requestId = value
                }
                if let value = dict["ResultCode"] as? Int32 {
                    self.resultCode = value
                }
            }
        }
        public var body: UpdatePostPaidBindRelResponseBody.Data.Body?

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
            if self.body != nil {
                map["Body"] = self.body?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Body"] as? [String: Any?] {
                var model = UpdatePostPaidBindRelResponseBody.Data.Body()
                model.fromMap(value)
                self.body = model
            }
        }
    }
    public var code: String?

    public var data: UpdatePostPaidBindRelResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
            var model = UpdatePostPaidBindRelResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdatePostPaidBindRelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePostPaidBindRelResponseBody?

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
            var model = UpdatePostPaidBindRelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
