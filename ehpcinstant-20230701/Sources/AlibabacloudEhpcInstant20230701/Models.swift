import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddImageRequest : Tea.TeaModel {
    public class ContainerImageSpec : Tea.TeaModel {
        public class RegistryCredential : Tea.TeaModel {
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
        public var isACREnterprise: Bool?

        public var isACRRegistry: Bool?

        public var registryCredential: AddImageRequest.ContainerImageSpec.RegistryCredential?

        public var registryCriId: String?

        public var registryUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.registryCredential?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isACREnterprise != nil {
                map["IsACREnterprise"] = self.isACREnterprise!
            }
            if self.isACRRegistry != nil {
                map["IsACRRegistry"] = self.isACRRegistry!
            }
            if self.registryCredential != nil {
                map["RegistryCredential"] = self.registryCredential?.toMap()
            }
            if self.registryCriId != nil {
                map["RegistryCriId"] = self.registryCriId!
            }
            if self.registryUrl != nil {
                map["RegistryUrl"] = self.registryUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsACREnterprise"] as? Bool {
                self.isACREnterprise = value
            }
            if let value = dict["IsACRRegistry"] as? Bool {
                self.isACRRegistry = value
            }
            if let value = dict["RegistryCredential"] as? [String: Any?] {
                var model = AddImageRequest.ContainerImageSpec.RegistryCredential()
                model.fromMap(value)
                self.registryCredential = model
            }
            if let value = dict["RegistryCriId"] as? String {
                self.registryCriId = value
            }
            if let value = dict["RegistryUrl"] as? String {
                self.registryUrl = value
            }
        }
    }
    public class VMImageSpec : Tea.TeaModel {
        public var imageId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
        }
    }
    public var containerImageSpec: AddImageRequest.ContainerImageSpec?

    public var description_: String?

    public var imageType: String?

    public var imageVersion: String?

    public var name: String?

    public var VMImageSpec: AddImageRequest.VMImageSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.containerImageSpec?.validate()
        try self.VMImageSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerImageSpec != nil {
            map["ContainerImageSpec"] = self.containerImageSpec?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.imageVersion != nil {
            map["ImageVersion"] = self.imageVersion!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.VMImageSpec != nil {
            map["VMImageSpec"] = self.VMImageSpec?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerImageSpec"] as? [String: Any?] {
            var model = AddImageRequest.ContainerImageSpec()
            model.fromMap(value)
            self.containerImageSpec = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
        if let value = dict["ImageVersion"] as? String {
            self.imageVersion = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["VMImageSpec"] as? [String: Any?] {
            var model = AddImageRequest.VMImageSpec()
            model.fromMap(value)
            self.VMImageSpec = model
        }
    }
}

public class AddImageShrinkRequest : Tea.TeaModel {
    public var containerImageSpecShrink: String?

    public var description_: String?

    public var imageType: String?

    public var imageVersion: String?

    public var name: String?

    public var VMImageSpecShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerImageSpecShrink != nil {
            map["ContainerImageSpec"] = self.containerImageSpecShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.imageVersion != nil {
            map["ImageVersion"] = self.imageVersion!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.VMImageSpecShrink != nil {
            map["VMImageSpec"] = self.VMImageSpecShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerImageSpec"] as? String {
            self.containerImageSpecShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
        if let value = dict["ImageVersion"] as? String {
            self.imageVersion = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["VMImageSpec"] as? String {
            self.VMImageSpecShrink = value
        }
    }
}

public class AddImageResponseBody : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
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
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddImageResponseBody?

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
            var model = AddImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateActionPlanRequest : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var regionId: String?

        public var securityGroupId: [String]?

        public var securityGroupIds: [String]?

        public var vSwitchIds: [String]?

        public override init() {
            super.init()
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
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.securityGroupIds != nil {
                map["SecurityGroupIds"] = self.securityGroupIds!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SecurityGroupId"] as? [String] {
                self.securityGroupId = value
            }
            if let value = dict["SecurityGroupIds"] as? [String] {
                self.securityGroupIds = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
        }
    }
    public class Resources : Tea.TeaModel {
        public var cores: Double?

        public var memory: Double?

        public override init() {
            super.init()
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
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cores"] as? Double {
                self.cores = value
            }
            if let value = dict["Memory"] as? Double {
                self.memory = value
            }
        }
    }
    public var actionPlanName: String?

    public var allocationSpec: String?

    public var appId: String?

    public var desiredCapacity: Double?

    public var intervalMinutes: Int32?

    public var level: String?

    public var prologScript: String?

    public var regions: [CreateActionPlanRequest.Regions]?

    public var resourceType: String?

    public var resources: [CreateActionPlanRequest.Resources]?

    public var script: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionPlanName != nil {
            map["ActionPlanName"] = self.actionPlanName!
        }
        if self.allocationSpec != nil {
            map["AllocationSpec"] = self.allocationSpec!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.desiredCapacity != nil {
            map["DesiredCapacity"] = self.desiredCapacity!
        }
        if self.intervalMinutes != nil {
            map["IntervalMinutes"] = self.intervalMinutes!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.prologScript != nil {
            map["PrologScript"] = self.prologScript!
        }
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        if self.script != nil {
            map["Script"] = self.script!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionPlanName"] as? String {
            self.actionPlanName = value
        }
        if let value = dict["AllocationSpec"] as? String {
            self.allocationSpec = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["DesiredCapacity"] as? Double {
            self.desiredCapacity = value
        }
        if let value = dict["IntervalMinutes"] as? Int32 {
            self.intervalMinutes = value
        }
        if let value = dict["Level"] as? String {
            self.level = value
        }
        if let value = dict["PrologScript"] as? String {
            self.prologScript = value
        }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [CreateActionPlanRequest.Regions] = []
            for v in value {
                if v != nil {
                    var model = CreateActionPlanRequest.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [CreateActionPlanRequest.Resources] = []
            for v in value {
                if v != nil {
                    var model = CreateActionPlanRequest.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["Script"] as? String {
            self.script = value
        }
    }
}

public class CreateActionPlanShrinkRequest : Tea.TeaModel {
    public var actionPlanName: String?

    public var allocationSpec: String?

    public var appId: String?

    public var desiredCapacity: Double?

    public var intervalMinutes: Int32?

    public var level: String?

    public var prologScript: String?

    public var regionsShrink: String?

    public var resourceType: String?

    public var resourcesShrink: String?

    public var script: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionPlanName != nil {
            map["ActionPlanName"] = self.actionPlanName!
        }
        if self.allocationSpec != nil {
            map["AllocationSpec"] = self.allocationSpec!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.desiredCapacity != nil {
            map["DesiredCapacity"] = self.desiredCapacity!
        }
        if self.intervalMinutes != nil {
            map["IntervalMinutes"] = self.intervalMinutes!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.prologScript != nil {
            map["PrologScript"] = self.prologScript!
        }
        if self.regionsShrink != nil {
            map["Regions"] = self.regionsShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.resourcesShrink != nil {
            map["Resources"] = self.resourcesShrink!
        }
        if self.script != nil {
            map["Script"] = self.script!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionPlanName"] as? String {
            self.actionPlanName = value
        }
        if let value = dict["AllocationSpec"] as? String {
            self.allocationSpec = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["DesiredCapacity"] as? Double {
            self.desiredCapacity = value
        }
        if let value = dict["IntervalMinutes"] as? Int32 {
            self.intervalMinutes = value
        }
        if let value = dict["Level"] as? String {
            self.level = value
        }
        if let value = dict["PrologScript"] as? String {
            self.prologScript = value
        }
        if let value = dict["Regions"] as? String {
            self.regionsShrink = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Resources"] as? String {
            self.resourcesShrink = value
        }
        if let value = dict["Script"] as? String {
            self.script = value
        }
    }
}

public class CreateActionPlanResponseBody : Tea.TeaModel {
    public var actionPlanId: String?

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
        if self.actionPlanId != nil {
            map["ActionPlanId"] = self.actionPlanId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionPlanId"] as? String {
            self.actionPlanId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateActionPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateActionPlanResponseBody?

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
            var model = CreateActionPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateJobRequest : Tea.TeaModel {
    public class DependencyPolicy : Tea.TeaModel {
        public class JobDependency : Tea.TeaModel {
            public var jobId: String?

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
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var jobDependency: [CreateJobRequest.DependencyPolicy.JobDependency]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobDependency != nil {
                var tmp : [Any] = []
                for k in self.jobDependency! {
                    tmp.append(k.toMap())
                }
                map["JobDependency"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobDependency"] as? [Any?] {
                var tmp : [CreateJobRequest.DependencyPolicy.JobDependency] = []
                for v in value {
                    if v != nil {
                        var model = CreateJobRequest.DependencyPolicy.JobDependency()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.jobDependency = tmp
            }
        }
    }
    public class DeploymentPolicy : Tea.TeaModel {
        public class Network : Tea.TeaModel {
            public var enableExternalIpAddress: Bool?

            public var vswitch: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableExternalIpAddress != nil {
                    map["EnableExternalIpAddress"] = self.enableExternalIpAddress!
                }
                if self.vswitch != nil {
                    map["Vswitch"] = self.vswitch!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnableExternalIpAddress"] as? Bool {
                    self.enableExternalIpAddress = value
                }
                if let value = dict["Vswitch"] as? [String] {
                    self.vswitch = value
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
        public var allocationSpec: String?

        public var level: String?

        public var network: CreateJobRequest.DeploymentPolicy.Network?

        public var pool: String?

        public var priority: Int32?

        public var tag: [CreateJobRequest.DeploymentPolicy.Tag]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.network?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allocationSpec != nil {
                map["AllocationSpec"] = self.allocationSpec!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.network != nil {
                map["Network"] = self.network?.toMap()
            }
            if self.pool != nil {
                map["Pool"] = self.pool!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
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
            if let value = dict["AllocationSpec"] as? String {
                self.allocationSpec = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["Network"] as? [String: Any?] {
                var model = CreateJobRequest.DeploymentPolicy.Network()
                model.fromMap(value)
                self.network = model
            }
            if let value = dict["Pool"] as? String {
                self.pool = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [CreateJobRequest.DeploymentPolicy.Tag] = []
                for v in value {
                    if v != nil {
                        var model = CreateJobRequest.DeploymentPolicy.Tag()
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
    public class SecurityPolicy : Tea.TeaModel {
        public class SecurityGroup : Tea.TeaModel {
            public var securityGroupIds: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.securityGroupIds != nil {
                    map["SecurityGroupIds"] = self.securityGroupIds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SecurityGroupIds"] as? [String] {
                    self.securityGroupIds = value
                }
            }
        }
        public var securityGroup: CreateJobRequest.SecurityPolicy.SecurityGroup?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.securityGroup?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityGroup != nil {
                map["SecurityGroup"] = self.securityGroup?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecurityGroup"] as? [String: Any?] {
                var model = CreateJobRequest.SecurityPolicy.SecurityGroup()
                model.fromMap(value)
                self.securityGroup = model
            }
        }
    }
    public class Tasks : Tea.TeaModel {
        public class ExecutorPolicy : Tea.TeaModel {
            public class ArraySpec : Tea.TeaModel {
                public var indexEnd: Int32?

                public var indexStart: Int32?

                public var indexStep: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.indexEnd != nil {
                        map["IndexEnd"] = self.indexEnd!
                    }
                    if self.indexStart != nil {
                        map["IndexStart"] = self.indexStart!
                    }
                    if self.indexStep != nil {
                        map["IndexStep"] = self.indexStep!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["IndexEnd"] as? Int32 {
                        self.indexEnd = value
                    }
                    if let value = dict["IndexStart"] as? Int32 {
                        self.indexStart = value
                    }
                    if let value = dict["IndexStep"] as? Int32 {
                        self.indexStep = value
                    }
                }
            }
            public var arraySpec: CreateJobRequest.Tasks.ExecutorPolicy.ArraySpec?

            public var maxCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.arraySpec?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arraySpec != nil {
                    map["ArraySpec"] = self.arraySpec?.toMap()
                }
                if self.maxCount != nil {
                    map["MaxCount"] = self.maxCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArraySpec"] as? [String: Any?] {
                    var model = CreateJobRequest.Tasks.ExecutorPolicy.ArraySpec()
                    model.fromMap(value)
                    self.arraySpec = model
                }
                if let value = dict["MaxCount"] as? Int32 {
                    self.maxCount = value
                }
            }
        }
        public class TaskSpec : Tea.TeaModel {
            public class Resource : Tea.TeaModel {
                public class Disks : Tea.TeaModel {
                    public var size: Int32?

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
                        if self.size != nil {
                            map["Size"] = self.size!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Size"] as? Int32 {
                            self.size = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var cores: Double?

                public var disks: [CreateJobRequest.Tasks.TaskSpec.Resource.Disks]?

                public var enableHT: Bool?

                public var hostNamePrefix: String?

                public var instanceTypes: [String]?

                public var memory: Double?

                public override init() {
                    super.init()
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
                    if self.disks != nil {
                        var tmp : [Any] = []
                        for k in self.disks! {
                            tmp.append(k.toMap())
                        }
                        map["Disks"] = tmp
                    }
                    if self.enableHT != nil {
                        map["EnableHT"] = self.enableHT!
                    }
                    if self.hostNamePrefix != nil {
                        map["HostNamePrefix"] = self.hostNamePrefix!
                    }
                    if self.instanceTypes != nil {
                        map["InstanceTypes"] = self.instanceTypes!
                    }
                    if self.memory != nil {
                        map["Memory"] = self.memory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Cores"] as? Double {
                        self.cores = value
                    }
                    if let value = dict["Disks"] as? [Any?] {
                        var tmp : [CreateJobRequest.Tasks.TaskSpec.Resource.Disks] = []
                        for v in value {
                            if v != nil {
                                var model = CreateJobRequest.Tasks.TaskSpec.Resource.Disks()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.disks = tmp
                    }
                    if let value = dict["EnableHT"] as? Bool {
                        self.enableHT = value
                    }
                    if let value = dict["HostNamePrefix"] as? String {
                        self.hostNamePrefix = value
                    }
                    if let value = dict["InstanceTypes"] as? [String] {
                        self.instanceTypes = value
                    }
                    if let value = dict["Memory"] as? Double {
                        self.memory = value
                    }
                }
            }
            public class RetryPolicy : Tea.TeaModel {
                public class ExitCodeActions : Tea.TeaModel {
                    public var action: String?

                    public var exitCode: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.action != nil {
                            map["Action"] = self.action!
                        }
                        if self.exitCode != nil {
                            map["ExitCode"] = self.exitCode!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Action"] as? String {
                            self.action = value
                        }
                        if let value = dict["ExitCode"] as? Int64 {
                            self.exitCode = value
                        }
                    }
                }
                public var exitCodeActions: [CreateJobRequest.Tasks.TaskSpec.RetryPolicy.ExitCodeActions]?

                public var retryCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.exitCodeActions != nil {
                        var tmp : [Any] = []
                        for k in self.exitCodeActions! {
                            tmp.append(k.toMap())
                        }
                        map["ExitCodeActions"] = tmp
                    }
                    if self.retryCount != nil {
                        map["RetryCount"] = self.retryCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ExitCodeActions"] as? [Any?] {
                        var tmp : [CreateJobRequest.Tasks.TaskSpec.RetryPolicy.ExitCodeActions] = []
                        for v in value {
                            if v != nil {
                                var model = CreateJobRequest.Tasks.TaskSpec.RetryPolicy.ExitCodeActions()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.exitCodeActions = tmp
                    }
                    if let value = dict["RetryCount"] as? Int32 {
                        self.retryCount = value
                    }
                }
            }
            public class TaskExecutor : Tea.TeaModel {
                public class Container : Tea.TeaModel {
                    public class EnvironmentVars : Tea.TeaModel {
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
                    public var appId: String?

                    public var arg: [String]?

                    public var command: [String]?

                    public var environmentVars: [CreateJobRequest.Tasks.TaskSpec.TaskExecutor.Container.EnvironmentVars]?

                    public var image: String?

                    public var workingDir: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appId != nil {
                            map["AppId"] = self.appId!
                        }
                        if self.arg != nil {
                            map["Arg"] = self.arg!
                        }
                        if self.command != nil {
                            map["Command"] = self.command!
                        }
                        if self.environmentVars != nil {
                            var tmp : [Any] = []
                            for k in self.environmentVars! {
                                tmp.append(k.toMap())
                            }
                            map["EnvironmentVars"] = tmp
                        }
                        if self.image != nil {
                            map["Image"] = self.image!
                        }
                        if self.workingDir != nil {
                            map["WorkingDir"] = self.workingDir!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AppId"] as? String {
                            self.appId = value
                        }
                        if let value = dict["Arg"] as? [String] {
                            self.arg = value
                        }
                        if let value = dict["Command"] as? [String] {
                            self.command = value
                        }
                        if let value = dict["EnvironmentVars"] as? [Any?] {
                            var tmp : [CreateJobRequest.Tasks.TaskSpec.TaskExecutor.Container.EnvironmentVars] = []
                            for v in value {
                                if v != nil {
                                    var model = CreateJobRequest.Tasks.TaskSpec.TaskExecutor.Container.EnvironmentVars()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.environmentVars = tmp
                        }
                        if let value = dict["Image"] as? String {
                            self.image = value
                        }
                        if let value = dict["WorkingDir"] as? String {
                            self.workingDir = value
                        }
                    }
                }
                public class VM : Tea.TeaModel {
                    public var appId: String?

                    public var image: String?

                    public var password: String?

                    public var prologScript: String?

                    public var script: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appId != nil {
                            map["AppId"] = self.appId!
                        }
                        if self.image != nil {
                            map["Image"] = self.image!
                        }
                        if self.password != nil {
                            map["Password"] = self.password!
                        }
                        if self.prologScript != nil {
                            map["PrologScript"] = self.prologScript!
                        }
                        if self.script != nil {
                            map["Script"] = self.script!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AppId"] as? String {
                            self.appId = value
                        }
                        if let value = dict["Image"] as? String {
                            self.image = value
                        }
                        if let value = dict["Password"] as? String {
                            self.password = value
                        }
                        if let value = dict["PrologScript"] as? String {
                            self.prologScript = value
                        }
                        if let value = dict["Script"] as? String {
                            self.script = value
                        }
                    }
                }
                public var container: CreateJobRequest.Tasks.TaskSpec.TaskExecutor.Container?

                public var VM: CreateJobRequest.Tasks.TaskSpec.TaskExecutor.VM?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.container?.validate()
                    try self.VM?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.container != nil {
                        map["Container"] = self.container?.toMap()
                    }
                    if self.VM != nil {
                        map["VM"] = self.VM?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Container"] as? [String: Any?] {
                        var model = CreateJobRequest.Tasks.TaskSpec.TaskExecutor.Container()
                        model.fromMap(value)
                        self.container = model
                    }
                    if let value = dict["VM"] as? [String: Any?] {
                        var model = CreateJobRequest.Tasks.TaskSpec.TaskExecutor.VM()
                        model.fromMap(value)
                        self.VM = model
                    }
                }
            }
            public class VolumeMount : Tea.TeaModel {
                public var mountOptions: String?

                public var mountPath: String?

                public var readOnly: Bool?

                public var volumeDriver: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mountOptions != nil {
                        map["MountOptions"] = self.mountOptions!
                    }
                    if self.mountPath != nil {
                        map["MountPath"] = self.mountPath!
                    }
                    if self.readOnly != nil {
                        map["ReadOnly"] = self.readOnly!
                    }
                    if self.volumeDriver != nil {
                        map["VolumeDriver"] = self.volumeDriver!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MountOptions"] as? String {
                        self.mountOptions = value
                    }
                    if let value = dict["MountPath"] as? String {
                        self.mountPath = value
                    }
                    if let value = dict["ReadOnly"] as? Bool {
                        self.readOnly = value
                    }
                    if let value = dict["VolumeDriver"] as? String {
                        self.volumeDriver = value
                    }
                }
            }
            public var resource: CreateJobRequest.Tasks.TaskSpec.Resource?

            public var retryPolicy: CreateJobRequest.Tasks.TaskSpec.RetryPolicy?

            public var taskExecutor: [CreateJobRequest.Tasks.TaskSpec.TaskExecutor]?

            public var volumeMount: [CreateJobRequest.Tasks.TaskSpec.VolumeMount]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.resource?.validate()
                try self.retryPolicy?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resource != nil {
                    map["Resource"] = self.resource?.toMap()
                }
                if self.retryPolicy != nil {
                    map["RetryPolicy"] = self.retryPolicy?.toMap()
                }
                if self.taskExecutor != nil {
                    var tmp : [Any] = []
                    for k in self.taskExecutor! {
                        tmp.append(k.toMap())
                    }
                    map["TaskExecutor"] = tmp
                }
                if self.volumeMount != nil {
                    var tmp : [Any] = []
                    for k in self.volumeMount! {
                        tmp.append(k.toMap())
                    }
                    map["VolumeMount"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Resource"] as? [String: Any?] {
                    var model = CreateJobRequest.Tasks.TaskSpec.Resource()
                    model.fromMap(value)
                    self.resource = model
                }
                if let value = dict["RetryPolicy"] as? [String: Any?] {
                    var model = CreateJobRequest.Tasks.TaskSpec.RetryPolicy()
                    model.fromMap(value)
                    self.retryPolicy = model
                }
                if let value = dict["TaskExecutor"] as? [Any?] {
                    var tmp : [CreateJobRequest.Tasks.TaskSpec.TaskExecutor] = []
                    for v in value {
                        if v != nil {
                            var model = CreateJobRequest.Tasks.TaskSpec.TaskExecutor()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.taskExecutor = tmp
                }
                if let value = dict["VolumeMount"] as? [Any?] {
                    var tmp : [CreateJobRequest.Tasks.TaskSpec.VolumeMount] = []
                    for v in value {
                        if v != nil {
                            var model = CreateJobRequest.Tasks.TaskSpec.VolumeMount()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.volumeMount = tmp
                }
            }
        }
        public var executorPolicy: CreateJobRequest.Tasks.ExecutorPolicy?

        public var taskName: String?

        public var taskSpec: CreateJobRequest.Tasks.TaskSpec?

        public var taskSustainable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.executorPolicy?.validate()
            try self.taskSpec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.executorPolicy != nil {
                map["ExecutorPolicy"] = self.executorPolicy?.toMap()
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskSpec != nil {
                map["TaskSpec"] = self.taskSpec?.toMap()
            }
            if self.taskSustainable != nil {
                map["TaskSustainable"] = self.taskSustainable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExecutorPolicy"] as? [String: Any?] {
                var model = CreateJobRequest.Tasks.ExecutorPolicy()
                model.fromMap(value)
                self.executorPolicy = model
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TaskSpec"] as? [String: Any?] {
                var model = CreateJobRequest.Tasks.TaskSpec()
                model.fromMap(value)
                self.taskSpec = model
            }
            if let value = dict["TaskSustainable"] as? Bool {
                self.taskSustainable = value
            }
        }
    }
    public var dependencyPolicy: CreateJobRequest.DependencyPolicy?

    public var deploymentPolicy: CreateJobRequest.DeploymentPolicy?

    public var jobDescription: String?

    public var jobName: String?

    public var jobScheduler: String?

    public var securityPolicy: CreateJobRequest.SecurityPolicy?

    public var tasks: [CreateJobRequest.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dependencyPolicy?.validate()
        try self.deploymentPolicy?.validate()
        try self.securityPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dependencyPolicy != nil {
            map["DependencyPolicy"] = self.dependencyPolicy?.toMap()
        }
        if self.deploymentPolicy != nil {
            map["DeploymentPolicy"] = self.deploymentPolicy?.toMap()
        }
        if self.jobDescription != nil {
            map["JobDescription"] = self.jobDescription!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.jobScheduler != nil {
            map["JobScheduler"] = self.jobScheduler!
        }
        if self.securityPolicy != nil {
            map["SecurityPolicy"] = self.securityPolicy?.toMap()
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DependencyPolicy"] as? [String: Any?] {
            var model = CreateJobRequest.DependencyPolicy()
            model.fromMap(value)
            self.dependencyPolicy = model
        }
        if let value = dict["DeploymentPolicy"] as? [String: Any?] {
            var model = CreateJobRequest.DeploymentPolicy()
            model.fromMap(value)
            self.deploymentPolicy = model
        }
        if let value = dict["JobDescription"] as? String {
            self.jobDescription = value
        }
        if let value = dict["JobName"] as? String {
            self.jobName = value
        }
        if let value = dict["JobScheduler"] as? String {
            self.jobScheduler = value
        }
        if let value = dict["SecurityPolicy"] as? [String: Any?] {
            var model = CreateJobRequest.SecurityPolicy()
            model.fromMap(value)
            self.securityPolicy = model
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [CreateJobRequest.Tasks] = []
            for v in value {
                if v != nil {
                    var model = CreateJobRequest.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
    }
}

public class CreateJobShrinkRequest : Tea.TeaModel {
    public var dependencyPolicyShrink: String?

    public var deploymentPolicyShrink: String?

    public var jobDescription: String?

    public var jobName: String?

    public var jobScheduler: String?

    public var securityPolicyShrink: String?

    public var tasksShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dependencyPolicyShrink != nil {
            map["DependencyPolicy"] = self.dependencyPolicyShrink!
        }
        if self.deploymentPolicyShrink != nil {
            map["DeploymentPolicy"] = self.deploymentPolicyShrink!
        }
        if self.jobDescription != nil {
            map["JobDescription"] = self.jobDescription!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.jobScheduler != nil {
            map["JobScheduler"] = self.jobScheduler!
        }
        if self.securityPolicyShrink != nil {
            map["SecurityPolicy"] = self.securityPolicyShrink!
        }
        if self.tasksShrink != nil {
            map["Tasks"] = self.tasksShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DependencyPolicy"] as? String {
            self.dependencyPolicyShrink = value
        }
        if let value = dict["DeploymentPolicy"] as? String {
            self.deploymentPolicyShrink = value
        }
        if let value = dict["JobDescription"] as? String {
            self.jobDescription = value
        }
        if let value = dict["JobName"] as? String {
            self.jobName = value
        }
        if let value = dict["JobScheduler"] as? String {
            self.jobScheduler = value
        }
        if let value = dict["SecurityPolicy"] as? String {
            self.securityPolicyShrink = value
        }
        if let value = dict["Tasks"] as? String {
            self.tasksShrink = value
        }
    }
}

public class CreateJobResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var executorIds: [String]?

        public var taskName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.executorIds != nil {
                map["ExecutorIds"] = self.executorIds!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExecutorIds"] as? [String] {
                self.executorIds = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
        }
    }
    public var jobId: String?

    public var requestId: String?

    public var tasks: [CreateJobResponseBody.Tasks]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [CreateJobResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = CreateJobResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
    }
}

public class CreateJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateJobResponseBody?

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
            var model = CreateJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePoolRequest : Tea.TeaModel {
    public class ResourceLimits : Tea.TeaModel {
        public var maxExectorNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxExectorNum != nil {
                map["MaxExectorNum"] = self.maxExectorNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxExectorNum"] as? Int32 {
                self.maxExectorNum = value
            }
        }
    }
    public var poolName: String?

    public var priority: Int32?

    public var resourceLimits: CreatePoolRequest.ResourceLimits?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceLimits?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.resourceLimits != nil {
            map["ResourceLimits"] = self.resourceLimits?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PoolName"] as? String {
            self.poolName = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ResourceLimits"] as? [String: Any?] {
            var model = CreatePoolRequest.ResourceLimits()
            model.fromMap(value)
            self.resourceLimits = model
        }
    }
}

public class CreatePoolShrinkRequest : Tea.TeaModel {
    public var poolName: String?

    public var priority: Int32?

    public var resourceLimitsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.resourceLimitsShrink != nil {
            map["ResourceLimits"] = self.resourceLimitsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PoolName"] as? String {
            self.poolName = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ResourceLimits"] as? String {
            self.resourceLimitsShrink = value
        }
    }
}

public class CreatePoolResponseBody : Tea.TeaModel {
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

public class CreatePoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePoolResponseBody?

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
            var model = CreatePoolResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteActionPlanRequest : Tea.TeaModel {
    public var actionPlanId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionPlanId != nil {
            map["ActionPlanId"] = self.actionPlanId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionPlanId"] as? String {
            self.actionPlanId = value
        }
    }
}

public class DeleteActionPlanResponseBody : Tea.TeaModel {
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

public class DeleteActionPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteActionPlanResponseBody?

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
            var model = DeleteActionPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteJobRecordsRequest : Tea.TeaModel {
    public var jobIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobIds != nil {
            map["JobIds"] = self.jobIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobIds"] as? [String] {
            self.jobIds = value
        }
    }
}

public class DeleteJobRecordsShrinkRequest : Tea.TeaModel {
    public var jobIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobIdsShrink != nil {
            map["JobIds"] = self.jobIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobIds"] as? String {
            self.jobIdsShrink = value
        }
    }
}

public class DeleteJobRecordsResponseBody : Tea.TeaModel {
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

public class DeleteJobRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteJobRecordsResponseBody?

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
            var model = DeleteJobRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteJobsRequest : Tea.TeaModel {
    public class JobSpec : Tea.TeaModel {
        public class TaskSpec : Tea.TeaModel {
            public var arrayIndex: [Int32]?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrayIndex != nil {
                    map["ArrayIndex"] = self.arrayIndex!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArrayIndex"] as? [Int32] {
                    self.arrayIndex = value
                }
                if let value = dict["TaskName"] as? String {
                    self.taskName = value
                }
            }
        }
        public var jobId: String?

        public var taskSpec: [DeleteJobsRequest.JobSpec.TaskSpec]?

        public override init() {
            super.init()
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
            if self.taskSpec != nil {
                var tmp : [Any] = []
                for k in self.taskSpec! {
                    tmp.append(k.toMap())
                }
                map["TaskSpec"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["TaskSpec"] as? [Any?] {
                var tmp : [DeleteJobsRequest.JobSpec.TaskSpec] = []
                for v in value {
                    if v != nil {
                        var model = DeleteJobsRequest.JobSpec.TaskSpec()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.taskSpec = tmp
            }
        }
    }
    public var executorIds: [String]?

    public var jobScheduler: String?

    public var jobSpec: [DeleteJobsRequest.JobSpec]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executorIds != nil {
            map["ExecutorIds"] = self.executorIds!
        }
        if self.jobScheduler != nil {
            map["JobScheduler"] = self.jobScheduler!
        }
        if self.jobSpec != nil {
            var tmp : [Any] = []
            for k in self.jobSpec! {
                tmp.append(k.toMap())
            }
            map["JobSpec"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutorIds"] as? [String] {
            self.executorIds = value
        }
        if let value = dict["JobScheduler"] as? String {
            self.jobScheduler = value
        }
        if let value = dict["JobSpec"] as? [Any?] {
            var tmp : [DeleteJobsRequest.JobSpec] = []
            for v in value {
                if v != nil {
                    var model = DeleteJobsRequest.JobSpec()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobSpec = tmp
        }
    }
}

public class DeleteJobsShrinkRequest : Tea.TeaModel {
    public var executorIdsShrink: String?

    public var jobScheduler: String?

    public var jobSpecShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executorIdsShrink != nil {
            map["ExecutorIds"] = self.executorIdsShrink!
        }
        if self.jobScheduler != nil {
            map["JobScheduler"] = self.jobScheduler!
        }
        if self.jobSpecShrink != nil {
            map["JobSpec"] = self.jobSpecShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutorIds"] as? String {
            self.executorIdsShrink = value
        }
        if let value = dict["JobScheduler"] as? String {
            self.jobScheduler = value
        }
        if let value = dict["JobSpec"] as? String {
            self.jobSpecShrink = value
        }
    }
}

public class DeleteJobsResponseBody : Tea.TeaModel {
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

public class DeleteJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteJobsResponseBody?

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
            var model = DeleteJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePoolRequest : Tea.TeaModel {
    public var poolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PoolName"] as? String {
            self.poolName = value
        }
    }
}

public class DeletePoolResponseBody : Tea.TeaModel {
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

public class DeletePoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePoolResponseBody?

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
            var model = DeletePoolResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeJobMetricDataRequest : Tea.TeaModel {
    public var arrayIndex: [Int32]?

    public var jobId: String?

    public var metricName: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayIndex != nil {
            map["ArrayIndex"] = self.arrayIndex!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArrayIndex"] as? [Int32] {
            self.arrayIndex = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
    }
}

public class DescribeJobMetricDataShrinkRequest : Tea.TeaModel {
    public var arrayIndexShrink: String?

    public var jobId: String?

    public var metricName: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayIndexShrink != nil {
            map["ArrayIndex"] = self.arrayIndexShrink!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArrayIndex"] as? String {
            self.arrayIndexShrink = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
    }
}

public class DescribeJobMetricDataResponseBody : Tea.TeaModel {
    public var dataPoints: String?

    public var period: Int32?

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
        if self.dataPoints != nil {
            map["DataPoints"] = self.dataPoints!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataPoints"] as? String {
            self.dataPoints = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeJobMetricDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeJobMetricDataResponseBody?

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
            var model = DescribeJobMetricDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeJobMetricLastRequest : Tea.TeaModel {
    public var arrayIndex: [Int32]?

    public var jobId: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayIndex != nil {
            map["ArrayIndex"] = self.arrayIndex!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArrayIndex"] as? [Int32] {
            self.arrayIndex = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
    }
}

public class DescribeJobMetricLastShrinkRequest : Tea.TeaModel {
    public var arrayIndexShrink: String?

    public var jobId: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayIndexShrink != nil {
            map["ArrayIndex"] = self.arrayIndexShrink!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArrayIndex"] as? String {
            self.arrayIndexShrink = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
    }
}

public class DescribeJobMetricLastResponseBody : Tea.TeaModel {
    public class Metrics : Tea.TeaModel {
        public var arrayIndex: Int32?

        public var metric: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arrayIndex != nil {
                map["ArrayIndex"] = self.arrayIndex!
            }
            if self.metric != nil {
                map["Metric"] = self.metric!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArrayIndex"] as? Int32 {
                self.arrayIndex = value
            }
            if let value = dict["Metric"] as? String {
                self.metric = value
            }
        }
    }
    public var metrics: [DescribeJobMetricLastResponseBody.Metrics]?

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
        if self.metrics != nil {
            var tmp : [Any] = []
            for k in self.metrics! {
                tmp.append(k.toMap())
            }
            map["Metrics"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Metrics"] as? [Any?] {
            var tmp : [DescribeJobMetricLastResponseBody.Metrics] = []
            for v in value {
                if v != nil {
                    var model = DescribeJobMetricLastResponseBody.Metrics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metrics = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeJobMetricLastResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeJobMetricLastResponseBody?

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
            var model = DescribeJobMetricLastResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeJobResultsRequest : Tea.TeaModel {
    public var arrayIndex: Int32?

    public var contentEncoding: String?

    public var jobId: String?

    public var limitBytes: String?

    public var startTime: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayIndex != nil {
            map["ArrayIndex"] = self.arrayIndex!
        }
        if self.contentEncoding != nil {
            map["ContentEncoding"] = self.contentEncoding!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.limitBytes != nil {
            map["LimitBytes"] = self.limitBytes!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArrayIndex"] as? Int32 {
            self.arrayIndex = value
        }
        if let value = dict["ContentEncoding"] as? String {
            self.contentEncoding = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["LimitBytes"] as? String {
            self.limitBytes = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
    }
}

public class DescribeJobResultsResponseBody : Tea.TeaModel {
    public var exitCode: Int64?

    public var output: String?

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
        if self.exitCode != nil {
            map["ExitCode"] = self.exitCode!
        }
        if self.output != nil {
            map["Output"] = self.output!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExitCode"] as? Int64 {
            self.exitCode = value
        }
        if let value = dict["Output"] as? String {
            self.output = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeJobResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeJobResultsResponseBody?

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
            var model = DescribeJobResultsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetActionPlanRequest : Tea.TeaModel {
    public var actionPlanId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionPlanId != nil {
            map["ActionPlanId"] = self.actionPlanId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionPlanId"] as? String {
            self.actionPlanId = value
        }
    }
}

public class GetActionPlanResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var regionId: String?

        public var securityGroupIds: [String]?

        public var vSwitchIds: [String]?

        public override init() {
            super.init()
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
            if self.securityGroupIds != nil {
                map["SecurityGroupIds"] = self.securityGroupIds!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SecurityGroupIds"] as? [String] {
                self.securityGroupIds = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
        }
    }
    public class Resources : Tea.TeaModel {
        public var cores: Double?

        public var memory: Double?

        public override init() {
            super.init()
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
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cores"] as? Double {
                self.cores = value
            }
            if let value = dict["Memory"] as? Double {
                self.memory = value
            }
        }
    }
    public var actionPlanId: String?

    public var actionPlanName: String?

    public var allocationSpec: String?

    public var appId: String?

    public var createTime: String?

    public var desiredCapacity: Double?

    public var intervalMinutes: Int32?

    public var level: String?

    public var prologScript: String?

    public var regions: [GetActionPlanResponseBody.Regions]?

    public var requestId: String?

    public var resourceType: String?

    public var resources: [GetActionPlanResponseBody.Resources]?

    public var status: String?

    public var totalCapacity: Double?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionPlanId != nil {
            map["ActionPlanId"] = self.actionPlanId!
        }
        if self.actionPlanName != nil {
            map["ActionPlanName"] = self.actionPlanName!
        }
        if self.allocationSpec != nil {
            map["AllocationSpec"] = self.allocationSpec!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.desiredCapacity != nil {
            map["DesiredCapacity"] = self.desiredCapacity!
        }
        if self.intervalMinutes != nil {
            map["IntervalMinutes"] = self.intervalMinutes!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.prologScript != nil {
            map["PrologScript"] = self.prologScript!
        }
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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.totalCapacity != nil {
            map["TotalCapacity"] = self.totalCapacity!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionPlanId"] as? String {
            self.actionPlanId = value
        }
        if let value = dict["ActionPlanName"] as? String {
            self.actionPlanName = value
        }
        if let value = dict["AllocationSpec"] as? String {
            self.allocationSpec = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DesiredCapacity"] as? Double {
            self.desiredCapacity = value
        }
        if let value = dict["IntervalMinutes"] as? Int32 {
            self.intervalMinutes = value
        }
        if let value = dict["Level"] as? String {
            self.level = value
        }
        if let value = dict["PrologScript"] as? String {
            self.prologScript = value
        }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [GetActionPlanResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = GetActionPlanResponseBody.Regions()
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
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [GetActionPlanResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = GetActionPlanResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TotalCapacity"] as? Double {
            self.totalCapacity = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class GetActionPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetActionPlanResponseBody?

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
            var model = GetActionPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAppVersionsRequest : Tea.TeaModel {
    public var appName: String?

    public var imageCategory: String?

    public var imageType: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.imageCategory != nil {
            map["ImageCategory"] = self.imageCategory!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
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
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class GetAppVersionsResponseBody : Tea.TeaModel {
    public class AppVersions : Tea.TeaModel {
        public var imageId: String?

        public var name: String?

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
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var appVersions: [GetAppVersionsResponseBody.AppVersions]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var success: Bool?

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
        if self.appVersions != nil {
            var tmp : [Any] = []
            for k in self.appVersions! {
                tmp.append(k.toMap())
            }
            map["AppVersions"] = tmp
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
        if let value = dict["AppVersions"] as? [Any?] {
            var tmp : [GetAppVersionsResponseBody.AppVersions] = []
            for v in value {
                if v != nil {
                    var model = GetAppVersionsResponseBody.AppVersions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.appVersions = tmp
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetAppVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppVersionsResponseBody?

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
            var model = GetAppVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetImageRequest : Tea.TeaModel {
    public var additionalRegionIds: [String]?

    public var imageCategory: String?

    public var imageId: String?

    public var imageType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalRegionIds != nil {
            map["AdditionalRegionIds"] = self.additionalRegionIds!
        }
        if self.imageCategory != nil {
            map["ImageCategory"] = self.imageCategory!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalRegionIds"] as? [String] {
            self.additionalRegionIds = value
        }
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
    }
}

public class GetImageShrinkRequest : Tea.TeaModel {
    public var additionalRegionIdsShrink: String?

    public var imageCategory: String?

    public var imageId: String?

    public var imageType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalRegionIdsShrink != nil {
            map["AdditionalRegionIds"] = self.additionalRegionIdsShrink!
        }
        if self.imageCategory != nil {
            map["ImageCategory"] = self.imageCategory!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalRegionIds"] as? String {
            self.additionalRegionIdsShrink = value
        }
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
    }
}

public class GetImageResponseBody : Tea.TeaModel {
    public class Image : Tea.TeaModel {
        public class AdditionalRegionsInfo : Tea.TeaModel {
            public var imageId: String?

            public var regionId: String?

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
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ImageId"] as? String {
                    self.imageId = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class ContainerImageSpec : Tea.TeaModel {
            public class RegistryCredential : Tea.TeaModel {
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
            public var architecture: String?

            public var isACREnterprise: Bool?

            public var isACRRegistry: Bool?

            public var osTag: String?

            public var platform: String?

            public var registryCredential: GetImageResponseBody.Image.ContainerImageSpec.RegistryCredential?

            public var registryCriId: String?

            public var registryUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.registryCredential?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.architecture != nil {
                    map["Architecture"] = self.architecture!
                }
                if self.isACREnterprise != nil {
                    map["IsACREnterprise"] = self.isACREnterprise!
                }
                if self.isACRRegistry != nil {
                    map["IsACRRegistry"] = self.isACRRegistry!
                }
                if self.osTag != nil {
                    map["OsTag"] = self.osTag!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.registryCredential != nil {
                    map["RegistryCredential"] = self.registryCredential?.toMap()
                }
                if self.registryCriId != nil {
                    map["RegistryCriId"] = self.registryCriId!
                }
                if self.registryUrl != nil {
                    map["RegistryUrl"] = self.registryUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Architecture"] as? String {
                    self.architecture = value
                }
                if let value = dict["IsACREnterprise"] as? Bool {
                    self.isACREnterprise = value
                }
                if let value = dict["IsACRRegistry"] as? Bool {
                    self.isACRRegistry = value
                }
                if let value = dict["OsTag"] as? String {
                    self.osTag = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["RegistryCredential"] as? [String: Any?] {
                    var model = GetImageResponseBody.Image.ContainerImageSpec.RegistryCredential()
                    model.fromMap(value)
                    self.registryCredential = model
                }
                if let value = dict["RegistryCriId"] as? String {
                    self.registryCriId = value
                }
                if let value = dict["RegistryUrl"] as? String {
                    self.registryUrl = value
                }
            }
        }
        public class DocumentInfo : Tea.TeaModel {
            public var document: String?

            public var documentId: String?

            public var encodingMode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.document != nil {
                    map["Document"] = self.document!
                }
                if self.documentId != nil {
                    map["DocumentId"] = self.documentId!
                }
                if self.encodingMode != nil {
                    map["EncodingMode"] = self.encodingMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Document"] as? String {
                    self.document = value
                }
                if let value = dict["DocumentId"] as? String {
                    self.documentId = value
                }
                if let value = dict["EncodingMode"] as? String {
                    self.encodingMode = value
                }
            }
        }
        public class VMImageSpec : Tea.TeaModel {
            public var architecture: String?

            public var imageId: String?

            public var osTag: String?

            public var platform: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.architecture != nil {
                    map["Architecture"] = self.architecture!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.osTag != nil {
                    map["OsTag"] = self.osTag!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Architecture"] as? String {
                    self.architecture = value
                }
                if let value = dict["ImageId"] as? String {
                    self.imageId = value
                }
                if let value = dict["OsTag"] as? String {
                    self.osTag = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
            }
        }
        public var additionalRegionsInfo: [GetImageResponseBody.Image.AdditionalRegionsInfo]?

        public var appId: String?

        public var containerImageSpec: GetImageResponseBody.Image.ContainerImageSpec?

        public var createTime: String?

        public var description_: String?

        public var documentInfo: GetImageResponseBody.Image.DocumentInfo?

        public var imageType: String?

        public var name: String?

        public var size: String?

        public var status: String?

        public var VMImageSpec: GetImageResponseBody.Image.VMImageSpec?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.containerImageSpec?.validate()
            try self.documentInfo?.validate()
            try self.VMImageSpec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.additionalRegionsInfo != nil {
                var tmp : [Any] = []
                for k in self.additionalRegionsInfo! {
                    tmp.append(k.toMap())
                }
                map["AdditionalRegionsInfo"] = tmp
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.containerImageSpec != nil {
                map["ContainerImageSpec"] = self.containerImageSpec?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.documentInfo != nil {
                map["DocumentInfo"] = self.documentInfo?.toMap()
            }
            if self.imageType != nil {
                map["ImageType"] = self.imageType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.VMImageSpec != nil {
                map["VMImageSpec"] = self.VMImageSpec?.toMap()
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdditionalRegionsInfo"] as? [Any?] {
                var tmp : [GetImageResponseBody.Image.AdditionalRegionsInfo] = []
                for v in value {
                    if v != nil {
                        var model = GetImageResponseBody.Image.AdditionalRegionsInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.additionalRegionsInfo = tmp
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["ContainerImageSpec"] as? [String: Any?] {
                var model = GetImageResponseBody.Image.ContainerImageSpec()
                model.fromMap(value)
                self.containerImageSpec = model
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DocumentInfo"] as? [String: Any?] {
                var model = GetImageResponseBody.Image.DocumentInfo()
                model.fromMap(value)
                self.documentInfo = model
            }
            if let value = dict["ImageType"] as? String {
                self.imageType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Size"] as? String {
                self.size = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VMImageSpec"] as? [String: Any?] {
                var model = GetImageResponseBody.Image.VMImageSpec()
                model.fromMap(value)
                self.VMImageSpec = model
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var image: GetImageResponseBody.Image?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.image?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.image != nil {
            map["Image"] = self.image?.toMap()
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
        if let value = dict["Image"] as? [String: Any?] {
            var model = GetImageResponseBody.Image()
            model.fromMap(value)
            self.image = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageResponseBody?

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
            var model = GetImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobRequest : Tea.TeaModel {
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

public class GetJobResponseBody : Tea.TeaModel {
    public class JobInfo : Tea.TeaModel {
        public class DependencyPolicy : Tea.TeaModel {
            public class JobDependency : Tea.TeaModel {
                public var jobId: String?

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
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var jobDependency: [GetJobResponseBody.JobInfo.DependencyPolicy.JobDependency]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.jobDependency != nil {
                    var tmp : [Any] = []
                    for k in self.jobDependency! {
                        tmp.append(k.toMap())
                    }
                    map["JobDependency"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["JobDependency"] as? [Any?] {
                    var tmp : [GetJobResponseBody.JobInfo.DependencyPolicy.JobDependency] = []
                    for v in value {
                        if v != nil {
                            var model = GetJobResponseBody.JobInfo.DependencyPolicy.JobDependency()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.jobDependency = tmp
                }
            }
        }
        public class DeploymentPolicy : Tea.TeaModel {
            public class Network : Tea.TeaModel {
                public var enableENIMapping: Bool?

                public var enableExternalIpAddress: Bool?

                public var vswitch: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enableENIMapping != nil {
                        map["EnableENIMapping"] = self.enableENIMapping!
                    }
                    if self.enableExternalIpAddress != nil {
                        map["EnableExternalIpAddress"] = self.enableExternalIpAddress!
                    }
                    if self.vswitch != nil {
                        map["Vswitch"] = self.vswitch!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EnableENIMapping"] as? Bool {
                        self.enableENIMapping = value
                    }
                    if let value = dict["EnableExternalIpAddress"] as? Bool {
                        self.enableExternalIpAddress = value
                    }
                    if let value = dict["Vswitch"] as? [String] {
                        self.vswitch = value
                    }
                }
            }
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
            public var allocationSpec: String?

            public var level: String?

            public var network: GetJobResponseBody.JobInfo.DeploymentPolicy.Network?

            public var tags: [GetJobResponseBody.JobInfo.DeploymentPolicy.Tags]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.network?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allocationSpec != nil {
                    map["AllocationSpec"] = self.allocationSpec!
                }
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.network != nil {
                    map["Network"] = self.network?.toMap()
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
                if let value = dict["AllocationSpec"] as? String {
                    self.allocationSpec = value
                }
                if let value = dict["Level"] as? String {
                    self.level = value
                }
                if let value = dict["Network"] as? [String: Any?] {
                    var model = GetJobResponseBody.JobInfo.DeploymentPolicy.Network()
                    model.fromMap(value)
                    self.network = model
                }
                if let value = dict["Tags"] as? [Any?] {
                    var tmp : [GetJobResponseBody.JobInfo.DeploymentPolicy.Tags] = []
                    for v in value {
                        if v != nil {
                            var model = GetJobResponseBody.JobInfo.DeploymentPolicy.Tags()
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
        public class SecurityPolicy : Tea.TeaModel {
            public class SecurityGroup : Tea.TeaModel {
                public var securityGroupIds: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.securityGroupIds != nil {
                        map["SecurityGroupIds"] = self.securityGroupIds!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SecurityGroupIds"] as? [String] {
                        self.securityGroupIds = value
                    }
                }
            }
            public var securityGroup: GetJobResponseBody.JobInfo.SecurityPolicy.SecurityGroup?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.securityGroup?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.securityGroup != nil {
                    map["SecurityGroup"] = self.securityGroup?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["SecurityGroup"] as? [String: Any?] {
                    var model = GetJobResponseBody.JobInfo.SecurityPolicy.SecurityGroup()
                    model.fromMap(value)
                    self.securityGroup = model
                }
            }
        }
        public class Tasks : Tea.TeaModel {
            public class ExecutorPolicy : Tea.TeaModel {
                public class ArraySpec : Tea.TeaModel {
                    public var indexEnd: Int32?

                    public var indexStart: Int32?

                    public var indexStep: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.indexEnd != nil {
                            map["IndexEnd"] = self.indexEnd!
                        }
                        if self.indexStart != nil {
                            map["IndexStart"] = self.indexStart!
                        }
                        if self.indexStep != nil {
                            map["IndexStep"] = self.indexStep!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["IndexEnd"] as? Int32 {
                            self.indexEnd = value
                        }
                        if let value = dict["IndexStart"] as? Int32 {
                            self.indexStart = value
                        }
                        if let value = dict["IndexStep"] as? Int32 {
                            self.indexStep = value
                        }
                    }
                }
                public var arraySpec: GetJobResponseBody.JobInfo.Tasks.ExecutorPolicy.ArraySpec?

                public var maxCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.arraySpec?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.arraySpec != nil {
                        map["ArraySpec"] = self.arraySpec?.toMap()
                    }
                    if self.maxCount != nil {
                        map["MaxCount"] = self.maxCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ArraySpec"] as? [String: Any?] {
                        var model = GetJobResponseBody.JobInfo.Tasks.ExecutorPolicy.ArraySpec()
                        model.fromMap(value)
                        self.arraySpec = model
                    }
                    if let value = dict["MaxCount"] as? Int32 {
                        self.maxCount = value
                    }
                }
            }
            public class ExecutorStatus : Tea.TeaModel {
                public var arrayId: Int32?

                public var createTime: String?

                public var endTime: String?

                public var startTime: String?

                public var status: String?

                public var statusReason: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.arrayId != nil {
                        map["ArrayId"] = self.arrayId!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.statusReason != nil {
                        map["StatusReason"] = self.statusReason!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ArrayId"] as? Int32 {
                        self.arrayId = value
                    }
                    if let value = dict["CreateTime"] as? String {
                        self.createTime = value
                    }
                    if let value = dict["EndTime"] as? String {
                        self.endTime = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["StatusReason"] as? String {
                        self.statusReason = value
                    }
                }
            }
            public class TaskSpec : Tea.TeaModel {
                public class Resource : Tea.TeaModel {
                    public class Disks : Tea.TeaModel {
                        public var size: Int32?

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
                            if self.size != nil {
                                map["Size"] = self.size!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Size"] as? Int32 {
                                self.size = value
                            }
                            if let value = dict["Type"] as? String {
                                self.type = value
                            }
                        }
                    }
                    public var cores: Double?

                    public var disks: [GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource.Disks]?

                    public var enableHT: Bool?

                    public var hostNamePrefix: String?

                    public var instanceTypes: [String]?

                    public var memory: Int32?

                    public override init() {
                        super.init()
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
                        if self.disks != nil {
                            var tmp : [Any] = []
                            for k in self.disks! {
                                tmp.append(k.toMap())
                            }
                            map["Disks"] = tmp
                        }
                        if self.enableHT != nil {
                            map["EnableHT"] = self.enableHT!
                        }
                        if self.hostNamePrefix != nil {
                            map["HostNamePrefix"] = self.hostNamePrefix!
                        }
                        if self.instanceTypes != nil {
                            map["InstanceTypes"] = self.instanceTypes!
                        }
                        if self.memory != nil {
                            map["Memory"] = self.memory!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Cores"] as? Double {
                            self.cores = value
                        }
                        if let value = dict["Disks"] as? [Any?] {
                            var tmp : [GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource.Disks] = []
                            for v in value {
                                if v != nil {
                                    var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource.Disks()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.disks = tmp
                        }
                        if let value = dict["EnableHT"] as? Bool {
                            self.enableHT = value
                        }
                        if let value = dict["HostNamePrefix"] as? String {
                            self.hostNamePrefix = value
                        }
                        if let value = dict["InstanceTypes"] as? [String] {
                            self.instanceTypes = value
                        }
                        if let value = dict["Memory"] as? Int32 {
                            self.memory = value
                        }
                    }
                }
                public class RetryPolicy : Tea.TeaModel {
                    public class ExitCodeActions : Tea.TeaModel {
                        public var action: String?

                        public var exitCode: Int64?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.action != nil {
                                map["Action"] = self.action!
                            }
                            if self.exitCode != nil {
                                map["ExitCode"] = self.exitCode!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Action"] as? String {
                                self.action = value
                            }
                            if let value = dict["ExitCode"] as? Int64 {
                                self.exitCode = value
                            }
                        }
                    }
                    public var exitCodeActions: [GetJobResponseBody.JobInfo.Tasks.TaskSpec.RetryPolicy.ExitCodeActions]?

                    public var retryCount: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.exitCodeActions != nil {
                            var tmp : [Any] = []
                            for k in self.exitCodeActions! {
                                tmp.append(k.toMap())
                            }
                            map["ExitCodeActions"] = tmp
                        }
                        if self.retryCount != nil {
                            map["RetryCount"] = self.retryCount!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ExitCodeActions"] as? [Any?] {
                            var tmp : [GetJobResponseBody.JobInfo.Tasks.TaskSpec.RetryPolicy.ExitCodeActions] = []
                            for v in value {
                                if v != nil {
                                    var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.RetryPolicy.ExitCodeActions()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.exitCodeActions = tmp
                        }
                        if let value = dict["RetryCount"] as? Int32 {
                            self.retryCount = value
                        }
                    }
                }
                public class TaskExecutor : Tea.TeaModel {
                    public class VM : Tea.TeaModel {
                        public var image: String?

                        public var prologScript: String?

                        public var script: String?

                        public override init() {
                            super.init()
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
                            if self.prologScript != nil {
                                map["PrologScript"] = self.prologScript!
                            }
                            if self.script != nil {
                                map["Script"] = self.script!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Image"] as? String {
                                self.image = value
                            }
                            if let value = dict["PrologScript"] as? String {
                                self.prologScript = value
                            }
                            if let value = dict["Script"] as? String {
                                self.script = value
                            }
                        }
                    }
                    public var VM: GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor.VM?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.VM?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.VM != nil {
                            map["VM"] = self.VM?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["VM"] as? [String: Any?] {
                            var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor.VM()
                            model.fromMap(value)
                            self.VM = model
                        }
                    }
                }
                public class VolumeMount : Tea.TeaModel {
                    public var mountOptions: String?

                    public var mountPath: String?

                    public var volumeDriver: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.mountOptions != nil {
                            map["MountOptions"] = self.mountOptions!
                        }
                        if self.mountPath != nil {
                            map["MountPath"] = self.mountPath!
                        }
                        if self.volumeDriver != nil {
                            map["VolumeDriver"] = self.volumeDriver!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["MountOptions"] as? String {
                            self.mountOptions = value
                        }
                        if let value = dict["MountPath"] as? String {
                            self.mountPath = value
                        }
                        if let value = dict["VolumeDriver"] as? String {
                            self.volumeDriver = value
                        }
                    }
                }
                public var resource: GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource?

                public var retryPolicy: GetJobResponseBody.JobInfo.Tasks.TaskSpec.RetryPolicy?

                public var taskExecutor: [GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor]?

                public var volumeMount: [GetJobResponseBody.JobInfo.Tasks.TaskSpec.VolumeMount]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.resource?.validate()
                    try self.retryPolicy?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.resource != nil {
                        map["Resource"] = self.resource?.toMap()
                    }
                    if self.retryPolicy != nil {
                        map["RetryPolicy"] = self.retryPolicy?.toMap()
                    }
                    if self.taskExecutor != nil {
                        var tmp : [Any] = []
                        for k in self.taskExecutor! {
                            tmp.append(k.toMap())
                        }
                        map["TaskExecutor"] = tmp
                    }
                    if self.volumeMount != nil {
                        var tmp : [Any] = []
                        for k in self.volumeMount! {
                            tmp.append(k.toMap())
                        }
                        map["VolumeMount"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Resource"] as? [String: Any?] {
                        var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource()
                        model.fromMap(value)
                        self.resource = model
                    }
                    if let value = dict["RetryPolicy"] as? [String: Any?] {
                        var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.RetryPolicy()
                        model.fromMap(value)
                        self.retryPolicy = model
                    }
                    if let value = dict["TaskExecutor"] as? [Any?] {
                        var tmp : [GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor] = []
                        for v in value {
                            if v != nil {
                                var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.taskExecutor = tmp
                    }
                    if let value = dict["VolumeMount"] as? [Any?] {
                        var tmp : [GetJobResponseBody.JobInfo.Tasks.TaskSpec.VolumeMount] = []
                        for v in value {
                            if v != nil {
                                var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.VolumeMount()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.volumeMount = tmp
                    }
                }
            }
            public var executorPolicy: GetJobResponseBody.JobInfo.Tasks.ExecutorPolicy?

            public var executorStatus: [GetJobResponseBody.JobInfo.Tasks.ExecutorStatus]?

            public var taskName: String?

            public var taskSpec: GetJobResponseBody.JobInfo.Tasks.TaskSpec?

            public var taskSustainable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.executorPolicy?.validate()
                try self.taskSpec?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.executorPolicy != nil {
                    map["ExecutorPolicy"] = self.executorPolicy?.toMap()
                }
                if self.executorStatus != nil {
                    var tmp : [Any] = []
                    for k in self.executorStatus! {
                        tmp.append(k.toMap())
                    }
                    map["ExecutorStatus"] = tmp
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                if self.taskSpec != nil {
                    map["TaskSpec"] = self.taskSpec?.toMap()
                }
                if self.taskSustainable != nil {
                    map["TaskSustainable"] = self.taskSustainable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExecutorPolicy"] as? [String: Any?] {
                    var model = GetJobResponseBody.JobInfo.Tasks.ExecutorPolicy()
                    model.fromMap(value)
                    self.executorPolicy = model
                }
                if let value = dict["ExecutorStatus"] as? [Any?] {
                    var tmp : [GetJobResponseBody.JobInfo.Tasks.ExecutorStatus] = []
                    for v in value {
                        if v != nil {
                            var model = GetJobResponseBody.JobInfo.Tasks.ExecutorStatus()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.executorStatus = tmp
                }
                if let value = dict["TaskName"] as? String {
                    self.taskName = value
                }
                if let value = dict["TaskSpec"] as? [String: Any?] {
                    var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec()
                    model.fromMap(value)
                    self.taskSpec = model
                }
                if let value = dict["TaskSustainable"] as? Bool {
                    self.taskSustainable = value
                }
            }
        }
        public var appExtraInfo: String?

        public var createTime: String?

        public var dependencyPolicy: GetJobResponseBody.JobInfo.DependencyPolicy?

        public var deploymentPolicy: GetJobResponseBody.JobInfo.DeploymentPolicy?

        public var endTime: String?

        public var jobDescription: String?

        public var jobId: String?

        public var jobName: String?

        public var jobScheduler: String?

        public var securityPolicy: GetJobResponseBody.JobInfo.SecurityPolicy?

        public var startTime: String?

        public var status: String?

        public var tasks: [GetJobResponseBody.JobInfo.Tasks]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dependencyPolicy?.validate()
            try self.deploymentPolicy?.validate()
            try self.securityPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appExtraInfo != nil {
                map["AppExtraInfo"] = self.appExtraInfo!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dependencyPolicy != nil {
                map["DependencyPolicy"] = self.dependencyPolicy?.toMap()
            }
            if self.deploymentPolicy != nil {
                map["DeploymentPolicy"] = self.deploymentPolicy?.toMap()
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.jobDescription != nil {
                map["JobDescription"] = self.jobDescription!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.jobScheduler != nil {
                map["JobScheduler"] = self.jobScheduler!
            }
            if self.securityPolicy != nil {
                map["SecurityPolicy"] = self.securityPolicy?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tasks != nil {
                var tmp : [Any] = []
                for k in self.tasks! {
                    tmp.append(k.toMap())
                }
                map["Tasks"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppExtraInfo"] as? String {
                self.appExtraInfo = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DependencyPolicy"] as? [String: Any?] {
                var model = GetJobResponseBody.JobInfo.DependencyPolicy()
                model.fromMap(value)
                self.dependencyPolicy = model
            }
            if let value = dict["DeploymentPolicy"] as? [String: Any?] {
                var model = GetJobResponseBody.JobInfo.DeploymentPolicy()
                model.fromMap(value)
                self.deploymentPolicy = model
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["JobDescription"] as? String {
                self.jobDescription = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["JobName"] as? String {
                self.jobName = value
            }
            if let value = dict["JobScheduler"] as? String {
                self.jobScheduler = value
            }
            if let value = dict["SecurityPolicy"] as? [String: Any?] {
                var model = GetJobResponseBody.JobInfo.SecurityPolicy()
                model.fromMap(value)
                self.securityPolicy = model
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tasks"] as? [Any?] {
                var tmp : [GetJobResponseBody.JobInfo.Tasks] = []
                for v in value {
                    if v != nil {
                        var model = GetJobResponseBody.JobInfo.Tasks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tasks = tmp
            }
        }
    }
    public var jobInfo: GetJobResponseBody.JobInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jobInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobInfo != nil {
            map["JobInfo"] = self.jobInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobInfo"] as? [String: Any?] {
            var model = GetJobResponseBody.JobInfo()
            model.fromMap(value)
            self.jobInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobResponseBody?

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
            var model = GetJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPoolRequest : Tea.TeaModel {
    public var poolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PoolName"] as? String {
            self.poolName = value
        }
    }
}

public class GetPoolResponseBody : Tea.TeaModel {
    public class PoolInfo : Tea.TeaModel {
        public var createTime: String?

        public var exectorUsage: Int32?

        public var isDefault: Bool?

        public var maxExectorNum: Int32?

        public var poolName: String?

        public var priority: Int32?

        public var reason: String?

        public var status: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.exectorUsage != nil {
                map["ExectorUsage"] = self.exectorUsage!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.maxExectorNum != nil {
                map["MaxExectorNum"] = self.maxExectorNum!
            }
            if self.poolName != nil {
                map["PoolName"] = self.poolName!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExectorUsage"] as? Int32 {
                self.exectorUsage = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["MaxExectorNum"] as? Int32 {
                self.maxExectorNum = value
            }
            if let value = dict["PoolName"] as? String {
                self.poolName = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var poolInfo: GetPoolResponseBody.PoolInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.poolInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.poolInfo != nil {
            map["PoolInfo"] = self.poolInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PoolInfo"] as? [String: Any?] {
            var model = GetPoolResponseBody.PoolInfo()
            model.fromMap(value)
            self.poolInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPoolResponseBody?

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
            var model = GetPoolResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListActionPlanActivitiesRequest : Tea.TeaModel {
    public var actionPlanId: String?

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
        if self.actionPlanId != nil {
            map["ActionPlanId"] = self.actionPlanId!
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
        if let value = dict["ActionPlanId"] as? String {
            self.actionPlanId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListActionPlanActivitiesResponseBody : Tea.TeaModel {
    public class ActionPlanActivities : Tea.TeaModel {
        public class Jobs : Tea.TeaModel {
            public var jobId: String?

            public var jobOperationType: String?

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
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobOperationType != nil {
                    map["JobOperationType"] = self.jobOperationType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["JobId"] as? String {
                    self.jobId = value
                }
                if let value = dict["JobOperationType"] as? String {
                    self.jobOperationType = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public var actionPlanActivityId: String?

        public var createdCapacity: Double?

        public var destroyCapacity: Double?

        public var endTime: String?

        public var jobs: [ListActionPlanActivitiesResponseBody.ActionPlanActivities.Jobs]?

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
            if self.actionPlanActivityId != nil {
                map["ActionPlanActivityId"] = self.actionPlanActivityId!
            }
            if self.createdCapacity != nil {
                map["CreatedCapacity"] = self.createdCapacity!
            }
            if self.destroyCapacity != nil {
                map["DestroyCapacity"] = self.destroyCapacity!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.jobs != nil {
                var tmp : [Any] = []
                for k in self.jobs! {
                    tmp.append(k.toMap())
                }
                map["Jobs"] = tmp
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
            if let value = dict["ActionPlanActivityId"] as? String {
                self.actionPlanActivityId = value
            }
            if let value = dict["CreatedCapacity"] as? Double {
                self.createdCapacity = value
            }
            if let value = dict["DestroyCapacity"] as? Double {
                self.destroyCapacity = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Jobs"] as? [Any?] {
                var tmp : [ListActionPlanActivitiesResponseBody.ActionPlanActivities.Jobs] = []
                for v in value {
                    if v != nil {
                        var model = ListActionPlanActivitiesResponseBody.ActionPlanActivities.Jobs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.jobs = tmp
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var actionPlanActivities: [ListActionPlanActivitiesResponseBody.ActionPlanActivities]?

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
        if self.actionPlanActivities != nil {
            var tmp : [Any] = []
            for k in self.actionPlanActivities! {
                tmp.append(k.toMap())
            }
            map["ActionPlanActivities"] = tmp
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
        if let value = dict["ActionPlanActivities"] as? [Any?] {
            var tmp : [ListActionPlanActivitiesResponseBody.ActionPlanActivities] = []
            for v in value {
                if v != nil {
                    var model = ListActionPlanActivitiesResponseBody.ActionPlanActivities()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.actionPlanActivities = tmp
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

public class ListActionPlanActivitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListActionPlanActivitiesResponseBody?

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
            var model = ListActionPlanActivitiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListActionPlansRequest : Tea.TeaModel {
    public var actionPlanIds: [String]?

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
        if self.actionPlanIds != nil {
            map["ActionPlanIds"] = self.actionPlanIds!
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
        if let value = dict["ActionPlanIds"] as? [String] {
            self.actionPlanIds = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListActionPlansShrinkRequest : Tea.TeaModel {
    public var actionPlanIdsShrink: String?

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
        if self.actionPlanIdsShrink != nil {
            map["ActionPlanIds"] = self.actionPlanIdsShrink!
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
        if let value = dict["ActionPlanIds"] as? String {
            self.actionPlanIdsShrink = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListActionPlansResponseBody : Tea.TeaModel {
    public class ActionPlans : Tea.TeaModel {
        public var actionPlanId: String?

        public var actionPlanName: String?

        public var createTime: String?

        public var status: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionPlanId != nil {
                map["ActionPlanId"] = self.actionPlanId!
            }
            if self.actionPlanName != nil {
                map["ActionPlanName"] = self.actionPlanName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActionPlanId"] as? String {
                self.actionPlanId = value
            }
            if let value = dict["ActionPlanName"] as? String {
                self.actionPlanName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var actionPlans: [ListActionPlansResponseBody.ActionPlans]?

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
        if self.actionPlans != nil {
            var tmp : [Any] = []
            for k in self.actionPlans! {
                tmp.append(k.toMap())
            }
            map["ActionPlans"] = tmp
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
        if let value = dict["ActionPlans"] as? [Any?] {
            var tmp : [ListActionPlansResponseBody.ActionPlans] = []
            for v in value {
                if v != nil {
                    var model = ListActionPlansResponseBody.ActionPlans()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.actionPlans = tmp
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

public class ListActionPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListActionPlansResponseBody?

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
            var model = ListActionPlansResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExecutorEventsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var executorIds: [String]?

        public var jobId: String?

        public var level: String?

        public var timeAfter: Int64?

        public var timeBefore: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.executorIds != nil {
                map["ExecutorIds"] = self.executorIds!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.timeAfter != nil {
                map["TimeAfter"] = self.timeAfter!
            }
            if self.timeBefore != nil {
                map["TimeBefore"] = self.timeBefore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExecutorIds"] as? [String] {
                self.executorIds = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["TimeAfter"] as? Int64 {
                self.timeAfter = value
            }
            if let value = dict["TimeBefore"] as? Int64 {
                self.timeBefore = value
            }
        }
    }
    public var filter: ListExecutorEventsRequest.Filter?

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
        try self.filter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            map["Filter"] = self.filter?.toMap()
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
        if let value = dict["Filter"] as? [String: Any?] {
            var model = ListExecutorEventsRequest.Filter()
            model.fromMap(value)
            self.filter = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListExecutorEventsShrinkRequest : Tea.TeaModel {
    public var filterShrink: String?

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
        if self.filterShrink != nil {
            map["Filter"] = self.filterShrink!
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
        if let value = dict["Filter"] as? String {
            self.filterShrink = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListExecutorEventsResponseBody : Tea.TeaModel {
    public class ExecutorEventList : Tea.TeaModel {
        public var content: String?

        public var executorId: String?

        public var jobId: String?

        public var level: String?

        public var time: String?

        public override init() {
            super.init()
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
            if self.executorId != nil {
                map["ExecutorId"] = self.executorId!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["ExecutorId"] as? String {
                self.executorId = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["Time"] as? String {
                self.time = value
            }
        }
    }
    public var executorEventList: [ListExecutorEventsResponseBody.ExecutorEventList]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.executorEventList != nil {
            var tmp : [Any] = []
            for k in self.executorEventList! {
                tmp.append(k.toMap())
            }
            map["ExecutorEventList"] = tmp
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
        if let value = dict["ExecutorEventList"] as? [Any?] {
            var tmp : [ListExecutorEventsResponseBody.ExecutorEventList] = []
            for v in value {
                if v != nil {
                    var model = ListExecutorEventsResponseBody.ExecutorEventList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.executorEventList = tmp
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListExecutorEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExecutorEventsResponseBody?

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
            var model = ListExecutorEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListExecutorsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var executorIds: [String]?

        public var image: String?

        public var ipAddresses: [String]?

        public var jobName: String?

        public var status: [String]?

        public var timeCreatedAfter: Int32?

        public var timeCreatedBefore: Int32?

        public var vpcId: String?

        public var vswitchId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.executorIds != nil {
                map["ExecutorIds"] = self.executorIds!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.ipAddresses != nil {
                map["IpAddresses"] = self.ipAddresses!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.timeCreatedAfter != nil {
                map["TimeCreatedAfter"] = self.timeCreatedAfter!
            }
            if self.timeCreatedBefore != nil {
                map["TimeCreatedBefore"] = self.timeCreatedBefore!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vswitchId != nil {
                map["VswitchId"] = self.vswitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExecutorIds"] as? [String] {
                self.executorIds = value
            }
            if let value = dict["Image"] as? String {
                self.image = value
            }
            if let value = dict["IpAddresses"] as? [String] {
                self.ipAddresses = value
            }
            if let value = dict["JobName"] as? String {
                self.jobName = value
            }
            if let value = dict["Status"] as? [String] {
                self.status = value
            }
            if let value = dict["TimeCreatedAfter"] as? Int32 {
                self.timeCreatedAfter = value
            }
            if let value = dict["TimeCreatedBefore"] as? Int32 {
                self.timeCreatedBefore = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VswitchId"] as? String {
                self.vswitchId = value
            }
        }
    }
    public var filter: ListExecutorsRequest.Filter?

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
        try self.filter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            map["Filter"] = self.filter?.toMap()
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
        if let value = dict["Filter"] as? [String: Any?] {
            var model = ListExecutorsRequest.Filter()
            model.fromMap(value)
            self.filter = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListExecutorsShrinkRequest : Tea.TeaModel {
    public var filterShrink: String?

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
        if self.filterShrink != nil {
            map["Filter"] = self.filterShrink!
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
        if let value = dict["Filter"] as? String {
            self.filterShrink = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListExecutorsResponseBody : Tea.TeaModel {
    public class Executors : Tea.TeaModel {
        public class Resource : Tea.TeaModel {
            public class Disks : Tea.TeaModel {
                public var size: Int32?

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
                    if self.size != nil {
                        map["Size"] = self.size!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Size"] as? Int32 {
                        self.size = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var cores: Double?

            public var disks: [ListExecutorsResponseBody.Executors.Resource.Disks]?

            public var instanceType: String?

            public var memory: Double?

            public override init() {
                super.init()
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
                if self.disks != nil {
                    var tmp : [Any] = []
                    for k in self.disks! {
                        tmp.append(k.toMap())
                    }
                    map["Disks"] = tmp
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cores"] as? Double {
                    self.cores = value
                }
                if let value = dict["Disks"] as? [Any?] {
                    var tmp : [ListExecutorsResponseBody.Executors.Resource.Disks] = []
                    for v in value {
                        if v != nil {
                            var model = ListExecutorsResponseBody.Executors.Resource.Disks()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.disks = tmp
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["Memory"] as? Double {
                    self.memory = value
                }
            }
        }
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
        public var allocationSpec: String?

        public var appName: String?

        public var arrayIndex: Int32?

        public var blockDuration: Int32?

        public var createTime: String?

        public var endTime: String?

        public var executorId: String?

        public var expirationTime: String?

        public var externalIpAddress: [String]?

        public var hostName: [String]?

        public var image: String?

        public var ipAddress: [String]?

        public var jobId: String?

        public var jobName: String?

        public var preemptible: Bool?

        public var resource: ListExecutorsResponseBody.Executors.Resource?

        public var resourceType: String?

        public var startTime: String?

        public var status: String?

        public var statusReason: String?

        public var tags: [ListExecutorsResponseBody.Executors.Tags]?

        public var taskName: String?

        public var taskSustainable: Bool?

        public var vpcId: String?

        public var vswitchId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resource?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allocationSpec != nil {
                map["AllocationSpec"] = self.allocationSpec!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.arrayIndex != nil {
                map["ArrayIndex"] = self.arrayIndex!
            }
            if self.blockDuration != nil {
                map["BlockDuration"] = self.blockDuration!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.executorId != nil {
                map["ExecutorId"] = self.executorId!
            }
            if self.expirationTime != nil {
                map["ExpirationTime"] = self.expirationTime!
            }
            if self.externalIpAddress != nil {
                map["ExternalIpAddress"] = self.externalIpAddress!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.ipAddress != nil {
                map["IpAddress"] = self.ipAddress!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.preemptible != nil {
                map["Preemptible"] = self.preemptible!
            }
            if self.resource != nil {
                map["Resource"] = self.resource?.toMap()
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskSustainable != nil {
                map["TaskSustainable"] = self.taskSustainable!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vswitchId != nil {
                map["VswitchId"] = self.vswitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllocationSpec"] as? String {
                self.allocationSpec = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["ArrayIndex"] as? Int32 {
                self.arrayIndex = value
            }
            if let value = dict["BlockDuration"] as? Int32 {
                self.blockDuration = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ExecutorId"] as? String {
                self.executorId = value
            }
            if let value = dict["ExpirationTime"] as? String {
                self.expirationTime = value
            }
            if let value = dict["ExternalIpAddress"] as? [String] {
                self.externalIpAddress = value
            }
            if let value = dict["HostName"] as? [String] {
                self.hostName = value
            }
            if let value = dict["Image"] as? String {
                self.image = value
            }
            if let value = dict["IpAddress"] as? [String] {
                self.ipAddress = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["JobName"] as? String {
                self.jobName = value
            }
            if let value = dict["Preemptible"] as? Bool {
                self.preemptible = value
            }
            if let value = dict["Resource"] as? [String: Any?] {
                var model = ListExecutorsResponseBody.Executors.Resource()
                model.fromMap(value)
                self.resource = model
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListExecutorsResponseBody.Executors.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListExecutorsResponseBody.Executors.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["TaskSustainable"] as? Bool {
                self.taskSustainable = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VswitchId"] as? String {
                self.vswitchId = value
            }
        }
    }
    public var executors: [ListExecutorsResponseBody.Executors]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executors != nil {
            var tmp : [Any] = []
            for k in self.executors! {
                tmp.append(k.toMap())
            }
            map["Executors"] = tmp
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
        if let value = dict["Executors"] as? [Any?] {
            var tmp : [ListExecutorsResponseBody.Executors] = []
            for v in value {
                if v != nil {
                    var model = ListExecutorsResponseBody.Executors()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.executors = tmp
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
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListExecutorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExecutorsResponseBody?

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
            var model = ListExecutorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListImagesRequest : Tea.TeaModel {
    public var imageCategory: String?

    public var imageIds: [String]?

    public var imageNames: [String]?

    public var imageType: String?

    public var mode: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageCategory != nil {
            map["ImageCategory"] = self.imageCategory!
        }
        if self.imageIds != nil {
            map["ImageIds"] = self.imageIds!
        }
        if self.imageNames != nil {
            map["ImageNames"] = self.imageNames!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
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
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["ImageIds"] as? [String] {
            self.imageIds = value
        }
        if let value = dict["ImageNames"] as? [String] {
            self.imageNames = value
        }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListImagesShrinkRequest : Tea.TeaModel {
    public var imageCategory: String?

    public var imageIdsShrink: String?

    public var imageNamesShrink: String?

    public var imageType: String?

    public var mode: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageCategory != nil {
            map["ImageCategory"] = self.imageCategory!
        }
        if self.imageIdsShrink != nil {
            map["ImageIds"] = self.imageIdsShrink!
        }
        if self.imageNamesShrink != nil {
            map["ImageNames"] = self.imageNamesShrink!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
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
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["ImageIds"] as? String {
            self.imageIdsShrink = value
        }
        if let value = dict["ImageNames"] as? String {
            self.imageNamesShrink = value
        }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class ListImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public var appId: String?

        public var createTime: String?

        public var description_: String?

        public var documentId: Int32?

        public var imageId: String?

        public var imageType: String?

        public var name: String?

        public var osTag: String?

        public var updateTime: String?

        public var version: String?

        public var weight: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.documentId != nil {
                map["DocumentId"] = self.documentId!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageType != nil {
                map["ImageType"] = self.imageType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.osTag != nil {
                map["OsTag"] = self.osTag!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.weight != nil {
                map["Weight"] = self.weight!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DocumentId"] as? Int32 {
                self.documentId = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageType"] as? String {
                self.imageType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OsTag"] as? String {
                self.osTag = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["Weight"] as? Int32 {
                self.weight = value
            }
        }
    }
    public var images: [ListImagesResponseBody.Images]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var success: Bool?

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
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
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
        if let value = dict["Images"] as? [Any?] {
            var tmp : [ListImagesResponseBody.Images] = []
            for v in value {
                if v != nil {
                    var model = ListImagesResponseBody.Images()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.images = tmp
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListImagesResponseBody?

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
            var model = ListImagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListJobExecutorsRequest : Tea.TeaModel {
    public var jobId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var taskName: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
    }
}

public class ListJobExecutorsResponseBody : Tea.TeaModel {
    public class ExecutorStatus : Tea.TeaModel {
        public var deleted: Int32?

        public var exception: Int32?

        public var failed: Int32?

        public var initing: Int32?

        public var pending: Int32?

        public var restarting: Int32?

        public var running: Int32?

        public var succeeded: Int32?

        public var suspended: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deleted != nil {
                map["Deleted"] = self.deleted!
            }
            if self.exception != nil {
                map["Exception"] = self.exception!
            }
            if self.failed != nil {
                map["Failed"] = self.failed!
            }
            if self.initing != nil {
                map["Initing"] = self.initing!
            }
            if self.pending != nil {
                map["Pending"] = self.pending!
            }
            if self.restarting != nil {
                map["Restarting"] = self.restarting!
            }
            if self.running != nil {
                map["Running"] = self.running!
            }
            if self.succeeded != nil {
                map["Succeeded"] = self.succeeded!
            }
            if self.suspended != nil {
                map["Suspended"] = self.suspended!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Deleted"] as? Int32 {
                self.deleted = value
            }
            if let value = dict["Exception"] as? Int32 {
                self.exception = value
            }
            if let value = dict["Failed"] as? Int32 {
                self.failed = value
            }
            if let value = dict["Initing"] as? Int32 {
                self.initing = value
            }
            if let value = dict["Pending"] as? Int32 {
                self.pending = value
            }
            if let value = dict["Restarting"] as? Int32 {
                self.restarting = value
            }
            if let value = dict["Running"] as? Int32 {
                self.running = value
            }
            if let value = dict["Succeeded"] as? Int32 {
                self.succeeded = value
            }
            if let value = dict["Suspended"] as? Int32 {
                self.suspended = value
            }
        }
    }
    public class Executors : Tea.TeaModel {
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
        public var allocationSpec: String?

        public var arrayIndex: Int32?

        public var blockDuration: Int32?

        public var createTime: String?

        public var endTime: String?

        public var executorId: String?

        public var expirationTime: String?

        public var externalIpAddress: [String]?

        public var hostName: [String]?

        public var ipAddress: [String]?

        public var preemptible: Bool?

        public var startTime: String?

        public var status: String?

        public var statusReason: String?

        public var tags: [ListJobExecutorsResponseBody.Executors.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allocationSpec != nil {
                map["AllocationSpec"] = self.allocationSpec!
            }
            if self.arrayIndex != nil {
                map["ArrayIndex"] = self.arrayIndex!
            }
            if self.blockDuration != nil {
                map["BlockDuration"] = self.blockDuration!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.executorId != nil {
                map["ExecutorId"] = self.executorId!
            }
            if self.expirationTime != nil {
                map["ExpirationTime"] = self.expirationTime!
            }
            if self.externalIpAddress != nil {
                map["ExternalIpAddress"] = self.externalIpAddress!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.ipAddress != nil {
                map["IpAddress"] = self.ipAddress!
            }
            if self.preemptible != nil {
                map["Preemptible"] = self.preemptible!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusReason != nil {
                map["StatusReason"] = self.statusReason!
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
            if let value = dict["AllocationSpec"] as? String {
                self.allocationSpec = value
            }
            if let value = dict["ArrayIndex"] as? Int32 {
                self.arrayIndex = value
            }
            if let value = dict["BlockDuration"] as? Int32 {
                self.blockDuration = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ExecutorId"] as? String {
                self.executorId = value
            }
            if let value = dict["ExpirationTime"] as? String {
                self.expirationTime = value
            }
            if let value = dict["ExternalIpAddress"] as? [String] {
                self.externalIpAddress = value
            }
            if let value = dict["HostName"] as? [String] {
                self.hostName = value
            }
            if let value = dict["IpAddress"] as? [String] {
                self.ipAddress = value
            }
            if let value = dict["Preemptible"] as? Bool {
                self.preemptible = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusReason"] as? String {
                self.statusReason = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListJobExecutorsResponseBody.Executors.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListJobExecutorsResponseBody.Executors.Tags()
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
    public var executorStatus: ListJobExecutorsResponseBody.ExecutorStatus?

    public var executors: [ListJobExecutorsResponseBody.Executors]?

    public var jobId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var taskName: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.executorStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.executorStatus != nil {
            map["ExecutorStatus"] = self.executorStatus?.toMap()
        }
        if self.executors != nil {
            var tmp : [Any] = []
            for k in self.executors! {
                tmp.append(k.toMap())
            }
            map["Executors"] = tmp
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
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
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExecutorStatus"] as? [String: Any?] {
            var model = ListJobExecutorsResponseBody.ExecutorStatus()
            model.fromMap(value)
            self.executorStatus = model
        }
        if let value = dict["Executors"] as? [Any?] {
            var tmp : [ListJobExecutorsResponseBody.Executors] = []
            for v in value {
                if v != nil {
                    var model = ListJobExecutorsResponseBody.Executors()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.executors = tmp
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
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
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListJobExecutorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobExecutorsResponseBody?

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
            var model = ListJobExecutorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var jobId: String?

        public var jobName: String?

        public var status: String?

        public var timeCreatedAfter: Int32?

        public var timeCreatedBefore: Int32?

        public override init() {
            super.init()
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
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.timeCreatedAfter != nil {
                map["TimeCreatedAfter"] = self.timeCreatedAfter!
            }
            if self.timeCreatedBefore != nil {
                map["TimeCreatedBefore"] = self.timeCreatedBefore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["JobName"] as? String {
                self.jobName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TimeCreatedAfter"] as? Int32 {
                self.timeCreatedAfter = value
            }
            if let value = dict["TimeCreatedBefore"] as? Int32 {
                self.timeCreatedBefore = value
            }
        }
    }
    public class SortBy : Tea.TeaModel {
        public var label: String?

        public var order: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.order != nil {
                map["Order"] = self.order!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Order"] as? String {
                self.order = value
            }
        }
    }
    public var filter: ListJobsRequest.Filter?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortBy: ListJobsRequest.SortBy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filter?.validate()
        try self.sortBy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            map["Filter"] = self.filter?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [String: Any?] {
            var model = ListJobsRequest.Filter()
            model.fromMap(value)
            self.filter = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? [String: Any?] {
            var model = ListJobsRequest.SortBy()
            model.fromMap(value)
            self.sortBy = model
        }
    }
}

public class ListJobsShrinkRequest : Tea.TeaModel {
    public var filterShrink: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortByShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterShrink != nil {
            map["Filter"] = self.filterShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortByShrink != nil {
            map["SortBy"] = self.sortByShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? String {
            self.filterShrink = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortByShrink = value
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public class JobList : Tea.TeaModel {
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
        public var appExtraInfo: String?

        public var appName: String?

        public var createTime: String?

        public var endTime: String?

        public var executorCount: Int32?

        public var jobDescription: String?

        public var jobId: String?

        public var jobName: String?

        public var ownerUid: String?

        public var startTime: String?

        public var status: String?

        public var tags: [ListJobsResponseBody.JobList.Tags]?

        public var taskCount: Int32?

        public var taskSustainable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appExtraInfo != nil {
                map["AppExtraInfo"] = self.appExtraInfo!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.executorCount != nil {
                map["ExecutorCount"] = self.executorCount!
            }
            if self.jobDescription != nil {
                map["JobDescription"] = self.jobDescription!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
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
            if self.taskCount != nil {
                map["TaskCount"] = self.taskCount!
            }
            if self.taskSustainable != nil {
                map["TaskSustainable"] = self.taskSustainable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppExtraInfo"] as? String {
                self.appExtraInfo = value
            }
            if let value = dict["AppName"] as? String {
                self.appName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ExecutorCount"] as? Int32 {
                self.executorCount = value
            }
            if let value = dict["JobDescription"] as? String {
                self.jobDescription = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["JobName"] as? String {
                self.jobName = value
            }
            if let value = dict["OwnerUid"] as? String {
                self.ownerUid = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListJobsResponseBody.JobList.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListJobsResponseBody.JobList.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["TaskCount"] as? Int32 {
                self.taskCount = value
            }
            if let value = dict["TaskSustainable"] as? Bool {
                self.taskSustainable = value
            }
        }
    }
    public var jobList: [ListJobsResponseBody.JobList]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.jobList != nil {
            var tmp : [Any] = []
            for k in self.jobList! {
                tmp.append(k.toMap())
            }
            map["JobList"] = tmp
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
        if let value = dict["JobList"] as? [Any?] {
            var tmp : [ListJobsResponseBody.JobList] = []
            for v in value {
                if v != nil {
                    var model = ListJobsResponseBody.JobList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobList = tmp
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobsResponseBody?

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
            var model = ListJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPoolsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var poolName: [String]?

        public var status: [String]?

        public var timeCreatedAfter: Int32?

        public var timeCreatedBefore: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.poolName != nil {
                map["PoolName"] = self.poolName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.timeCreatedAfter != nil {
                map["TimeCreatedAfter"] = self.timeCreatedAfter!
            }
            if self.timeCreatedBefore != nil {
                map["TimeCreatedBefore"] = self.timeCreatedBefore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PoolName"] as? [String] {
                self.poolName = value
            }
            if let value = dict["Status"] as? [String] {
                self.status = value
            }
            if let value = dict["TimeCreatedAfter"] as? Int32 {
                self.timeCreatedAfter = value
            }
            if let value = dict["TimeCreatedBefore"] as? Int32 {
                self.timeCreatedBefore = value
            }
        }
    }
    public var filter: ListPoolsRequest.Filter?

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
        try self.filter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            map["Filter"] = self.filter?.toMap()
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
        if let value = dict["Filter"] as? [String: Any?] {
            var model = ListPoolsRequest.Filter()
            model.fromMap(value)
            self.filter = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListPoolsShrinkRequest : Tea.TeaModel {
    public var filterShrink: String?

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
        if self.filterShrink != nil {
            map["Filter"] = self.filterShrink!
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
        if let value = dict["Filter"] as? String {
            self.filterShrink = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListPoolsResponseBody : Tea.TeaModel {
    public class PoolList : Tea.TeaModel {
        public var isDefault: Bool?

        public var maxExectorNum: Int32?

        public var poolName: String?

        public var priority: Int32?

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
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.maxExectorNum != nil {
                map["MaxExectorNum"] = self.maxExectorNum!
            }
            if self.poolName != nil {
                map["PoolName"] = self.poolName!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["MaxExectorNum"] as? Int32 {
                self.maxExectorNum = value
            }
            if let value = dict["PoolName"] as? String {
                self.poolName = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var poolList: [ListPoolsResponseBody.PoolList]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.poolList != nil {
            var tmp : [Any] = []
            for k in self.poolList! {
                tmp.append(k.toMap())
            }
            map["PoolList"] = tmp
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
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PoolList"] as? [Any?] {
            var tmp : [ListPoolsResponseBody.PoolList] = []
            for v in value {
                if v != nil {
                    var model = ListPoolsResponseBody.PoolList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.poolList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListPoolsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPoolsResponseBody?

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
            var model = ListPoolsResponseBody()
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
    public var maxResult: Int32?

    public var nextToken: String?

    public var resourceId: [String]?

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
        if self.maxResult != nil {
            map["MaxResult"] = self.maxResult!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        if let value = dict["MaxResult"] as? Int32 {
            self.maxResult = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
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
        public class TagResource : Tea.TeaModel {
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
        public var tagResource: [ListTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagResource != nil {
                var tmp : [Any] = []
                for k in self.tagResource! {
                    tmp.append(k.toMap())
                }
                map["TagResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagResource"] as? [Any?] {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in value {
                    if v != nil {
                        var model = ListTagResourcesResponseBody.TagResources.TagResource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagResource = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: ListTagResourcesResponseBody.TagResources?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagResources?.validate()
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
            map["TagResources"] = self.tagResources?.toMap()
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
        if let value = dict["TagResources"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(value)
            self.tagResources = model
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

public class RemoveImageRequest : Tea.TeaModel {
    public var imageId: String?

    public var imageType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageType != nil {
            map["ImageType"] = self.imageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["ImageType"] as? String {
            self.imageType = value
        }
    }
}

public class RemoveImageResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemoveImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveImageResponseBody?

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
            var model = RemoveImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SynchronizeAppRequest : Tea.TeaModel {
    public var appId: String?

    public var targetRegionIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.targetRegionIds != nil {
            map["TargetRegionIds"] = self.targetRegionIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TargetRegionIds"] as? [String] {
            self.targetRegionIds = value
        }
    }
}

public class SynchronizeAppShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var targetRegionIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.targetRegionIdsShrink != nil {
            map["TargetRegionIds"] = self.targetRegionIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["TargetRegionIds"] as? String {
            self.targetRegionIdsShrink = value
        }
    }
}

public class SynchronizeAppResponseBody : Tea.TeaModel {
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

public class SynchronizeAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SynchronizeAppResponseBody?

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
            var model = SynchronizeAppResponseBody()
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
    public var resourceId: [String]?

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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
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

public class UnTagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceId: [String]?

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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UnTagResourcesResponseBody : Tea.TeaModel {
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

public class UnTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnTagResourcesResponseBody?

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
            var model = UnTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateActionPlanRequest : Tea.TeaModel {
    public var actionPlanId: String?

    public var desiredCapacity: Double?

    public var enabled: String?

    public var intervalMinutes: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionPlanId != nil {
            map["ActionPlanId"] = self.actionPlanId!
        }
        if self.desiredCapacity != nil {
            map["DesiredCapacity"] = self.desiredCapacity!
        }
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        if self.intervalMinutes != nil {
            map["IntervalMinutes"] = self.intervalMinutes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionPlanId"] as? String {
            self.actionPlanId = value
        }
        if let value = dict["DesiredCapacity"] as? Double {
            self.desiredCapacity = value
        }
        if let value = dict["Enabled"] as? String {
            self.enabled = value
        }
        if let value = dict["IntervalMinutes"] as? Int32 {
            self.intervalMinutes = value
        }
    }
}

public class UpdateActionPlanResponseBody : Tea.TeaModel {
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

public class UpdateActionPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateActionPlanResponseBody?

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
            var model = UpdateActionPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePoolRequest : Tea.TeaModel {
    public class ResourceLimits : Tea.TeaModel {
        public var maxExectorNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxExectorNum != nil {
                map["MaxExectorNum"] = self.maxExectorNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxExectorNum"] as? Int32 {
                self.maxExectorNum = value
            }
        }
    }
    public var poolName: String?

    public var priority: Int32?

    public var resourceLimits: UpdatePoolRequest.ResourceLimits?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceLimits?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.resourceLimits != nil {
            map["ResourceLimits"] = self.resourceLimits?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PoolName"] as? String {
            self.poolName = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ResourceLimits"] as? [String: Any?] {
            var model = UpdatePoolRequest.ResourceLimits()
            model.fromMap(value)
            self.resourceLimits = model
        }
    }
}

public class UpdatePoolShrinkRequest : Tea.TeaModel {
    public var poolName: String?

    public var priority: Int32?

    public var resourceLimitsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.poolName != nil {
            map["PoolName"] = self.poolName!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.resourceLimitsShrink != nil {
            map["ResourceLimits"] = self.resourceLimitsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PoolName"] as? String {
            self.poolName = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["ResourceLimits"] as? String {
            self.resourceLimitsShrink = value
        }
    }
}

public class UpdatePoolResponseBody : Tea.TeaModel {
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

public class UpdatePoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePoolResponseBody?

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
            var model = UpdatePoolResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
