import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateInstanceRequest : Tea.TeaModel {
    public var concurrency: Int32?

    public var description_: String?

    public var name: String?

    public var serviceMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.serviceMode != nil {
            map["ServiceMode"] = self.serviceMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ServiceMode"] as? String {
            self.serviceMode = value
        }
    }
}

public class CreateInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceResponseBody?

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
            var model = CreateInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class DeleteInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceResponseBody?

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
            var model = DeleteInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var concurrency: Int32?

        public var createdTime: Int64?

        public var description_: String?

        public var instanceId: String?

        public var name: String?

        public var nluProfile: String?

        public var serviceMode: String?

        public var tenantId: String?

        public var updatedTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.concurrency != nil {
                map["Concurrency"] = self.concurrency!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nluProfile != nil {
                map["NluProfile"] = self.nluProfile!
            }
            if self.serviceMode != nil {
                map["ServiceMode"] = self.serviceMode!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.updatedTime != nil {
                map["UpdatedTime"] = self.updatedTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Concurrency"] as? Int32 {
                self.concurrency = value
            }
            if let value = dict["CreatedTime"] as? Int64 {
                self.createdTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NluProfile"] as? String {
                self.nluProfile = value
            }
            if let value = dict["ServiceMode"] as? String {
                self.serviceMode = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["UpdatedTime"] as? Int64 {
                self.updatedTime = value
            }
        }
    }
    public var code: String?

    public var data: GetInstanceResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = GetInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceResponseBody?

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
            var model = GetInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstancesRequest : Tea.TeaModel {
    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Instances : Tea.TeaModel {
            public var concurrency: Int32?

            public var createdTime: Int64?

            public var description_: String?

            public var instanceId: String?

            public var name: String?

            public var serviceMode: String?

            public var tenantId: String?

            public var updatedTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.concurrency != nil {
                    map["Concurrency"] = self.concurrency!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.serviceMode != nil {
                    map["ServiceMode"] = self.serviceMode!
                }
                if self.tenantId != nil {
                    map["TenantId"] = self.tenantId!
                }
                if self.updatedTime != nil {
                    map["UpdatedTime"] = self.updatedTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Concurrency"] as? Int32 {
                    self.concurrency = value
                }
                if let value = dict["CreatedTime"] as? Int64 {
                    self.createdTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ServiceMode"] as? String {
                    self.serviceMode = value
                }
                if let value = dict["TenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["UpdatedTime"] as? Int64 {
                    self.updatedTime = value
                }
            }
        }
        public var instances: [ListInstancesResponseBody.Data.Instances]?

        public var pageNumber: Int32?

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
            if self.instances != nil {
                var tmp : [Any] = []
                for k in self.instances! {
                    tmp.append(k.toMap())
                }
                map["Instances"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
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
            if let value = dict["Instances"] as? [Any?] {
                var tmp : [ListInstancesResponseBody.Data.Instances] = []
                for v in value {
                    if v != nil {
                        var model = ListInstancesResponseBody.Data.Instances()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instances = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ListInstancesResponseBody.Data?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
            var model = ListInstancesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstancesResponseBody?

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
            var model = ListInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceRequest : Tea.TeaModel {
    public var concurrency: Int32?

    public var description_: String?

    public var instanceId: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["Concurrency"] = self.concurrency!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UpdateInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var params: [String]?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.params != nil {
            map["Params"] = self.params!
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Params"] as? [String] {
            self.params = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceResponseBody?

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
            var model = UpdateInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
