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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Password") {
                    self.password = dict["Password"] as! String
                }
                if dict.keys.contains("Server") {
                    self.server = dict["Server"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsACREnterprise") {
                self.isACREnterprise = dict["IsACREnterprise"] as! Bool
            }
            if dict.keys.contains("IsACRRegistry") {
                self.isACRRegistry = dict["IsACRRegistry"] as! Bool
            }
            if dict.keys.contains("RegistryCredential") {
                var model = AddImageRequest.ContainerImageSpec.RegistryCredential()
                model.fromMap(dict["RegistryCredential"] as! [String: Any])
                self.registryCredential = model
            }
            if dict.keys.contains("RegistryCriId") {
                self.registryCriId = dict["RegistryCriId"] as! String
            }
            if dict.keys.contains("RegistryUrl") {
                self.registryUrl = dict["RegistryUrl"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerImageSpec") {
            var model = AddImageRequest.ContainerImageSpec()
            model.fromMap(dict["ContainerImageSpec"] as! [String: Any])
            self.containerImageSpec = model
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ImageType") {
            self.imageType = dict["ImageType"] as! String
        }
        if dict.keys.contains("ImageVersion") {
            self.imageVersion = dict["ImageVersion"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("VMImageSpec") {
            var model = AddImageRequest.VMImageSpec()
            model.fromMap(dict["VMImageSpec"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerImageSpec") {
            self.containerImageSpecShrink = dict["ContainerImageSpec"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ImageType") {
            self.imageType = dict["ImageType"] as! String
        }
        if dict.keys.contains("ImageVersion") {
            self.imageVersion = dict["ImageVersion"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("VMImageSpec") {
            self.VMImageSpecShrink = dict["VMImageSpec"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateJobRequest : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableExternalIpAddress") {
                    self.enableExternalIpAddress = dict["EnableExternalIpAddress"] as! Bool
                }
                if dict.keys.contains("Vswitch") {
                    self.vswitch = dict["Vswitch"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var allocationSpec: String?

        public var network: CreateJobRequest.DeploymentPolicy.Network?

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
            if self.network != nil {
                map["Network"] = self.network?.toMap()
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllocationSpec") {
                self.allocationSpec = dict["AllocationSpec"] as! String
            }
            if dict.keys.contains("Network") {
                var model = CreateJobRequest.DeploymentPolicy.Network()
                model.fromMap(dict["Network"] as! [String: Any])
                self.network = model
            }
            if dict.keys.contains("Tag") {
                var tmp : [CreateJobRequest.DeploymentPolicy.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = CreateJobRequest.DeploymentPolicy.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tag = tmp
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IndexEnd") {
                        self.indexEnd = dict["IndexEnd"] as! Int32
                    }
                    if dict.keys.contains("IndexStart") {
                        self.indexStart = dict["IndexStart"] as! Int32
                    }
                    if dict.keys.contains("IndexStep") {
                        self.indexStep = dict["IndexStep"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArraySpec") {
                    var model = CreateJobRequest.Tasks.ExecutorPolicy.ArraySpec()
                    model.fromMap(dict["ArraySpec"] as! [String: Any])
                    self.arraySpec = model
                }
                if dict.keys.contains("MaxCount") {
                    self.maxCount = dict["MaxCount"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Size") {
                            self.size = dict["Size"] as! Int32
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                    }
                }
                public var cores: Double?

                public var disks: [CreateJobRequest.Tasks.TaskSpec.Resource.Disks]?

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
                    if self.memory != nil {
                        map["Memory"] = self.memory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cores") {
                        self.cores = dict["Cores"] as! Double
                    }
                    if dict.keys.contains("Disks") {
                        var tmp : [CreateJobRequest.Tasks.TaskSpec.Resource.Disks] = []
                        for v in dict["Disks"] as! [Any] {
                            var model = CreateJobRequest.Tasks.TaskSpec.Resource.Disks()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.disks = tmp
                    }
                    if dict.keys.contains("Memory") {
                        self.memory = dict["Memory"] as! Double
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Name") {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("Value") {
                                self.value = dict["Value"] as! String
                            }
                        }
                    }
                    public var appId: String?

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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AppId") {
                            self.appId = dict["AppId"] as! String
                        }
                        if dict.keys.contains("Command") {
                            self.command = dict["Command"] as! [String]
                        }
                        if dict.keys.contains("EnvironmentVars") {
                            var tmp : [CreateJobRequest.Tasks.TaskSpec.TaskExecutor.Container.EnvironmentVars] = []
                            for v in dict["EnvironmentVars"] as! [Any] {
                                var model = CreateJobRequest.Tasks.TaskSpec.TaskExecutor.Container.EnvironmentVars()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.environmentVars = tmp
                        }
                        if dict.keys.contains("Image") {
                            self.image = dict["Image"] as! String
                        }
                        if dict.keys.contains("WorkingDir") {
                            self.workingDir = dict["WorkingDir"] as! String
                        }
                    }
                }
                public class VM : Tea.TeaModel {
                    public var appId: String?

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
                        if self.appId != nil {
                            map["AppId"] = self.appId!
                        }
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AppId") {
                            self.appId = dict["AppId"] as! String
                        }
                        if dict.keys.contains("Image") {
                            self.image = dict["Image"] as! String
                        }
                        if dict.keys.contains("PrologScript") {
                            self.prologScript = dict["PrologScript"] as! String
                        }
                        if dict.keys.contains("Script") {
                            self.script = dict["Script"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Container") {
                        var model = CreateJobRequest.Tasks.TaskSpec.TaskExecutor.Container()
                        model.fromMap(dict["Container"] as! [String: Any])
                        self.container = model
                    }
                    if dict.keys.contains("VM") {
                        var model = CreateJobRequest.Tasks.TaskSpec.TaskExecutor.VM()
                        model.fromMap(dict["VM"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MountOptions") {
                        self.mountOptions = dict["MountOptions"] as! String
                    }
                    if dict.keys.contains("MountPath") {
                        self.mountPath = dict["MountPath"] as! String
                    }
                    if dict.keys.contains("VolumeDriver") {
                        self.volumeDriver = dict["VolumeDriver"] as! String
                    }
                }
            }
            public var resource: CreateJobRequest.Tasks.TaskSpec.Resource?

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
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resource != nil {
                    map["Resource"] = self.resource?.toMap()
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Resource") {
                    var model = CreateJobRequest.Tasks.TaskSpec.Resource()
                    model.fromMap(dict["Resource"] as! [String: Any])
                    self.resource = model
                }
                if dict.keys.contains("TaskExecutor") {
                    var tmp : [CreateJobRequest.Tasks.TaskSpec.TaskExecutor] = []
                    for v in dict["TaskExecutor"] as! [Any] {
                        var model = CreateJobRequest.Tasks.TaskSpec.TaskExecutor()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.taskExecutor = tmp
                }
                if dict.keys.contains("VolumeMount") {
                    var tmp : [CreateJobRequest.Tasks.TaskSpec.VolumeMount] = []
                    for v in dict["VolumeMount"] as! [Any] {
                        var model = CreateJobRequest.Tasks.TaskSpec.VolumeMount()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExecutorPolicy") {
                var model = CreateJobRequest.Tasks.ExecutorPolicy()
                model.fromMap(dict["ExecutorPolicy"] as! [String: Any])
                self.executorPolicy = model
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TaskSpec") {
                var model = CreateJobRequest.Tasks.TaskSpec()
                model.fromMap(dict["TaskSpec"] as! [String: Any])
                self.taskSpec = model
            }
            if dict.keys.contains("TaskSustainable") {
                self.taskSustainable = dict["TaskSustainable"] as! Bool
            }
        }
    }
    public var deploymentPolicy: CreateJobRequest.DeploymentPolicy?

    public var jobDescription: String?

    public var jobName: String?

    public var jobScheduler: String?

    public var tasks: [CreateJobRequest.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deploymentPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeploymentPolicy") {
            var model = CreateJobRequest.DeploymentPolicy()
            model.fromMap(dict["DeploymentPolicy"] as! [String: Any])
            self.deploymentPolicy = model
        }
        if dict.keys.contains("JobDescription") {
            self.jobDescription = dict["JobDescription"] as! String
        }
        if dict.keys.contains("JobName") {
            self.jobName = dict["JobName"] as! String
        }
        if dict.keys.contains("JobScheduler") {
            self.jobScheduler = dict["JobScheduler"] as! String
        }
        if dict.keys.contains("Tasks") {
            var tmp : [CreateJobRequest.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = CreateJobRequest.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
    }
}

public class CreateJobShrinkRequest : Tea.TeaModel {
    public var deploymentPolicyShrink: String?

    public var jobDescription: String?

    public var jobName: String?

    public var jobScheduler: String?

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
        if self.tasksShrink != nil {
            map["Tasks"] = self.tasksShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeploymentPolicy") {
            self.deploymentPolicyShrink = dict["DeploymentPolicy"] as! String
        }
        if dict.keys.contains("JobDescription") {
            self.jobDescription = dict["JobDescription"] as! String
        }
        if dict.keys.contains("JobName") {
            self.jobName = dict["JobName"] as! String
        }
        if dict.keys.contains("JobScheduler") {
            self.jobScheduler = dict["JobScheduler"] as! String
        }
        if dict.keys.contains("Tasks") {
            self.tasksShrink = dict["Tasks"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExecutorIds") {
                self.executorIds = dict["ExecutorIds"] as! [String]
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            var tmp : [CreateJobResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = CreateJobResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArrayIndex") {
                    self.arrayIndex = dict["ArrayIndex"] as! [Int32]
                }
                if dict.keys.contains("TaskName") {
                    self.taskName = dict["TaskName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("TaskSpec") {
                var tmp : [DeleteJobsRequest.JobSpec.TaskSpec] = []
                for v in dict["TaskSpec"] as! [Any] {
                    var model = DeleteJobsRequest.JobSpec.TaskSpec()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskSpec = tmp
            }
        }
    }
    public var executorIds: [String]?

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
        if self.jobSpec != nil {
            var tmp : [Any] = []
            for k in self.jobSpec! {
                tmp.append(k.toMap())
            }
            map["JobSpec"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutorIds") {
            self.executorIds = dict["ExecutorIds"] as! [String]
        }
        if dict.keys.contains("JobSpec") {
            var tmp : [DeleteJobsRequest.JobSpec] = []
            for v in dict["JobSpec"] as! [Any] {
                var model = DeleteJobsRequest.JobSpec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobSpec = tmp
        }
    }
}

public class DeleteJobsShrinkRequest : Tea.TeaModel {
    public var executorIdsShrink: String?

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
        if self.jobSpecShrink != nil {
            map["JobSpec"] = self.jobSpecShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutorIds") {
            self.executorIdsShrink = dict["ExecutorIds"] as! String
        }
        if dict.keys.contains("JobSpec") {
            self.jobSpecShrink = dict["JobSpec"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArrayIndex") {
            self.arrayIndex = dict["ArrayIndex"] as! [Int32]
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("MetricName") {
            self.metricName = dict["MetricName"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArrayIndex") {
            self.arrayIndexShrink = dict["ArrayIndex"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("MetricName") {
            self.metricName = dict["MetricName"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataPoints") {
            self.dataPoints = dict["DataPoints"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeJobMetricDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArrayIndex") {
            self.arrayIndex = dict["ArrayIndex"] as! [Int32]
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArrayIndex") {
            self.arrayIndexShrink = dict["ArrayIndex"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ArrayIndex") {
                self.arrayIndex = dict["ArrayIndex"] as! Int32
            }
            if dict.keys.contains("Metric") {
                self.metric = dict["Metric"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Metrics") {
            var tmp : [DescribeJobMetricLastResponseBody.Metrics] = []
            for v in dict["Metrics"] as! [Any] {
                var model = DescribeJobMetricLastResponseBody.Metrics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.metrics = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeJobMetricLastResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetImageRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageCategory") {
            self.imageCategory = dict["ImageCategory"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageType") {
            self.imageType = dict["ImageType"] as! String
        }
    }
}

public class GetImageResponseBody : Tea.TeaModel {
    public class Image : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Password") {
                        self.password = dict["Password"] as! String
                    }
                    if dict.keys.contains("Server") {
                        self.server = dict["Server"] as! String
                    }
                    if dict.keys.contains("UserName") {
                        self.userName = dict["UserName"] as! String
                    }
                }
            }
            public var isACREnterprise: Bool?

            public var isACRRegistry: Bool?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IsACREnterprise") {
                    self.isACREnterprise = dict["IsACREnterprise"] as! Bool
                }
                if dict.keys.contains("IsACRRegistry") {
                    self.isACRRegistry = dict["IsACRRegistry"] as! Bool
                }
                if dict.keys.contains("RegistryCredential") {
                    var model = GetImageResponseBody.Image.ContainerImageSpec.RegistryCredential()
                    model.fromMap(dict["RegistryCredential"] as! [String: Any])
                    self.registryCredential = model
                }
                if dict.keys.contains("RegistryCriId") {
                    self.registryCriId = dict["RegistryCriId"] as! String
                }
                if dict.keys.contains("RegistryUrl") {
                    self.registryUrl = dict["RegistryUrl"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Architecture") {
                    self.architecture = dict["Architecture"] as! String
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("OsTag") {
                    self.osTag = dict["OsTag"] as! String
                }
                if dict.keys.contains("Platform") {
                    self.platform = dict["Platform"] as! String
                }
            }
        }
        public var appId: String?

        public var containerImageSpec: GetImageResponseBody.Image.ContainerImageSpec?

        public var createTime: String?

        public var description_: String?

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
            try self.VMImageSpec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("ContainerImageSpec") {
                var model = GetImageResponseBody.Image.ContainerImageSpec()
                model.fromMap(dict["ContainerImageSpec"] as! [String: Any])
                self.containerImageSpec = model
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ImageType") {
                self.imageType = dict["ImageType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VMImageSpec") {
                var model = GetImageResponseBody.Image.VMImageSpec()
                model.fromMap(dict["VMImageSpec"] as! [String: Any])
                self.VMImageSpec = model
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Image") {
            var model = GetImageResponseBody.Image()
            model.fromMap(dict["Image"] as! [String: Any])
            self.image = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
    }
}

public class GetJobResponseBody : Tea.TeaModel {
    public class JobInfo : Tea.TeaModel {
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EnableExternalIpAddress") {
                        self.enableExternalIpAddress = dict["EnableExternalIpAddress"] as! Bool
                    }
                    if dict.keys.contains("Vswitch") {
                        self.vswitch = dict["Vswitch"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TagKey") {
                        self.tagKey = dict["TagKey"] as! String
                    }
                    if dict.keys.contains("TagValue") {
                        self.tagValue = dict["TagValue"] as! String
                    }
                }
            }
            public var allocationSpec: String?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllocationSpec") {
                    self.allocationSpec = dict["AllocationSpec"] as! String
                }
                if dict.keys.contains("Network") {
                    var model = GetJobResponseBody.JobInfo.DeploymentPolicy.Network()
                    model.fromMap(dict["Network"] as! [String: Any])
                    self.network = model
                }
                if dict.keys.contains("Tags") {
                    var tmp : [GetJobResponseBody.JobInfo.DeploymentPolicy.Tags] = []
                    for v in dict["Tags"] as! [Any] {
                        var model = GetJobResponseBody.JobInfo.DeploymentPolicy.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("IndexEnd") {
                            self.indexEnd = dict["IndexEnd"] as! Int32
                        }
                        if dict.keys.contains("IndexStart") {
                            self.indexStart = dict["IndexStart"] as! Int32
                        }
                        if dict.keys.contains("IndexStep") {
                            self.indexStep = dict["IndexStep"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ArraySpec") {
                        var model = GetJobResponseBody.JobInfo.Tasks.ExecutorPolicy.ArraySpec()
                        model.fromMap(dict["ArraySpec"] as! [String: Any])
                        self.arraySpec = model
                    }
                    if dict.keys.contains("MaxCount") {
                        self.maxCount = dict["MaxCount"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ArrayId") {
                        self.arrayId = dict["ArrayId"] as! Int32
                    }
                    if dict.keys.contains("CreateTime") {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("EndTime") {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("StatusReason") {
                        self.statusReason = dict["StatusReason"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Size") {
                                self.size = dict["Size"] as! Int32
                            }
                            if dict.keys.contains("Type") {
                                self.type = dict["Type"] as! String
                            }
                        }
                    }
                    public var cores: Double?

                    public var disks: [GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource.Disks]?

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
                        if self.memory != nil {
                            map["Memory"] = self.memory!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Cores") {
                            self.cores = dict["Cores"] as! Double
                        }
                        if dict.keys.contains("Disks") {
                            var tmp : [GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource.Disks] = []
                            for v in dict["Disks"] as! [Any] {
                                var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource.Disks()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.disks = tmp
                        }
                        if dict.keys.contains("Memory") {
                            self.memory = dict["Memory"] as! Int32
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Image") {
                                self.image = dict["Image"] as! String
                            }
                            if dict.keys.contains("PrologScript") {
                                self.prologScript = dict["PrologScript"] as! String
                            }
                            if dict.keys.contains("Script") {
                                self.script = dict["Script"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("VM") {
                            var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor.VM()
                            model.fromMap(dict["VM"] as! [String: Any])
                            self.VM = model
                        }
                    }
                }
                public var resource: GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource?

                public var taskExecutor: [GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor]?

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
                    if self.resource != nil {
                        map["Resource"] = self.resource?.toMap()
                    }
                    if self.taskExecutor != nil {
                        var tmp : [Any] = []
                        for k in self.taskExecutor! {
                            tmp.append(k.toMap())
                        }
                        map["TaskExecutor"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Resource") {
                        var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource()
                        model.fromMap(dict["Resource"] as! [String: Any])
                        self.resource = model
                    }
                    if dict.keys.contains("TaskExecutor") {
                        var tmp : [GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor] = []
                        for v in dict["TaskExecutor"] as! [Any] {
                            var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.taskExecutor = tmp
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExecutorPolicy") {
                    var model = GetJobResponseBody.JobInfo.Tasks.ExecutorPolicy()
                    model.fromMap(dict["ExecutorPolicy"] as! [String: Any])
                    self.executorPolicy = model
                }
                if dict.keys.contains("ExecutorStatus") {
                    var tmp : [GetJobResponseBody.JobInfo.Tasks.ExecutorStatus] = []
                    for v in dict["ExecutorStatus"] as! [Any] {
                        var model = GetJobResponseBody.JobInfo.Tasks.ExecutorStatus()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.executorStatus = tmp
                }
                if dict.keys.contains("TaskName") {
                    self.taskName = dict["TaskName"] as! String
                }
                if dict.keys.contains("TaskSpec") {
                    var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec()
                    model.fromMap(dict["TaskSpec"] as! [String: Any])
                    self.taskSpec = model
                }
                if dict.keys.contains("TaskSustainable") {
                    self.taskSustainable = dict["TaskSustainable"] as! Bool
                }
            }
        }
        public var createTime: String?

        public var deploymentPolicy: GetJobResponseBody.JobInfo.DeploymentPolicy?

        public var endTime: String?

        public var jobDescription: String?

        public var jobId: String?

        public var jobName: String?

        public var jobScheduler: String?

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
            try self.deploymentPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeploymentPolicy") {
                var model = GetJobResponseBody.JobInfo.DeploymentPolicy()
                model.fromMap(dict["DeploymentPolicy"] as! [String: Any])
                self.deploymentPolicy = model
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("JobDescription") {
                self.jobDescription = dict["JobDescription"] as! String
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("JobName") {
                self.jobName = dict["JobName"] as! String
            }
            if dict.keys.contains("JobScheduler") {
                self.jobScheduler = dict["JobScheduler"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tasks") {
                var tmp : [GetJobResponseBody.JobInfo.Tasks] = []
                for v in dict["Tasks"] as! [Any] {
                    var model = GetJobResponseBody.JobInfo.Tasks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobInfo") {
            var model = GetJobResponseBody.JobInfo()
            model.fromMap(dict["JobInfo"] as! [String: Any])
            self.jobInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExecutorsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var executorIds: [String]?

        public var ipAddresses: [String]?

        public var jobName: String?

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
            if self.executorIds != nil {
                map["ExecutorIds"] = self.executorIds!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExecutorIds") {
                self.executorIds = dict["ExecutorIds"] as! [String]
            }
            if dict.keys.contains("IpAddresses") {
                self.ipAddresses = dict["IpAddresses"] as! [String]
            }
            if dict.keys.contains("JobName") {
                self.jobName = dict["JobName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! [String]
            }
            if dict.keys.contains("TimeCreatedAfter") {
                self.timeCreatedAfter = dict["TimeCreatedAfter"] as! Int32
            }
            if dict.keys.contains("TimeCreatedBefore") {
                self.timeCreatedBefore = dict["TimeCreatedBefore"] as! Int32
            }
        }
    }
    public var filter: ListExecutorsRequest.Filter?

    public var pageNumber: String?

    public var pageSize: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var model = ListExecutorsRequest.Filter()
            model.fromMap(dict["Filter"] as! [String: Any])
            self.filter = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
    }
}

public class ListExecutorsShrinkRequest : Tea.TeaModel {
    public var filterShrink: String?

    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            self.filterShrink = dict["Filter"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Size") {
                        self.size = dict["Size"] as! Int32
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var cores: Double?

            public var disks: [ListExecutorsResponseBody.Executors.Resource.Disks]?

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
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cores") {
                    self.cores = dict["Cores"] as! Double
                }
                if dict.keys.contains("Disks") {
                    var tmp : [ListExecutorsResponseBody.Executors.Resource.Disks] = []
                    for v in dict["Disks"] as! [Any] {
                        var model = ListExecutorsResponseBody.Executors.Resource.Disks()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.disks = tmp
                }
                if dict.keys.contains("Memory") {
                    self.memory = dict["Memory"] as! Double
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var arrayIndex: Int32?

        public var createTime: String?

        public var endTime: String?

        public var executorId: String?

        public var externalIpAddress: [String]?

        public var hostName: [String]?

        public var image: String?

        public var ipAddress: [String]?

        public var jobId: String?

        public var jobName: String?

        public var resource: ListExecutorsResponseBody.Executors.Resource?

        public var resourceType: String?

        public var startTime: String?

        public var status: String?

        public var statusReason: String?

        public var tags: [ListExecutorsResponseBody.Executors.Tags]?

        public var taskName: String?

        public var taskSustainable: Bool?

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
            if self.arrayIndex != nil {
                map["ArrayIndex"] = self.arrayIndex!
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
            if self.vswitchId != nil {
                map["VswitchId"] = self.vswitchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ArrayIndex") {
                self.arrayIndex = dict["ArrayIndex"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ExecutorId") {
                self.executorId = dict["ExecutorId"] as! String
            }
            if dict.keys.contains("ExternalIpAddress") {
                self.externalIpAddress = dict["ExternalIpAddress"] as! [String]
            }
            if dict.keys.contains("HostName") {
                self.hostName = dict["HostName"] as! [String]
            }
            if dict.keys.contains("Image") {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("IpAddress") {
                self.ipAddress = dict["IpAddress"] as! [String]
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("JobName") {
                self.jobName = dict["JobName"] as! String
            }
            if dict.keys.contains("Resource") {
                var model = ListExecutorsResponseBody.Executors.Resource()
                model.fromMap(dict["Resource"] as! [String: Any])
                self.resource = model
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListExecutorsResponseBody.Executors.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListExecutorsResponseBody.Executors.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TaskSustainable") {
                self.taskSustainable = dict["TaskSustainable"] as! Bool
            }
            if dict.keys.contains("VswitchId") {
                self.vswitchId = dict["VswitchId"] as! String
            }
        }
    }
    public var executors: [ListExecutorsResponseBody.Executors]?

    public var pageNumber: String?

    public var pageSize: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Executors") {
            var tmp : [ListExecutorsResponseBody.Executors] = []
            for v in dict["Executors"] as! [Any] {
                var model = ListExecutorsResponseBody.Executors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.executors = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListExecutorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListImagesRequest : Tea.TeaModel {
    public var imageCategory: String?

    public var imageIds: [String]?

    public var imageNames: [String]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageCategory") {
            self.imageCategory = dict["ImageCategory"] as! String
        }
        if dict.keys.contains("ImageIds") {
            self.imageIds = dict["ImageIds"] as! [String]
        }
        if dict.keys.contains("ImageNames") {
            self.imageNames = dict["ImageNames"] as! [String]
        }
        if dict.keys.contains("ImageType") {
            self.imageType = dict["ImageType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListImagesShrinkRequest : Tea.TeaModel {
    public var imageCategory: String?

    public var imageIdsShrink: String?

    public var imageNamesShrink: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageCategory") {
            self.imageCategory = dict["ImageCategory"] as! String
        }
        if dict.keys.contains("ImageIds") {
            self.imageIdsShrink = dict["ImageIds"] as! String
        }
        if dict.keys.contains("ImageNames") {
            self.imageNamesShrink = dict["ImageNames"] as! String
        }
        if dict.keys.contains("ImageType") {
            self.imageType = dict["ImageType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public var appId: String?

        public var createTime: String?

        public var description_: String?

        public var imageId: String?

        public var imageType: String?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
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
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageType") {
                self.imageType = dict["ImageType"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Images") {
            var tmp : [ListImagesResponseBody.Images] = []
            for v in dict["Images"] as! [Any] {
                var model = ListImagesResponseBody.Images()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.images = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobExecutorsRequest : Tea.TeaModel {
    public var jobId: String?

    public var pageNumber: String?

    public var pageSize: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
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

        public var running: Int32?

        public var succeeded: Int32?

        public override init() {
            super.init()
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
            if self.running != nil {
                map["Running"] = self.running!
            }
            if self.succeeded != nil {
                map["Succeeded"] = self.succeeded!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Deleted") {
                self.deleted = dict["Deleted"] as! Int32
            }
            if dict.keys.contains("Exception") {
                self.exception = dict["Exception"] as! Int32
            }
            if dict.keys.contains("Failed") {
                self.failed = dict["Failed"] as! Int32
            }
            if dict.keys.contains("Initing") {
                self.initing = dict["Initing"] as! Int32
            }
            if dict.keys.contains("Pending") {
                self.pending = dict["Pending"] as! Int32
            }
            if dict.keys.contains("Running") {
                self.running = dict["Running"] as! Int32
            }
            if dict.keys.contains("Succeeded") {
                self.succeeded = dict["Succeeded"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var arrayIndex: Int32?

        public var createTime: String?

        public var endTime: String?

        public var executorId: String?

        public var externalIpAddress: [String]?

        public var hostName: [String]?

        public var ipAddress: [String]?

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
            if self.arrayIndex != nil {
                map["ArrayIndex"] = self.arrayIndex!
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
            if self.externalIpAddress != nil {
                map["ExternalIpAddress"] = self.externalIpAddress!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.ipAddress != nil {
                map["IpAddress"] = self.ipAddress!
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ArrayIndex") {
                self.arrayIndex = dict["ArrayIndex"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ExecutorId") {
                self.executorId = dict["ExecutorId"] as! String
            }
            if dict.keys.contains("ExternalIpAddress") {
                self.externalIpAddress = dict["ExternalIpAddress"] as! [String]
            }
            if dict.keys.contains("HostName") {
                self.hostName = dict["HostName"] as! [String]
            }
            if dict.keys.contains("IpAddress") {
                self.ipAddress = dict["IpAddress"] as! [String]
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusReason") {
                self.statusReason = dict["StatusReason"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListJobExecutorsResponseBody.Executors.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListJobExecutorsResponseBody.Executors.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
        }
    }
    public var executorStatus: ListJobExecutorsResponseBody.ExecutorStatus?

    public var executors: [ListJobExecutorsResponseBody.Executors]?

    public var jobId: String?

    public var pageNumber: String?

    public var pageSize: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExecutorStatus") {
            var model = ListJobExecutorsResponseBody.ExecutorStatus()
            model.fromMap(dict["ExecutorStatus"] as! [String: Any])
            self.executorStatus = model
        }
        if dict.keys.contains("Executors") {
            var tmp : [ListJobExecutorsResponseBody.Executors] = []
            for v in dict["Executors"] as! [Any] {
                var model = ListJobExecutorsResponseBody.Executors()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.executors = tmp
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListJobExecutorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("JobName") {
                self.jobName = dict["JobName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TimeCreatedAfter") {
                self.timeCreatedAfter = dict["TimeCreatedAfter"] as! Int32
            }
            if dict.keys.contains("TimeCreatedBefore") {
                self.timeCreatedBefore = dict["TimeCreatedBefore"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! String
            }
            if dict.keys.contains("Order") {
                self.order = dict["Order"] as! String
            }
        }
    }
    public var filter: ListJobsRequest.Filter?

    public var pageNumber: String?

    public var pageSize: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var model = ListJobsRequest.Filter()
            model.fromMap(dict["Filter"] as! [String: Any])
            self.filter = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SortBy") {
            var model = ListJobsRequest.SortBy()
            model.fromMap(dict["SortBy"] as! [String: Any])
            self.sortBy = model
        }
    }
}

public class ListJobsShrinkRequest : Tea.TeaModel {
    public var filterShrink: String?

    public var pageNumber: String?

    public var pageSize: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            self.filterShrink = dict["Filter"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortByShrink = dict["SortBy"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ExecutorCount") {
                self.executorCount = dict["ExecutorCount"] as! Int32
            }
            if dict.keys.contains("JobDescription") {
                self.jobDescription = dict["JobDescription"] as! String
            }
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("JobName") {
                self.jobName = dict["JobName"] as! String
            }
            if dict.keys.contains("OwnerUid") {
                self.ownerUid = dict["OwnerUid"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListJobsResponseBody.JobList.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListJobsResponseBody.JobList.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TaskCount") {
                self.taskCount = dict["TaskCount"] as! Int32
            }
            if dict.keys.contains("TaskSustainable") {
                self.taskSustainable = dict["TaskSustainable"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobList") {
            var tmp : [ListJobsResponseBody.JobList] = []
            for v in dict["JobList"] as! [Any] {
                var model = ListJobsResponseBody.JobList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobList = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResult") {
            self.maxResult = dict["MaxResult"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagResource") {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in dict["TagResource"] as! [Any] {
                    var model = ListTagResourcesResponseBody.TagResources.TagResource()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(dict["TagResources"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageType") {
            self.imageType = dict["ImageType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RemoveImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
