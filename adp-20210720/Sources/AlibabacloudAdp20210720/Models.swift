import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ComponentVersion : Tea.TeaModel {
    public var appVersion: String?

    public var componentName: String?

    public var componentUID: String?

    public var description_: String?

    public var documents: String?

    public var imagesMapping: String?

    public var namespace: String?

    public var orchestrationType: String?

    public var orchestrationValues: String?

    public var packageURL: String?

    public var parentComponent: Bool?

    public var platforms: [Platform]?

    public var readme: String?

    public var resources: String?

    public var source: String?

    public var uid: String?

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
        if self.appVersion != nil {
            map["appVersion"] = self.appVersion!
        }
        if self.componentName != nil {
            map["componentName"] = self.componentName!
        }
        if self.componentUID != nil {
            map["componentUID"] = self.componentUID!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.documents != nil {
            map["documents"] = self.documents!
        }
        if self.imagesMapping != nil {
            map["imagesMapping"] = self.imagesMapping!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.orchestrationType != nil {
            map["orchestrationType"] = self.orchestrationType!
        }
        if self.orchestrationValues != nil {
            map["orchestrationValues"] = self.orchestrationValues!
        }
        if self.packageURL != nil {
            map["packageURL"] = self.packageURL!
        }
        if self.parentComponent != nil {
            map["parentComponent"] = self.parentComponent!
        }
        if self.platforms != nil {
            var tmp : [Any] = []
            for k in self.platforms! {
                tmp.append(k.toMap())
            }
            map["platforms"] = tmp
        }
        if self.readme != nil {
            map["readme"] = self.readme!
        }
        if self.resources != nil {
            map["resources"] = self.resources!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appVersion") && dict["appVersion"] != nil {
            self.appVersion = dict["appVersion"] as! String
        }
        if dict.keys.contains("componentName") && dict["componentName"] != nil {
            self.componentName = dict["componentName"] as! String
        }
        if dict.keys.contains("componentUID") && dict["componentUID"] != nil {
            self.componentUID = dict["componentUID"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("documents") && dict["documents"] != nil {
            self.documents = dict["documents"] as! String
        }
        if dict.keys.contains("imagesMapping") && dict["imagesMapping"] != nil {
            self.imagesMapping = dict["imagesMapping"] as! String
        }
        if dict.keys.contains("namespace") && dict["namespace"] != nil {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("orchestrationType") && dict["orchestrationType"] != nil {
            self.orchestrationType = dict["orchestrationType"] as! String
        }
        if dict.keys.contains("orchestrationValues") && dict["orchestrationValues"] != nil {
            self.orchestrationValues = dict["orchestrationValues"] as! String
        }
        if dict.keys.contains("packageURL") && dict["packageURL"] != nil {
            self.packageURL = dict["packageURL"] as! String
        }
        if dict.keys.contains("parentComponent") && dict["parentComponent"] != nil {
            self.parentComponent = dict["parentComponent"] as! Bool
        }
        if dict.keys.contains("platforms") && dict["platforms"] != nil {
            var tmp : [Platform] = []
            for v in dict["platforms"] as! [Any] {
                var model = Platform()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.platforms = tmp
        }
        if dict.keys.contains("readme") && dict["readme"] != nil {
            self.readme = dict["readme"] as! String
        }
        if dict.keys.contains("resources") && dict["resources"] != nil {
            self.resources = dict["resources"] as! String
        }
        if dict.keys.contains("source") && dict["source"] != nil {
            self.source = dict["source"] as! String
        }
        if dict.keys.contains("uid") && dict["uid"] != nil {
            self.uid = dict["uid"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class Disk : Tea.TeaModel {
    public var capacity: Int32?

    public var fsType: String?

    public var mountPoint: String?

    public var name: String?

    public var remain: Int32?

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
        if self.capacity != nil {
            map["capacity"] = self.capacity!
        }
        if self.fsType != nil {
            map["fsType"] = self.fsType!
        }
        if self.mountPoint != nil {
            map["mountPoint"] = self.mountPoint!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.remain != nil {
            map["remain"] = self.remain!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("capacity") && dict["capacity"] != nil {
            self.capacity = dict["capacity"] as! Int32
        }
        if dict.keys.contains("fsType") && dict["fsType"] != nil {
            self.fsType = dict["fsType"] as! String
        }
        if dict.keys.contains("mountPoint") && dict["mountPoint"] != nil {
            self.mountPoint = dict["mountPoint"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("remain") && dict["remain"] != nil {
            self.remain = dict["remain"] as! Int32
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class ExportPort : Tea.TeaModel {
    public var cidrIP: String?

    public var portRange: String?

    public var protocol_: String?

    public var unallowed: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cidrIP != nil {
            map["cidrIP"] = self.cidrIP!
        }
        if self.portRange != nil {
            map["portRange"] = self.portRange!
        }
        if self.protocol_ != nil {
            map["protocol"] = self.protocol_!
        }
        if self.unallowed != nil {
            map["unallowed"] = self.unallowed!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cidrIP") && dict["cidrIP"] != nil {
            self.cidrIP = dict["cidrIP"] as! String
        }
        if dict.keys.contains("portRange") && dict["portRange"] != nil {
            self.portRange = dict["portRange"] as! String
        }
        if dict.keys.contains("protocol") && dict["protocol"] != nil {
            self.protocol_ = dict["protocol"] as! String
        }
        if dict.keys.contains("unallowed") && dict["unallowed"] != nil {
            self.unallowed = dict["unallowed"] as! Bool
        }
    }
}

public class FoundationComponentReferenceDetail : Tea.TeaModel {
    public var appVersion: String?

    public var category: String?

    public var class_: String?

    public var componentDescription: String?

    public var componentName: String?

    public var componentReferenceUID: String?

    public var componentUID: String?

    public var componentVersionDescription: String?

    public var componentVersionUID: String?

    public var createdAt: String?

    public var documents: String?

    public var enable: Bool?

    public var imagesMapping: String?

    public var namespace: String?

    public var orchestrationType: String?

    public var orchestrationValues: String?

    public var parentComponent: Bool?

    public var parentComponentVersionUID: String?

    public var priority: Int32?

    public var provider: String?

    public var public_: Bool?

    public var readme: String?

    public var relationUID: String?

    public var releaseName: String?

    public var resources: String?

    public var sequence: Int32?

    public var singleton: Bool?

    public var source: String?

    public var values: String?

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
        if self.appVersion != nil {
            map["appVersion"] = self.appVersion!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.class_ != nil {
            map["class"] = self.class_!
        }
        if self.componentDescription != nil {
            map["componentDescription"] = self.componentDescription!
        }
        if self.componentName != nil {
            map["componentName"] = self.componentName!
        }
        if self.componentReferenceUID != nil {
            map["componentReferenceUID"] = self.componentReferenceUID!
        }
        if self.componentUID != nil {
            map["componentUID"] = self.componentUID!
        }
        if self.componentVersionDescription != nil {
            map["componentVersionDescription"] = self.componentVersionDescription!
        }
        if self.componentVersionUID != nil {
            map["componentVersionUID"] = self.componentVersionUID!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.documents != nil {
            map["documents"] = self.documents!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.imagesMapping != nil {
            map["imagesMapping"] = self.imagesMapping!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.orchestrationType != nil {
            map["orchestrationType"] = self.orchestrationType!
        }
        if self.orchestrationValues != nil {
            map["orchestrationValues"] = self.orchestrationValues!
        }
        if self.parentComponent != nil {
            map["parentComponent"] = self.parentComponent!
        }
        if self.parentComponentVersionUID != nil {
            map["parentComponentVersionUID"] = self.parentComponentVersionUID!
        }
        if self.priority != nil {
            map["priority"] = self.priority!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.public_ != nil {
            map["public"] = self.public_!
        }
        if self.readme != nil {
            map["readme"] = self.readme!
        }
        if self.relationUID != nil {
            map["relationUID"] = self.relationUID!
        }
        if self.releaseName != nil {
            map["releaseName"] = self.releaseName!
        }
        if self.resources != nil {
            map["resources"] = self.resources!
        }
        if self.sequence != nil {
            map["sequence"] = self.sequence!
        }
        if self.singleton != nil {
            map["singleton"] = self.singleton!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.values != nil {
            map["values"] = self.values!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appVersion") && dict["appVersion"] != nil {
            self.appVersion = dict["appVersion"] as! String
        }
        if dict.keys.contains("category") && dict["category"] != nil {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("class") && dict["class"] != nil {
            self.class_ = dict["class"] as! String
        }
        if dict.keys.contains("componentDescription") && dict["componentDescription"] != nil {
            self.componentDescription = dict["componentDescription"] as! String
        }
        if dict.keys.contains("componentName") && dict["componentName"] != nil {
            self.componentName = dict["componentName"] as! String
        }
        if dict.keys.contains("componentReferenceUID") && dict["componentReferenceUID"] != nil {
            self.componentReferenceUID = dict["componentReferenceUID"] as! String
        }
        if dict.keys.contains("componentUID") && dict["componentUID"] != nil {
            self.componentUID = dict["componentUID"] as! String
        }
        if dict.keys.contains("componentVersionDescription") && dict["componentVersionDescription"] != nil {
            self.componentVersionDescription = dict["componentVersionDescription"] as! String
        }
        if dict.keys.contains("componentVersionUID") && dict["componentVersionUID"] != nil {
            self.componentVersionUID = dict["componentVersionUID"] as! String
        }
        if dict.keys.contains("createdAt") && dict["createdAt"] != nil {
            self.createdAt = dict["createdAt"] as! String
        }
        if dict.keys.contains("documents") && dict["documents"] != nil {
            self.documents = dict["documents"] as! String
        }
        if dict.keys.contains("enable") && dict["enable"] != nil {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("imagesMapping") && dict["imagesMapping"] != nil {
            self.imagesMapping = dict["imagesMapping"] as! String
        }
        if dict.keys.contains("namespace") && dict["namespace"] != nil {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("orchestrationType") && dict["orchestrationType"] != nil {
            self.orchestrationType = dict["orchestrationType"] as! String
        }
        if dict.keys.contains("orchestrationValues") && dict["orchestrationValues"] != nil {
            self.orchestrationValues = dict["orchestrationValues"] as! String
        }
        if dict.keys.contains("parentComponent") && dict["parentComponent"] != nil {
            self.parentComponent = dict["parentComponent"] as! Bool
        }
        if dict.keys.contains("parentComponentVersionUID") && dict["parentComponentVersionUID"] != nil {
            self.parentComponentVersionUID = dict["parentComponentVersionUID"] as! String
        }
        if dict.keys.contains("priority") && dict["priority"] != nil {
            self.priority = dict["priority"] as! Int32
        }
        if dict.keys.contains("provider") && dict["provider"] != nil {
            self.provider = dict["provider"] as! String
        }
        if dict.keys.contains("public") && dict["public"] != nil {
            self.public_ = dict["public"] as! Bool
        }
        if dict.keys.contains("readme") && dict["readme"] != nil {
            self.readme = dict["readme"] as! String
        }
        if dict.keys.contains("relationUID") && dict["relationUID"] != nil {
            self.relationUID = dict["relationUID"] as! String
        }
        if dict.keys.contains("releaseName") && dict["releaseName"] != nil {
            self.releaseName = dict["releaseName"] as! String
        }
        if dict.keys.contains("resources") && dict["resources"] != nil {
            self.resources = dict["resources"] as! String
        }
        if dict.keys.contains("sequence") && dict["sequence"] != nil {
            self.sequence = dict["sequence"] as! Int32
        }
        if dict.keys.contains("singleton") && dict["singleton"] != nil {
            self.singleton = dict["singleton"] as! Bool
        }
        if dict.keys.contains("source") && dict["source"] != nil {
            self.source = dict["source"] as! String
        }
        if dict.keys.contains("values") && dict["values"] != nil {
            self.values = dict["values"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class FoundationVersion : Tea.TeaModel {
    public class ClusterEngines : Tea.TeaModel {
        public class InfrastructureStatements : Tea.TeaModel {
            public var default_: Bool?

            public var distroName: String?

            public var distroVersion: String?

            public var platform: Platform?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.platform?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.default_ != nil {
                    map["default"] = self.default_!
                }
                if self.distroName != nil {
                    map["distroName"] = self.distroName!
                }
                if self.distroVersion != nil {
                    map["distroVersion"] = self.distroVersion!
                }
                if self.platform != nil {
                    map["platform"] = self.platform?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("default") && dict["default"] != nil {
                    self.default_ = dict["default"] as! Bool
                }
                if dict.keys.contains("distroName") && dict["distroName"] != nil {
                    self.distroName = dict["distroName"] as! String
                }
                if dict.keys.contains("distroVersion") && dict["distroVersion"] != nil {
                    self.distroVersion = dict["distroVersion"] as! String
                }
                if dict.keys.contains("platform") && dict["platform"] != nil {
                    var model = Platform()
                    model.fromMap(dict["platform"] as! [String: Any])
                    self.platform = model
                }
            }
        }
        public class NetworkList : Tea.TeaModel {
            public var ipFamilies: [String]?

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
                if self.ipFamilies != nil {
                    map["ipFamilies"] = self.ipFamilies!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ipFamilies") && dict["ipFamilies"] != nil {
                    self.ipFamilies = dict["ipFamilies"] as! [String]
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
            }
        }
        public class PackageTools : Tea.TeaModel {
            public class InstallToolPackages : Tea.TeaModel {
                public var architecture: String?

                public var os: String?

                public var url: String?

                public override init() {
                    super.init()
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
                        map["architecture"] = self.architecture!
                    }
                    if self.os != nil {
                        map["os"] = self.os!
                    }
                    if self.url != nil {
                        map["url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("architecture") && dict["architecture"] != nil {
                        self.architecture = dict["architecture"] as! String
                    }
                    if dict.keys.contains("os") && dict["os"] != nil {
                        self.os = dict["os"] as! String
                    }
                    if dict.keys.contains("url") && dict["url"] != nil {
                        self.url = dict["url"] as! String
                    }
                }
            }
            public var image: String?

            public var installToolPackages: [FoundationVersion.ClusterEngines.PackageTools.InstallToolPackages]?

            public var name: String?

            public var packageFormat: String?

            public var type: String?

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
                if self.image != nil {
                    map["image"] = self.image!
                }
                if self.installToolPackages != nil {
                    var tmp : [Any] = []
                    for k in self.installToolPackages! {
                        tmp.append(k.toMap())
                    }
                    map["installToolPackages"] = tmp
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.packageFormat != nil {
                    map["packageFormat"] = self.packageFormat!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("image") && dict["image"] != nil {
                    self.image = dict["image"] as! String
                }
                if dict.keys.contains("installToolPackages") && dict["installToolPackages"] != nil {
                    var tmp : [FoundationVersion.ClusterEngines.PackageTools.InstallToolPackages] = []
                    for v in dict["installToolPackages"] as! [Any] {
                        var model = FoundationVersion.ClusterEngines.PackageTools.InstallToolPackages()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.installToolPackages = tmp
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("packageFormat") && dict["packageFormat"] != nil {
                    self.packageFormat = dict["packageFormat"] as! String
                }
                if dict.keys.contains("type") && dict["type"] != nil {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("version") && dict["version"] != nil {
                    self.version = dict["version"] as! String
                }
            }
        }
        public class Packages : Tea.TeaModel {
            public var architecture: String?

            public var os: String?

            public var platforms: [Platform]?

            public var url: String?

            public override init() {
                super.init()
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
                    map["architecture"] = self.architecture!
                }
                if self.os != nil {
                    map["os"] = self.os!
                }
                if self.platforms != nil {
                    var tmp : [Any] = []
                    for k in self.platforms! {
                        tmp.append(k.toMap())
                    }
                    map["platforms"] = tmp
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("architecture") && dict["architecture"] != nil {
                    self.architecture = dict["architecture"] as! String
                }
                if dict.keys.contains("os") && dict["os"] != nil {
                    self.os = dict["os"] as! String
                }
                if dict.keys.contains("platforms") && dict["platforms"] != nil {
                    var tmp : [Platform] = []
                    for v in dict["platforms"] as! [Any] {
                        var model = Platform()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.platforms = tmp
                }
                if dict.keys.contains("url") && dict["url"] != nil {
                    self.url = dict["url"] as! String
                }
            }
        }
        public var infrastructureStatements: [FoundationVersion.ClusterEngines.InfrastructureStatements]?

        public var networkList: [FoundationVersion.ClusterEngines.NetworkList]?

        public var packageTools: [FoundationVersion.ClusterEngines.PackageTools]?

        public var packages: [FoundationVersion.ClusterEngines.Packages]?

        public var type: String?

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
            if self.infrastructureStatements != nil {
                var tmp : [Any] = []
                for k in self.infrastructureStatements! {
                    tmp.append(k.toMap())
                }
                map["infrastructureStatements"] = tmp
            }
            if self.networkList != nil {
                var tmp : [Any] = []
                for k in self.networkList! {
                    tmp.append(k.toMap())
                }
                map["networkList"] = tmp
            }
            if self.packageTools != nil {
                var tmp : [Any] = []
                for k in self.packageTools! {
                    tmp.append(k.toMap())
                }
                map["packageTools"] = tmp
            }
            if self.packages != nil {
                var tmp : [Any] = []
                for k in self.packages! {
                    tmp.append(k.toMap())
                }
                map["packages"] = tmp
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("infrastructureStatements") && dict["infrastructureStatements"] != nil {
                var tmp : [FoundationVersion.ClusterEngines.InfrastructureStatements] = []
                for v in dict["infrastructureStatements"] as! [Any] {
                    var model = FoundationVersion.ClusterEngines.InfrastructureStatements()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.infrastructureStatements = tmp
            }
            if dict.keys.contains("networkList") && dict["networkList"] != nil {
                var tmp : [FoundationVersion.ClusterEngines.NetworkList] = []
                for v in dict["networkList"] as! [Any] {
                    var model = FoundationVersion.ClusterEngines.NetworkList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.networkList = tmp
            }
            if dict.keys.contains("packageTools") && dict["packageTools"] != nil {
                var tmp : [FoundationVersion.ClusterEngines.PackageTools] = []
                for v in dict["packageTools"] as! [Any] {
                    var model = FoundationVersion.ClusterEngines.PackageTools()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.packageTools = tmp
            }
            if dict.keys.contains("packages") && dict["packages"] != nil {
                var tmp : [FoundationVersion.ClusterEngines.Packages] = []
                for v in dict["packages"] as! [Any] {
                    var model = FoundationVersion.ClusterEngines.Packages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.packages = tmp
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
        }
    }
    public class Driver : Tea.TeaModel {
        public class Components : Tea.TeaModel {
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
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("version") && dict["version"] != nil {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var components: [FoundationVersion.Driver.Components]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.components != nil {
                var tmp : [Any] = []
                for k in self.components! {
                    tmp.append(k.toMap())
                }
                map["components"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("components") && dict["components"] != nil {
                var tmp : [FoundationVersion.Driver.Components] = []
                for v in dict["components"] as! [Any] {
                    var model = FoundationVersion.Driver.Components()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.components = tmp
            }
        }
    }
    public class PackageTools : Tea.TeaModel {
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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
        }
    }
    public class Tools : Tea.TeaModel {
        public class SiteSurvey : Tea.TeaModel {
            public var clusterCheckerURL: String?

            public var clusterInfoBrief: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterCheckerURL != nil {
                    map["clusterCheckerURL"] = self.clusterCheckerURL!
                }
                if self.clusterInfoBrief != nil {
                    map["clusterInfoBrief"] = self.clusterInfoBrief!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("clusterCheckerURL") && dict["clusterCheckerURL"] != nil {
                    self.clusterCheckerURL = dict["clusterCheckerURL"] as! String
                }
                if dict.keys.contains("clusterInfoBrief") && dict["clusterInfoBrief"] != nil {
                    self.clusterInfoBrief = dict["clusterInfoBrief"] as! String
                }
            }
        }
        public var siteSurvey: FoundationVersion.Tools.SiteSurvey?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.siteSurvey?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.siteSurvey != nil {
                map["siteSurvey"] = self.siteSurvey?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("siteSurvey") && dict["siteSurvey"] != nil {
                var model = FoundationVersion.Tools.SiteSurvey()
                model.fromMap(dict["siteSurvey"] as! [String: Any])
                self.siteSurvey = model
            }
        }
    }
    public var clusterConfigSchema: String?

    public var clusterEngines: [FoundationVersion.ClusterEngines]?

    public var defaultClusterConfig: String?

    public var description_: String?

    public var documents: String?

    public var driver: FoundationVersion.Driver?

    public var features: [String]?

    public var isDefault: Bool?

    public var labels: String?

    public var name: String?

    public var packageTools: [FoundationVersion.PackageTools]?

    public var platforms: [Platform]?

    public var specName: String?

    public var status: String?

    public var tools: FoundationVersion.Tools?

    public var type: String?

    public var uid: String?

    public var userWhiteList: [String]?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.driver?.validate()
        try self.tools?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterConfigSchema != nil {
            map["clusterConfigSchema"] = self.clusterConfigSchema!
        }
        if self.clusterEngines != nil {
            var tmp : [Any] = []
            for k in self.clusterEngines! {
                tmp.append(k.toMap())
            }
            map["clusterEngines"] = tmp
        }
        if self.defaultClusterConfig != nil {
            map["defaultClusterConfig"] = self.defaultClusterConfig!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.documents != nil {
            map["documents"] = self.documents!
        }
        if self.driver != nil {
            map["driver"] = self.driver?.toMap()
        }
        if self.features != nil {
            map["features"] = self.features!
        }
        if self.isDefault != nil {
            map["isDefault"] = self.isDefault!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.packageTools != nil {
            var tmp : [Any] = []
            for k in self.packageTools! {
                tmp.append(k.toMap())
            }
            map["packageTools"] = tmp
        }
        if self.platforms != nil {
            var tmp : [Any] = []
            for k in self.platforms! {
                tmp.append(k.toMap())
            }
            map["platforms"] = tmp
        }
        if self.specName != nil {
            map["specName"] = self.specName!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.tools != nil {
            map["tools"] = self.tools?.toMap()
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        if self.userWhiteList != nil {
            map["userWhiteList"] = self.userWhiteList!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusterConfigSchema") && dict["clusterConfigSchema"] != nil {
            self.clusterConfigSchema = dict["clusterConfigSchema"] as! String
        }
        if dict.keys.contains("clusterEngines") && dict["clusterEngines"] != nil {
            var tmp : [FoundationVersion.ClusterEngines] = []
            for v in dict["clusterEngines"] as! [Any] {
                var model = FoundationVersion.ClusterEngines()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clusterEngines = tmp
        }
        if dict.keys.contains("defaultClusterConfig") && dict["defaultClusterConfig"] != nil {
            self.defaultClusterConfig = dict["defaultClusterConfig"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("documents") && dict["documents"] != nil {
            self.documents = dict["documents"] as! String
        }
        if dict.keys.contains("driver") && dict["driver"] != nil {
            var model = FoundationVersion.Driver()
            model.fromMap(dict["driver"] as! [String: Any])
            self.driver = model
        }
        if dict.keys.contains("features") && dict["features"] != nil {
            self.features = dict["features"] as! [String]
        }
        if dict.keys.contains("isDefault") && dict["isDefault"] != nil {
            self.isDefault = dict["isDefault"] as! Bool
        }
        if dict.keys.contains("labels") && dict["labels"] != nil {
            self.labels = dict["labels"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("packageTools") && dict["packageTools"] != nil {
            var tmp : [FoundationVersion.PackageTools] = []
            for v in dict["packageTools"] as! [Any] {
                var model = FoundationVersion.PackageTools()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.packageTools = tmp
        }
        if dict.keys.contains("platforms") && dict["platforms"] != nil {
            var tmp : [Platform] = []
            for v in dict["platforms"] as! [Any] {
                var model = Platform()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.platforms = tmp
        }
        if dict.keys.contains("specName") && dict["specName"] != nil {
            self.specName = dict["specName"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("tools") && dict["tools"] != nil {
            var model = FoundationVersion.Tools()
            model.fromMap(dict["tools"] as! [String: Any])
            self.tools = model
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("uid") && dict["uid"] != nil {
            self.uid = dict["uid"] as! String
        }
        if dict.keys.contains("userWhiteList") && dict["userWhiteList"] != nil {
            self.userWhiteList = dict["userWhiteList"] as! [String]
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class GetInstanceInfoResponse : Tea.TeaModel {
    public class ClusterTaints : Tea.TeaModel {
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
                map["effect"] = self.effect!
            }
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("effect") && dict["effect"] != nil {
                self.effect = dict["effect"] as! String
            }
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
        }
    }
    public class NetworkCards : Tea.TeaModel {
        public var ip: String?

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
            if self.ip != nil {
                map["ip"] = self.ip!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ip") && dict["ip"] != nil {
                self.ip = dict["ip"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
        }
    }
    public class Taints : Tea.TeaModel {
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
                map["effect"] = self.effect!
            }
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("effect") && dict["effect"] != nil {
                self.effect = dict["effect"] as! String
            }
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
        }
    }
    public var annotations: [String: String]?

    public var arch: String?

    public var clusterLabels: [String: String]?

    public var clusterTaints: [GetInstanceInfoResponse.ClusterTaints]?

    public var cpu: String?

    public var dataDisk: [Disk]?

    public var hostName: String?

    public var identifier: String?

    public var imageID: String?

    public var instanceType: String?

    public var internetBandwidth: Int32?

    public var kernel: String?

    public var labels: [String: String]?

    public var macAddress: String?

    public var memory: String?

    public var networkCards: [GetInstanceInfoResponse.NetworkCards]?

    public var os: String?

    public var osVersion: String?

    public var privateIP: String?

    public var publicIP: String?

    public var rootPassword: String?

    public var systemDisk: [Disk]?

    public var systemInfo: String?

    public var taints: [GetInstanceInfoResponse.Taints]?

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
        if self.annotations != nil {
            map["annotations"] = self.annotations!
        }
        if self.arch != nil {
            map["arch"] = self.arch!
        }
        if self.clusterLabels != nil {
            map["clusterLabels"] = self.clusterLabels!
        }
        if self.clusterTaints != nil {
            var tmp : [Any] = []
            for k in self.clusterTaints! {
                tmp.append(k.toMap())
            }
            map["clusterTaints"] = tmp
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.dataDisk != nil {
            var tmp : [Any] = []
            for k in self.dataDisk! {
                tmp.append(k.toMap())
            }
            map["dataDisk"] = tmp
        }
        if self.hostName != nil {
            map["hostName"] = self.hostName!
        }
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        if self.imageID != nil {
            map["imageID"] = self.imageID!
        }
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.internetBandwidth != nil {
            map["internetBandwidth"] = self.internetBandwidth!
        }
        if self.kernel != nil {
            map["kernel"] = self.kernel!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.macAddress != nil {
            map["macAddress"] = self.macAddress!
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.networkCards != nil {
            var tmp : [Any] = []
            for k in self.networkCards! {
                tmp.append(k.toMap())
            }
            map["networkCards"] = tmp
        }
        if self.os != nil {
            map["os"] = self.os!
        }
        if self.osVersion != nil {
            map["osVersion"] = self.osVersion!
        }
        if self.privateIP != nil {
            map["privateIP"] = self.privateIP!
        }
        if self.publicIP != nil {
            map["publicIP"] = self.publicIP!
        }
        if self.rootPassword != nil {
            map["rootPassword"] = self.rootPassword!
        }
        if self.systemDisk != nil {
            var tmp : [Any] = []
            for k in self.systemDisk! {
                tmp.append(k.toMap())
            }
            map["systemDisk"] = tmp
        }
        if self.systemInfo != nil {
            map["systemInfo"] = self.systemInfo!
        }
        if self.taints != nil {
            var tmp : [Any] = []
            for k in self.taints! {
                tmp.append(k.toMap())
            }
            map["taints"] = tmp
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("annotations") && dict["annotations"] != nil {
            self.annotations = dict["annotations"] as! [String: String]
        }
        if dict.keys.contains("arch") && dict["arch"] != nil {
            self.arch = dict["arch"] as! String
        }
        if dict.keys.contains("clusterLabels") && dict["clusterLabels"] != nil {
            self.clusterLabels = dict["clusterLabels"] as! [String: String]
        }
        if dict.keys.contains("clusterTaints") && dict["clusterTaints"] != nil {
            var tmp : [GetInstanceInfoResponse.ClusterTaints] = []
            for v in dict["clusterTaints"] as! [Any] {
                var model = GetInstanceInfoResponse.ClusterTaints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clusterTaints = tmp
        }
        if dict.keys.contains("cpu") && dict["cpu"] != nil {
            self.cpu = dict["cpu"] as! String
        }
        if dict.keys.contains("dataDisk") && dict["dataDisk"] != nil {
            var tmp : [Disk] = []
            for v in dict["dataDisk"] as! [Any] {
                var model = Disk()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataDisk = tmp
        }
        if dict.keys.contains("hostName") && dict["hostName"] != nil {
            self.hostName = dict["hostName"] as! String
        }
        if dict.keys.contains("identifier") && dict["identifier"] != nil {
            self.identifier = dict["identifier"] as! String
        }
        if dict.keys.contains("imageID") && dict["imageID"] != nil {
            self.imageID = dict["imageID"] as! String
        }
        if dict.keys.contains("instanceType") && dict["instanceType"] != nil {
            self.instanceType = dict["instanceType"] as! String
        }
        if dict.keys.contains("internetBandwidth") && dict["internetBandwidth"] != nil {
            self.internetBandwidth = dict["internetBandwidth"] as! Int32
        }
        if dict.keys.contains("kernel") && dict["kernel"] != nil {
            self.kernel = dict["kernel"] as! String
        }
        if dict.keys.contains("labels") && dict["labels"] != nil {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("macAddress") && dict["macAddress"] != nil {
            self.macAddress = dict["macAddress"] as! String
        }
        if dict.keys.contains("memory") && dict["memory"] != nil {
            self.memory = dict["memory"] as! String
        }
        if dict.keys.contains("networkCards") && dict["networkCards"] != nil {
            var tmp : [GetInstanceInfoResponse.NetworkCards] = []
            for v in dict["networkCards"] as! [Any] {
                var model = GetInstanceInfoResponse.NetworkCards()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.networkCards = tmp
        }
        if dict.keys.contains("os") && dict["os"] != nil {
            self.os = dict["os"] as! String
        }
        if dict.keys.contains("osVersion") && dict["osVersion"] != nil {
            self.osVersion = dict["osVersion"] as! String
        }
        if dict.keys.contains("privateIP") && dict["privateIP"] != nil {
            self.privateIP = dict["privateIP"] as! String
        }
        if dict.keys.contains("publicIP") && dict["publicIP"] != nil {
            self.publicIP = dict["publicIP"] as! String
        }
        if dict.keys.contains("rootPassword") && dict["rootPassword"] != nil {
            self.rootPassword = dict["rootPassword"] as! String
        }
        if dict.keys.contains("systemDisk") && dict["systemDisk"] != nil {
            var tmp : [Disk] = []
            for v in dict["systemDisk"] as! [Any] {
                var model = Disk()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.systemDisk = tmp
        }
        if dict.keys.contains("systemInfo") && dict["systemInfo"] != nil {
            self.systemInfo = dict["systemInfo"] as! String
        }
        if dict.keys.contains("taints") && dict["taints"] != nil {
            var tmp : [GetInstanceInfoResponse.Taints] = []
            for v in dict["taints"] as! [Any] {
                var model = GetInstanceInfoResponse.Taints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taints = tmp
        }
        if dict.keys.contains("uid") && dict["uid"] != nil {
            self.uid = dict["uid"] as! String
        }
    }
}

public class GetPayAsYouGoPriceData : Tea.TeaModel {
    public class ModuleList : Tea.TeaModel {
        public var config: String?

        public var moduleCode: String?

        public var priceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["Config"] = self.config!
            }
            if self.moduleCode != nil {
                map["ModuleCode"] = self.moduleCode!
            }
            if self.priceType != nil {
                map["PriceType"] = self.priceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") && dict["Config"] != nil {
                self.config = dict["Config"] as! String
            }
            if dict.keys.contains("ModuleCode") && dict["ModuleCode"] != nil {
                self.moduleCode = dict["ModuleCode"] as! String
            }
            if dict.keys.contains("PriceType") && dict["PriceType"] != nil {
                self.priceType = dict["PriceType"] as! String
            }
        }
    }
    public var moduleList: [GetPayAsYouGoPriceData.ModuleList]?

    public var ownerId: String?

    public var productCode: String?

    public var productType: String?

    public var region: String?

    public var subscriptionType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.moduleList != nil {
            var tmp : [Any] = []
            for k in self.moduleList! {
                tmp.append(k.toMap())
            }
            map["ModuleList"] = tmp
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModuleList") && dict["ModuleList"] != nil {
            var tmp : [GetPayAsYouGoPriceData.ModuleList] = []
            for v in dict["ModuleList"] as! [Any] {
                var model = GetPayAsYouGoPriceData.ModuleList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.moduleList = tmp
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("SubscriptionType") && dict["SubscriptionType"] != nil {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
    }
}

public class InstanceInfo : Tea.TeaModel {
    public class ClusterTaints : Tea.TeaModel {
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
                map["effect"] = self.effect!
            }
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("effect") && dict["effect"] != nil {
                self.effect = dict["effect"] as! String
            }
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
        }
    }
    public class NetworkCards : Tea.TeaModel {
        public var ip: String?

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
            if self.ip != nil {
                map["ip"] = self.ip!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ip") && dict["ip"] != nil {
                self.ip = dict["ip"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
        }
    }
    public class Taints : Tea.TeaModel {
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
                map["effect"] = self.effect!
            }
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("effect") && dict["effect"] != nil {
                self.effect = dict["effect"] as! String
            }
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
        }
    }
    public var annotations: [String: String]?

    public var arch: String?

    public var clusterLabels: [String: String]?

    public var clusterTaints: [InstanceInfo.ClusterTaints]?

    public var clusterUID: String?

    public var cpu: String?

    public var createdAt: String?

    public var dataDisk: [Disk]?

    public var diskConfigAnnotations: [String: String]?

    public var hostName: String?

    public var identifier: String?

    public var imageID: String?

    public var instanceType: String?

    public var internetBandwidth: Int32?

    public var kernel: String?

    public var labels: [String: String]?

    public var macAddress: String?

    public var memory: String?

    public var networkCards: [InstanceInfo.NetworkCards]?

    public var os: String?

    public var osVersion: String?

    public var privateIP: String?

    public var publicIP: String?

    public var rootPassword: String?

    public var systemDisk: [Disk]?

    public var systemInfo: String?

    public var taints: [InstanceInfo.Taints]?

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
        if self.annotations != nil {
            map["annotations"] = self.annotations!
        }
        if self.arch != nil {
            map["arch"] = self.arch!
        }
        if self.clusterLabels != nil {
            map["clusterLabels"] = self.clusterLabels!
        }
        if self.clusterTaints != nil {
            var tmp : [Any] = []
            for k in self.clusterTaints! {
                tmp.append(k.toMap())
            }
            map["clusterTaints"] = tmp
        }
        if self.clusterUID != nil {
            map["clusterUID"] = self.clusterUID!
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.dataDisk != nil {
            var tmp : [Any] = []
            for k in self.dataDisk! {
                tmp.append(k.toMap())
            }
            map["dataDisk"] = tmp
        }
        if self.diskConfigAnnotations != nil {
            map["diskConfigAnnotations"] = self.diskConfigAnnotations!
        }
        if self.hostName != nil {
            map["hostName"] = self.hostName!
        }
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        if self.imageID != nil {
            map["imageID"] = self.imageID!
        }
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.internetBandwidth != nil {
            map["internetBandwidth"] = self.internetBandwidth!
        }
        if self.kernel != nil {
            map["kernel"] = self.kernel!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.macAddress != nil {
            map["macAddress"] = self.macAddress!
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.networkCards != nil {
            var tmp : [Any] = []
            for k in self.networkCards! {
                tmp.append(k.toMap())
            }
            map["networkCards"] = tmp
        }
        if self.os != nil {
            map["os"] = self.os!
        }
        if self.osVersion != nil {
            map["osVersion"] = self.osVersion!
        }
        if self.privateIP != nil {
            map["privateIP"] = self.privateIP!
        }
        if self.publicIP != nil {
            map["publicIP"] = self.publicIP!
        }
        if self.rootPassword != nil {
            map["rootPassword"] = self.rootPassword!
        }
        if self.systemDisk != nil {
            var tmp : [Any] = []
            for k in self.systemDisk! {
                tmp.append(k.toMap())
            }
            map["systemDisk"] = tmp
        }
        if self.systemInfo != nil {
            map["systemInfo"] = self.systemInfo!
        }
        if self.taints != nil {
            var tmp : [Any] = []
            for k in self.taints! {
                tmp.append(k.toMap())
            }
            map["taints"] = tmp
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("annotations") && dict["annotations"] != nil {
            self.annotations = dict["annotations"] as! [String: String]
        }
        if dict.keys.contains("arch") && dict["arch"] != nil {
            self.arch = dict["arch"] as! String
        }
        if dict.keys.contains("clusterLabels") && dict["clusterLabels"] != nil {
            self.clusterLabels = dict["clusterLabels"] as! [String: String]
        }
        if dict.keys.contains("clusterTaints") && dict["clusterTaints"] != nil {
            var tmp : [InstanceInfo.ClusterTaints] = []
            for v in dict["clusterTaints"] as! [Any] {
                var model = InstanceInfo.ClusterTaints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clusterTaints = tmp
        }
        if dict.keys.contains("clusterUID") && dict["clusterUID"] != nil {
            self.clusterUID = dict["clusterUID"] as! String
        }
        if dict.keys.contains("cpu") && dict["cpu"] != nil {
            self.cpu = dict["cpu"] as! String
        }
        if dict.keys.contains("createdAt") && dict["createdAt"] != nil {
            self.createdAt = dict["createdAt"] as! String
        }
        if dict.keys.contains("dataDisk") && dict["dataDisk"] != nil {
            var tmp : [Disk] = []
            for v in dict["dataDisk"] as! [Any] {
                var model = Disk()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataDisk = tmp
        }
        if dict.keys.contains("diskConfigAnnotations") && dict["diskConfigAnnotations"] != nil {
            self.diskConfigAnnotations = dict["diskConfigAnnotations"] as! [String: String]
        }
        if dict.keys.contains("hostName") && dict["hostName"] != nil {
            self.hostName = dict["hostName"] as! String
        }
        if dict.keys.contains("identifier") && dict["identifier"] != nil {
            self.identifier = dict["identifier"] as! String
        }
        if dict.keys.contains("imageID") && dict["imageID"] != nil {
            self.imageID = dict["imageID"] as! String
        }
        if dict.keys.contains("instanceType") && dict["instanceType"] != nil {
            self.instanceType = dict["instanceType"] as! String
        }
        if dict.keys.contains("internetBandwidth") && dict["internetBandwidth"] != nil {
            self.internetBandwidth = dict["internetBandwidth"] as! Int32
        }
        if dict.keys.contains("kernel") && dict["kernel"] != nil {
            self.kernel = dict["kernel"] as! String
        }
        if dict.keys.contains("labels") && dict["labels"] != nil {
            self.labels = dict["labels"] as! [String: String]
        }
        if dict.keys.contains("macAddress") && dict["macAddress"] != nil {
            self.macAddress = dict["macAddress"] as! String
        }
        if dict.keys.contains("memory") && dict["memory"] != nil {
            self.memory = dict["memory"] as! String
        }
        if dict.keys.contains("networkCards") && dict["networkCards"] != nil {
            var tmp : [InstanceInfo.NetworkCards] = []
            for v in dict["networkCards"] as! [Any] {
                var model = InstanceInfo.NetworkCards()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.networkCards = tmp
        }
        if dict.keys.contains("os") && dict["os"] != nil {
            self.os = dict["os"] as! String
        }
        if dict.keys.contains("osVersion") && dict["osVersion"] != nil {
            self.osVersion = dict["osVersion"] as! String
        }
        if dict.keys.contains("privateIP") && dict["privateIP"] != nil {
            self.privateIP = dict["privateIP"] as! String
        }
        if dict.keys.contains("publicIP") && dict["publicIP"] != nil {
            self.publicIP = dict["publicIP"] as! String
        }
        if dict.keys.contains("rootPassword") && dict["rootPassword"] != nil {
            self.rootPassword = dict["rootPassword"] as! String
        }
        if dict.keys.contains("systemDisk") && dict["systemDisk"] != nil {
            var tmp : [Disk] = []
            for v in dict["systemDisk"] as! [Any] {
                var model = Disk()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.systemDisk = tmp
        }
        if dict.keys.contains("systemInfo") && dict["systemInfo"] != nil {
            self.systemInfo = dict["systemInfo"] as! String
        }
        if dict.keys.contains("taints") && dict["taints"] != nil {
            var tmp : [InstanceInfo.Taints] = []
            for v in dict["taints"] as! [Any] {
                var model = InstanceInfo.Taints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taints = tmp
        }
        if dict.keys.contains("uid") && dict["uid"] != nil {
            self.uid = dict["uid"] as! String
        }
    }
}

public class LabelSelector : Tea.TeaModel {
    public class MatchExpressions : Tea.TeaModel {
        public var key: String?

        public var operator_: String?

        public var values: [String]?

        public override init() {
            super.init()
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
                map["key"] = self.key!
            }
            if self.operator_ != nil {
                map["operator"] = self.operator_!
            }
            if self.values != nil {
                map["values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("operator") && dict["operator"] != nil {
                self.operator_ = dict["operator"] as! String
            }
            if dict.keys.contains("values") && dict["values"] != nil {
                self.values = dict["values"] as! [String]
            }
        }
    }
    public var matchExpressions: [LabelSelector.MatchExpressions]?

    public var matchLabels: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.matchExpressions != nil {
            var tmp : [Any] = []
            for k in self.matchExpressions! {
                tmp.append(k.toMap())
            }
            map["matchExpressions"] = tmp
        }
        if self.matchLabels != nil {
            map["matchLabels"] = self.matchLabels!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("matchExpressions") && dict["matchExpressions"] != nil {
            var tmp : [LabelSelector.MatchExpressions] = []
            for v in dict["matchExpressions"] as! [Any] {
                var model = LabelSelector.MatchExpressions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.matchExpressions = tmp
        }
        if dict.keys.contains("matchLabels") && dict["matchLabels"] != nil {
            self.matchLabels = dict["matchLabels"] as! [String: String]
        }
    }
}

public class Platform : Tea.TeaModel {
    public var architecture: String?

    public var os: String?

    public override init() {
        super.init()
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
            map["architecture"] = self.architecture!
        }
        if self.os != nil {
            map["os"] = self.os!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("architecture") && dict["architecture"] != nil {
            self.architecture = dict["architecture"] as! String
        }
        if dict.keys.contains("os") && dict["os"] != nil {
            self.os = dict["os"] as! String
        }
    }
}

public class ProductComponentRelationDetail : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public class MultiCluster : Tea.TeaModel {
            public var targetClusters: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.targetClusters != nil {
                    map["targetClusters"] = self.targetClusters!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("targetClusters") && dict["targetClusters"] != nil {
                    self.targetClusters = dict["targetClusters"] as! [String]
                }
            }
        }
        public var multiCluster: ProductComponentRelationDetail.Policy.MultiCluster?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.multiCluster?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.multiCluster != nil {
                map["multiCluster"] = self.multiCluster?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("multiCluster") && dict["multiCluster"] != nil {
                var model = ProductComponentRelationDetail.Policy.MultiCluster()
                model.fromMap(dict["multiCluster"] as! [String: Any])
                self.multiCluster = model
            }
        }
    }
    public var appVersion: String?

    public var category: String?

    public var class_: String?

    public var componentName: String?

    public var componentOrchestrationValues: String?

    public var componentUID: String?

    public var componentVersionSpecUID: String?

    public var componentVersionSpecValues: String?

    public var componentVersionUID: String?

    public var createdAt: String?

    public var description_: String?

    public var documents: String?

    public var enable: Bool?

    public var imagesMapping: String?

    public var namespace: String?

    public var orchestrationType: String?

    public var parentComponent: Bool?

    public var parentComponentVersionRelationUID: String?

    public var parentComponentVersionUID: String?

    public var policy: ProductComponentRelationDetail.Policy?

    public var priority: Int32?

    public var productVersionUID: String?

    public var provider: String?

    public var public_: Bool?

    public var readme: String?

    public var relationUID: String?

    public var releaseName: String?

    public var resources: String?

    public var sequence: Int32?

    public var singleton: Bool?

    public var source: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["appVersion"] = self.appVersion!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.class_ != nil {
            map["class"] = self.class_!
        }
        if self.componentName != nil {
            map["componentName"] = self.componentName!
        }
        if self.componentOrchestrationValues != nil {
            map["componentOrchestrationValues"] = self.componentOrchestrationValues!
        }
        if self.componentUID != nil {
            map["componentUID"] = self.componentUID!
        }
        if self.componentVersionSpecUID != nil {
            map["componentVersionSpecUID"] = self.componentVersionSpecUID!
        }
        if self.componentVersionSpecValues != nil {
            map["componentVersionSpecValues"] = self.componentVersionSpecValues!
        }
        if self.componentVersionUID != nil {
            map["componentVersionUID"] = self.componentVersionUID!
        }
        if self.createdAt != nil {
            map["createdAt"] = self.createdAt!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.documents != nil {
            map["documents"] = self.documents!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.imagesMapping != nil {
            map["imagesMapping"] = self.imagesMapping!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.orchestrationType != nil {
            map["orchestrationType"] = self.orchestrationType!
        }
        if self.parentComponent != nil {
            map["parentComponent"] = self.parentComponent!
        }
        if self.parentComponentVersionRelationUID != nil {
            map["parentComponentVersionRelationUID"] = self.parentComponentVersionRelationUID!
        }
        if self.parentComponentVersionUID != nil {
            map["parentComponentVersionUID"] = self.parentComponentVersionUID!
        }
        if self.policy != nil {
            map["policy"] = self.policy?.toMap()
        }
        if self.priority != nil {
            map["priority"] = self.priority!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        if self.provider != nil {
            map["provider"] = self.provider!
        }
        if self.public_ != nil {
            map["public"] = self.public_!
        }
        if self.readme != nil {
            map["readme"] = self.readme!
        }
        if self.relationUID != nil {
            map["relationUID"] = self.relationUID!
        }
        if self.releaseName != nil {
            map["releaseName"] = self.releaseName!
        }
        if self.resources != nil {
            map["resources"] = self.resources!
        }
        if self.sequence != nil {
            map["sequence"] = self.sequence!
        }
        if self.singleton != nil {
            map["singleton"] = self.singleton!
        }
        if self.source != nil {
            map["source"] = self.source!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("appVersion") && dict["appVersion"] != nil {
            self.appVersion = dict["appVersion"] as! String
        }
        if dict.keys.contains("category") && dict["category"] != nil {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("class") && dict["class"] != nil {
            self.class_ = dict["class"] as! String
        }
        if dict.keys.contains("componentName") && dict["componentName"] != nil {
            self.componentName = dict["componentName"] as! String
        }
        if dict.keys.contains("componentOrchestrationValues") && dict["componentOrchestrationValues"] != nil {
            self.componentOrchestrationValues = dict["componentOrchestrationValues"] as! String
        }
        if dict.keys.contains("componentUID") && dict["componentUID"] != nil {
            self.componentUID = dict["componentUID"] as! String
        }
        if dict.keys.contains("componentVersionSpecUID") && dict["componentVersionSpecUID"] != nil {
            self.componentVersionSpecUID = dict["componentVersionSpecUID"] as! String
        }
        if dict.keys.contains("componentVersionSpecValues") && dict["componentVersionSpecValues"] != nil {
            self.componentVersionSpecValues = dict["componentVersionSpecValues"] as! String
        }
        if dict.keys.contains("componentVersionUID") && dict["componentVersionUID"] != nil {
            self.componentVersionUID = dict["componentVersionUID"] as! String
        }
        if dict.keys.contains("createdAt") && dict["createdAt"] != nil {
            self.createdAt = dict["createdAt"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("documents") && dict["documents"] != nil {
            self.documents = dict["documents"] as! String
        }
        if dict.keys.contains("enable") && dict["enable"] != nil {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("imagesMapping") && dict["imagesMapping"] != nil {
            self.imagesMapping = dict["imagesMapping"] as! String
        }
        if dict.keys.contains("namespace") && dict["namespace"] != nil {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("orchestrationType") && dict["orchestrationType"] != nil {
            self.orchestrationType = dict["orchestrationType"] as! String
        }
        if dict.keys.contains("parentComponent") && dict["parentComponent"] != nil {
            self.parentComponent = dict["parentComponent"] as! Bool
        }
        if dict.keys.contains("parentComponentVersionRelationUID") && dict["parentComponentVersionRelationUID"] != nil {
            self.parentComponentVersionRelationUID = dict["parentComponentVersionRelationUID"] as! String
        }
        if dict.keys.contains("parentComponentVersionUID") && dict["parentComponentVersionUID"] != nil {
            self.parentComponentVersionUID = dict["parentComponentVersionUID"] as! String
        }
        if dict.keys.contains("policy") && dict["policy"] != nil {
            var model = ProductComponentRelationDetail.Policy()
            model.fromMap(dict["policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("priority") && dict["priority"] != nil {
            self.priority = dict["priority"] as! Int32
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
        if dict.keys.contains("provider") && dict["provider"] != nil {
            self.provider = dict["provider"] as! String
        }
        if dict.keys.contains("public") && dict["public"] != nil {
            self.public_ = dict["public"] as! Bool
        }
        if dict.keys.contains("readme") && dict["readme"] != nil {
            self.readme = dict["readme"] as! String
        }
        if dict.keys.contains("relationUID") && dict["relationUID"] != nil {
            self.relationUID = dict["relationUID"] as! String
        }
        if dict.keys.contains("releaseName") && dict["releaseName"] != nil {
            self.releaseName = dict["releaseName"] as! String
        }
        if dict.keys.contains("resources") && dict["resources"] != nil {
            self.resources = dict["resources"] as! String
        }
        if dict.keys.contains("sequence") && dict["sequence"] != nil {
            self.sequence = dict["sequence"] as! Int32
        }
        if dict.keys.contains("singleton") && dict["singleton"] != nil {
            self.singleton = dict["singleton"] as! Bool
        }
        if dict.keys.contains("source") && dict["source"] != nil {
            self.source = dict["source"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class Resource : Tea.TeaModel {
    public class Cpu : Tea.TeaModel {
        public var required_: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.required_ != nil {
                map["required"] = self.required_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("required") && dict["required"] != nil {
                self.required_ = dict["required"] as! Int32
            }
        }
    }
    public class Image : Tea.TeaModel {
        public var id: String?

        public var nameRegex: String?

        public override init() {
            super.init()
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
                map["id"] = self.id!
            }
            if self.nameRegex != nil {
                map["nameRegex"] = self.nameRegex!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("nameRegex") && dict["nameRegex"] != nil {
                self.nameRegex = dict["nameRegex"] as! String
            }
        }
    }
    public class Memory : Tea.TeaModel {
        public var required_: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.required_ != nil {
                map["required"] = self.required_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("required") && dict["required"] != nil {
                self.required_ = dict["required"] as! Int32
            }
        }
    }
    public class PublicIP : Tea.TeaModel {
        public var bandwidth: Int32?

        public var required_: Int32?

        public override init() {
            super.init()
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
                map["bandwidth"] = self.bandwidth!
            }
            if self.required_ != nil {
                map["required"] = self.required_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bandwidth") && dict["bandwidth"] != nil {
                self.bandwidth = dict["bandwidth"] as! Int32
            }
            if dict.keys.contains("required") && dict["required"] != nil {
                self.required_ = dict["required"] as! Int32
            }
        }
    }
    public class Storage : Tea.TeaModel {
        public var required_: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.required_ != nil {
                map["required"] = self.required_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("required") && dict["required"] != nil {
                self.required_ = dict["required"] as! Int32
            }
        }
    }
    public var cpu: Resource.Cpu?

    public var hostname: String?

    public var identifier: String?

    public var image: Resource.Image?

    public var instanceType: String?

    public var memory: Resource.Memory?

    public var ports: [ExportPort]?

    public var publicIP: Resource.PublicIP?

    public var replica: Int32?

    public var storage: [Resource.Storage]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cpu?.validate()
        try self.image?.validate()
        try self.memory?.validate()
        try self.publicIP?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpu != nil {
            map["cpu"] = self.cpu?.toMap()
        }
        if self.hostname != nil {
            map["hostname"] = self.hostname!
        }
        if self.identifier != nil {
            map["identifier"] = self.identifier!
        }
        if self.image != nil {
            map["image"] = self.image?.toMap()
        }
        if self.instanceType != nil {
            map["instanceType"] = self.instanceType!
        }
        if self.memory != nil {
            map["memory"] = self.memory?.toMap()
        }
        if self.ports != nil {
            var tmp : [Any] = []
            for k in self.ports! {
                tmp.append(k.toMap())
            }
            map["ports"] = tmp
        }
        if self.publicIP != nil {
            map["publicIP"] = self.publicIP?.toMap()
        }
        if self.replica != nil {
            map["replica"] = self.replica!
        }
        if self.storage != nil {
            var tmp : [Any] = []
            for k in self.storage! {
                tmp.append(k.toMap())
            }
            map["storage"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cpu") && dict["cpu"] != nil {
            var model = Resource.Cpu()
            model.fromMap(dict["cpu"] as! [String: Any])
            self.cpu = model
        }
        if dict.keys.contains("hostname") && dict["hostname"] != nil {
            self.hostname = dict["hostname"] as! String
        }
        if dict.keys.contains("identifier") && dict["identifier"] != nil {
            self.identifier = dict["identifier"] as! String
        }
        if dict.keys.contains("image") && dict["image"] != nil {
            var model = Resource.Image()
            model.fromMap(dict["image"] as! [String: Any])
            self.image = model
        }
        if dict.keys.contains("instanceType") && dict["instanceType"] != nil {
            self.instanceType = dict["instanceType"] as! String
        }
        if dict.keys.contains("memory") && dict["memory"] != nil {
            var model = Resource.Memory()
            model.fromMap(dict["memory"] as! [String: Any])
            self.memory = model
        }
        if dict.keys.contains("ports") && dict["ports"] != nil {
            var tmp : [ExportPort] = []
            for v in dict["ports"] as! [Any] {
                var model = ExportPort()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ports = tmp
        }
        if dict.keys.contains("publicIP") && dict["publicIP"] != nil {
            var model = Resource.PublicIP()
            model.fromMap(dict["publicIP"] as! [String: Any])
            self.publicIP = model
        }
        if dict.keys.contains("replica") && dict["replica"] != nil {
            self.replica = dict["replica"] as! Int32
        }
        if dict.keys.contains("storage") && dict["storage"] != nil {
            var tmp : [Resource.Storage] = []
            for v in dict["storage"] as! [Any] {
                var model = Resource.Storage()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.storage = tmp
        }
    }
}

public class AddEnvironmentNodesRequest : Tea.TeaModel {
    public class DataDisk : Tea.TeaModel {
        public var name: String?

        public var required_: Int32?

        public override init() {
            super.init()
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
                map["name"] = self.name!
            }
            if self.required_ != nil {
                map["required"] = self.required_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("required") && dict["required"] != nil {
                self.required_ = dict["required"] as! Int32
            }
        }
    }
    public class SystemDisk : Tea.TeaModel {
        public var name: String?

        public var required_: Int32?

        public override init() {
            super.init()
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
                map["name"] = self.name!
            }
            if self.required_ != nil {
                map["required"] = self.required_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("required") && dict["required"] != nil {
                self.required_ = dict["required"] as! Int32
            }
        }
    }
    public class Taints : Tea.TeaModel {
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
                map["effect"] = self.effect!
            }
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("effect") && dict["effect"] != nil {
                self.effect = dict["effect"] as! String
            }
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
        }
    }
    public var applicationDisk: String?

    public var cpu: Int32?

    public var dataDisk: [AddEnvironmentNodesRequest.DataDisk]?

    public var etcdDisk: String?

    public var hostName: String?

    public var labels: [String: Any]?

    public var masterPrivateIPs: [String]?

    public var memory: Int32?

    public var os: String?

    public var rootPassword: String?

    public var systemDisk: [AddEnvironmentNodesRequest.SystemDisk]?

    public var taints: [AddEnvironmentNodesRequest.Taints]?

    public var tridentSystemDisk: String?

    public var tridentSystemSizeDisk: Int32?

    public var workerPrivateIPs: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationDisk != nil {
            map["applicationDisk"] = self.applicationDisk!
        }
        if self.cpu != nil {
            map["cpu"] = self.cpu!
        }
        if self.dataDisk != nil {
            var tmp : [Any] = []
            for k in self.dataDisk! {
                tmp.append(k.toMap())
            }
            map["dataDisk"] = tmp
        }
        if self.etcdDisk != nil {
            map["etcdDisk"] = self.etcdDisk!
        }
        if self.hostName != nil {
            map["hostName"] = self.hostName!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.masterPrivateIPs != nil {
            map["masterPrivateIPs"] = self.masterPrivateIPs!
        }
        if self.memory != nil {
            map["memory"] = self.memory!
        }
        if self.os != nil {
            map["os"] = self.os!
        }
        if self.rootPassword != nil {
            map["rootPassword"] = self.rootPassword!
        }
        if self.systemDisk != nil {
            var tmp : [Any] = []
            for k in self.systemDisk! {
                tmp.append(k.toMap())
            }
            map["systemDisk"] = tmp
        }
        if self.taints != nil {
            var tmp : [Any] = []
            for k in self.taints! {
                tmp.append(k.toMap())
            }
            map["taints"] = tmp
        }
        if self.tridentSystemDisk != nil {
            map["tridentSystemDisk"] = self.tridentSystemDisk!
        }
        if self.tridentSystemSizeDisk != nil {
            map["tridentSystemSizeDisk"] = self.tridentSystemSizeDisk!
        }
        if self.workerPrivateIPs != nil {
            map["workerPrivateIPs"] = self.workerPrivateIPs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applicationDisk") && dict["applicationDisk"] != nil {
            self.applicationDisk = dict["applicationDisk"] as! String
        }
        if dict.keys.contains("cpu") && dict["cpu"] != nil {
            self.cpu = dict["cpu"] as! Int32
        }
        if dict.keys.contains("dataDisk") && dict["dataDisk"] != nil {
            var tmp : [AddEnvironmentNodesRequest.DataDisk] = []
            for v in dict["dataDisk"] as! [Any] {
                var model = AddEnvironmentNodesRequest.DataDisk()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataDisk = tmp
        }
        if dict.keys.contains("etcdDisk") && dict["etcdDisk"] != nil {
            self.etcdDisk = dict["etcdDisk"] as! String
        }
        if dict.keys.contains("hostName") && dict["hostName"] != nil {
            self.hostName = dict["hostName"] as! String
        }
        if dict.keys.contains("labels") && dict["labels"] != nil {
            self.labels = dict["labels"] as! [String: Any]
        }
        if dict.keys.contains("masterPrivateIPs") && dict["masterPrivateIPs"] != nil {
            self.masterPrivateIPs = dict["masterPrivateIPs"] as! [String]
        }
        if dict.keys.contains("memory") && dict["memory"] != nil {
            self.memory = dict["memory"] as! Int32
        }
        if dict.keys.contains("os") && dict["os"] != nil {
            self.os = dict["os"] as! String
        }
        if dict.keys.contains("rootPassword") && dict["rootPassword"] != nil {
            self.rootPassword = dict["rootPassword"] as! String
        }
        if dict.keys.contains("systemDisk") && dict["systemDisk"] != nil {
            var tmp : [AddEnvironmentNodesRequest.SystemDisk] = []
            for v in dict["systemDisk"] as! [Any] {
                var model = AddEnvironmentNodesRequest.SystemDisk()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.systemDisk = tmp
        }
        if dict.keys.contains("taints") && dict["taints"] != nil {
            var tmp : [AddEnvironmentNodesRequest.Taints] = []
            for v in dict["taints"] as! [Any] {
                var model = AddEnvironmentNodesRequest.Taints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taints = tmp
        }
        if dict.keys.contains("tridentSystemDisk") && dict["tridentSystemDisk"] != nil {
            self.tridentSystemDisk = dict["tridentSystemDisk"] as! String
        }
        if dict.keys.contains("tridentSystemSizeDisk") && dict["tridentSystemSizeDisk"] != nil {
            self.tridentSystemSizeDisk = dict["tridentSystemSizeDisk"] as! Int32
        }
        if dict.keys.contains("workerPrivateIPs") && dict["workerPrivateIPs"] != nil {
            self.workerPrivateIPs = dict["workerPrivateIPs"] as! [String]
        }
    }
}

public class AddEnvironmentNodesResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class AddEnvironmentNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddEnvironmentNodesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddEnvironmentNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddEnvironmentProductVersionsRequest : Tea.TeaModel {
    public class ProductVersionInfoList : Tea.TeaModel {
        public var namespace: String?

        public var productVersionUID: String?

        public var specUID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.productVersionUID != nil {
                map["productVersionUID"] = self.productVersionUID!
            }
            if self.specUID != nil {
                map["specUID"] = self.specUID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("namespace") && dict["namespace"] != nil {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                self.productVersionUID = dict["productVersionUID"] as! String
            }
            if dict.keys.contains("specUID") && dict["specUID"] != nil {
                self.specUID = dict["specUID"] as! String
            }
        }
    }
    public var productVersionInfoList: [AddEnvironmentProductVersionsRequest.ProductVersionInfoList]?

    public var productVersionUIDList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productVersionInfoList != nil {
            var tmp : [Any] = []
            for k in self.productVersionInfoList! {
                tmp.append(k.toMap())
            }
            map["productVersionInfoList"] = tmp
        }
        if self.productVersionUIDList != nil {
            map["productVersionUIDList"] = self.productVersionUIDList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productVersionInfoList") && dict["productVersionInfoList"] != nil {
            var tmp : [AddEnvironmentProductVersionsRequest.ProductVersionInfoList] = []
            for v in dict["productVersionInfoList"] as! [Any] {
                var model = AddEnvironmentProductVersionsRequest.ProductVersionInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.productVersionInfoList = tmp
        }
        if dict.keys.contains("productVersionUIDList") && dict["productVersionUIDList"] != nil {
            self.productVersionUIDList = dict["productVersionUIDList"] as! [String]
        }
    }
}

public class AddEnvironmentProductVersionsResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class AddEnvironmentProductVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddEnvironmentProductVersionsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddEnvironmentProductVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddProductComponentVersionRequest : Tea.TeaModel {
    public var componentVersionSpecUID: String?

    public var componentVersionSpecValues: String?

    public var releaseName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentVersionSpecUID != nil {
            map["componentVersionSpecUID"] = self.componentVersionSpecUID!
        }
        if self.componentVersionSpecValues != nil {
            map["componentVersionSpecValues"] = self.componentVersionSpecValues!
        }
        if self.releaseName != nil {
            map["releaseName"] = self.releaseName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("componentVersionSpecUID") && dict["componentVersionSpecUID"] != nil {
            self.componentVersionSpecUID = dict["componentVersionSpecUID"] as! String
        }
        if dict.keys.contains("componentVersionSpecValues") && dict["componentVersionSpecValues"] != nil {
            self.componentVersionSpecValues = dict["componentVersionSpecValues"] as! String
        }
        if dict.keys.contains("releaseName") && dict["releaseName"] != nil {
            self.releaseName = dict["releaseName"] as! String
        }
    }
}

public class AddProductComponentVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: AddProductComponentVersionResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = AddProductComponentVersionResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class AddProductComponentVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddProductComponentVersionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddProductComponentVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddProductVersionConfigRequest : Tea.TeaModel {
    public var componentReleaseName: String?

    public var componentVersionUID: String?

    public var description_: String?

    public var name: String?

    public var parentComponentReleaseName: String?

    public var parentComponentVersionUID: String?

    public var scope: String?

    public var value: String?

    public var valueType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentReleaseName != nil {
            map["componentReleaseName"] = self.componentReleaseName!
        }
        if self.componentVersionUID != nil {
            map["componentVersionUID"] = self.componentVersionUID!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentComponentReleaseName != nil {
            map["parentComponentReleaseName"] = self.parentComponentReleaseName!
        }
        if self.parentComponentVersionUID != nil {
            map["parentComponentVersionUID"] = self.parentComponentVersionUID!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        if self.valueType != nil {
            map["valueType"] = self.valueType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("componentReleaseName") && dict["componentReleaseName"] != nil {
            self.componentReleaseName = dict["componentReleaseName"] as! String
        }
        if dict.keys.contains("componentVersionUID") && dict["componentVersionUID"] != nil {
            self.componentVersionUID = dict["componentVersionUID"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parentComponentReleaseName") && dict["parentComponentReleaseName"] != nil {
            self.parentComponentReleaseName = dict["parentComponentReleaseName"] as! String
        }
        if dict.keys.contains("parentComponentVersionUID") && dict["parentComponentVersionUID"] != nil {
            self.parentComponentVersionUID = dict["parentComponentVersionUID"] as! String
        }
        if dict.keys.contains("scope") && dict["scope"] != nil {
            self.scope = dict["scope"] as! String
        }
        if dict.keys.contains("value") && dict["value"] != nil {
            self.value = dict["value"] as! String
        }
        if dict.keys.contains("valueType") && dict["valueType"] != nil {
            self.valueType = dict["valueType"] as! String
        }
    }
}

public class AddProductVersionConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: AddProductVersionConfigResponseBody.Data?

    public var msg: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = AddProductVersionConfigResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class AddProductVersionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddProductVersionConfigResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddProductVersionConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddResourceSnapshotRequest : Tea.TeaModel {
    public var name: String?

    public var clusterUID: String?

    public var productVersionUID: String?

    public override init() {
        super.init()
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
            map["name"] = self.name!
        }
        if self.clusterUID != nil {
            map["clusterUID"] = self.clusterUID!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("clusterUID") && dict["clusterUID"] != nil {
            self.clusterUID = dict["clusterUID"] as! String
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
    }
}

public class AddResourceSnapshotResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class AddResourceSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddResourceSnapshotResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddResourceSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchAddEnvironmentNodesRequest : Tea.TeaModel {
    public var instanceList: [InstanceInfo]?

    public var overwrite: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceList != nil {
            var tmp : [Any] = []
            for k in self.instanceList! {
                tmp.append(k.toMap())
            }
            map["instanceList"] = tmp
        }
        if self.overwrite != nil {
            map["overwrite"] = self.overwrite!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instanceList") && dict["instanceList"] != nil {
            var tmp : [InstanceInfo] = []
            for v in dict["instanceList"] as! [Any] {
                var model = InstanceInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceList = tmp
        }
        if dict.keys.contains("overwrite") && dict["overwrite"] != nil {
            self.overwrite = dict["overwrite"] as! Bool
        }
    }
}

public class BatchAddEnvironmentNodesResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class BatchAddEnvironmentNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchAddEnvironmentNodesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BatchAddEnvironmentNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchAddProductVersionConfigRequest : Tea.TeaModel {
    public class ProductVersionConfigList : Tea.TeaModel {
        public var componentReleaseName: String?

        public var componentVersionUID: String?

        public var description_: String?

        public var name: String?

        public var parentComponentReleaseName: String?

        public var parentComponentVersionUID: String?

        public var scope: String?

        public var value: String?

        public var valueType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.componentReleaseName != nil {
                map["componentReleaseName"] = self.componentReleaseName!
            }
            if self.componentVersionUID != nil {
                map["componentVersionUID"] = self.componentVersionUID!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.parentComponentReleaseName != nil {
                map["parentComponentReleaseName"] = self.parentComponentReleaseName!
            }
            if self.parentComponentVersionUID != nil {
                map["parentComponentVersionUID"] = self.parentComponentVersionUID!
            }
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            if self.valueType != nil {
                map["valueType"] = self.valueType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("componentReleaseName") && dict["componentReleaseName"] != nil {
                self.componentReleaseName = dict["componentReleaseName"] as! String
            }
            if dict.keys.contains("componentVersionUID") && dict["componentVersionUID"] != nil {
                self.componentVersionUID = dict["componentVersionUID"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("parentComponentReleaseName") && dict["parentComponentReleaseName"] != nil {
                self.parentComponentReleaseName = dict["parentComponentReleaseName"] as! String
            }
            if dict.keys.contains("parentComponentVersionUID") && dict["parentComponentVersionUID"] != nil {
                self.parentComponentVersionUID = dict["parentComponentVersionUID"] as! String
            }
            if dict.keys.contains("scope") && dict["scope"] != nil {
                self.scope = dict["scope"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
            if dict.keys.contains("valueType") && dict["valueType"] != nil {
                self.valueType = dict["valueType"] as! String
            }
        }
    }
    public var productVersionConfigList: [BatchAddProductVersionConfigRequest.ProductVersionConfigList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productVersionConfigList != nil {
            var tmp : [Any] = []
            for k in self.productVersionConfigList! {
                tmp.append(k.toMap())
            }
            map["productVersionConfigList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productVersionConfigList") && dict["productVersionConfigList"] != nil {
            var tmp : [BatchAddProductVersionConfigRequest.ProductVersionConfigList] = []
            for v in dict["productVersionConfigList"] as! [Any] {
                var model = BatchAddProductVersionConfigRequest.ProductVersionConfigList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.productVersionConfigList = tmp
        }
    }
}

public class BatchAddProductVersionConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class BatchAddProductVersionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchAddProductVersionConfigResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BatchAddProductVersionConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDeliverableRequest : Tea.TeaModel {
    public class Foundation : Tea.TeaModel {
        public var clusterConfig: String?

        public var foundationReferenceUID: String?

        public var foundationVersion: String?

        public var foundationVersionUID: String?

        public var reusable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterConfig != nil {
                map["clusterConfig"] = self.clusterConfig!
            }
            if self.foundationReferenceUID != nil {
                map["foundationReferenceUID"] = self.foundationReferenceUID!
            }
            if self.foundationVersion != nil {
                map["foundationVersion"] = self.foundationVersion!
            }
            if self.foundationVersionUID != nil {
                map["foundationVersionUID"] = self.foundationVersionUID!
            }
            if self.reusable != nil {
                map["reusable"] = self.reusable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("clusterConfig") && dict["clusterConfig"] != nil {
                self.clusterConfig = dict["clusterConfig"] as! String
            }
            if dict.keys.contains("foundationReferenceUID") && dict["foundationReferenceUID"] != nil {
                self.foundationReferenceUID = dict["foundationReferenceUID"] as! String
            }
            if dict.keys.contains("foundationVersion") && dict["foundationVersion"] != nil {
                self.foundationVersion = dict["foundationVersion"] as! String
            }
            if dict.keys.contains("foundationVersionUID") && dict["foundationVersionUID"] != nil {
                self.foundationVersionUID = dict["foundationVersionUID"] as! String
            }
            if dict.keys.contains("reusable") && dict["reusable"] != nil {
                self.reusable = dict["reusable"] as! Bool
            }
        }
    }
    public class Products : Tea.TeaModel {
        public var namespace: String?

        public var productName: String?

        public var productType: String?

        public var productUID: String?

        public var productVersion: String?

        public var productVersionSpecName: String?

        public var productVersionSpecUID: String?

        public var productVersionUID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.productType != nil {
                map["productType"] = self.productType!
            }
            if self.productUID != nil {
                map["productUID"] = self.productUID!
            }
            if self.productVersion != nil {
                map["productVersion"] = self.productVersion!
            }
            if self.productVersionSpecName != nil {
                map["productVersionSpecName"] = self.productVersionSpecName!
            }
            if self.productVersionSpecUID != nil {
                map["productVersionSpecUID"] = self.productVersionSpecUID!
            }
            if self.productVersionUID != nil {
                map["productVersionUID"] = self.productVersionUID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("namespace") && dict["namespace"] != nil {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("productName") && dict["productName"] != nil {
                self.productName = dict["productName"] as! String
            }
            if dict.keys.contains("productType") && dict["productType"] != nil {
                self.productType = dict["productType"] as! String
            }
            if dict.keys.contains("productUID") && dict["productUID"] != nil {
                self.productUID = dict["productUID"] as! String
            }
            if dict.keys.contains("productVersion") && dict["productVersion"] != nil {
                self.productVersion = dict["productVersion"] as! String
            }
            if dict.keys.contains("productVersionSpecName") && dict["productVersionSpecName"] != nil {
                self.productVersionSpecName = dict["productVersionSpecName"] as! String
            }
            if dict.keys.contains("productVersionSpecUID") && dict["productVersionSpecUID"] != nil {
                self.productVersionSpecUID = dict["productVersionSpecUID"] as! String
            }
            if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                self.productVersionUID = dict["productVersionUID"] as! String
            }
        }
    }
    public var foundation: CreateDeliverableRequest.Foundation?

    public var products: [CreateDeliverableRequest.Products]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.foundation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.foundation != nil {
            map["foundation"] = self.foundation?.toMap()
        }
        if self.products != nil {
            var tmp : [Any] = []
            for k in self.products! {
                tmp.append(k.toMap())
            }
            map["products"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("foundation") && dict["foundation"] != nil {
            var model = CreateDeliverableRequest.Foundation()
            model.fromMap(dict["foundation"] as! [String: Any])
            self.foundation = model
        }
        if dict.keys.contains("products") && dict["products"] != nil {
            var tmp : [CreateDeliverableRequest.Products] = []
            for v in dict["products"] as! [Any] {
                var model = CreateDeliverableRequest.Products()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.products = tmp
        }
    }
}

public class CreateDeliverableResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateDeliverableResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = CreateDeliverableResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class CreateDeliverableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeliverableResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateDeliverableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDeliveryInstanceRequest : Tea.TeaModel {
    public class Foundation : Tea.TeaModel {
        public var clusterConfig: String?

        public var foundationReferenceUID: String?

        public var foundationVersion: String?

        public var foundationVersionUID: String?

        public var reusable: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterConfig != nil {
                map["clusterConfig"] = self.clusterConfig!
            }
            if self.foundationReferenceUID != nil {
                map["foundationReferenceUID"] = self.foundationReferenceUID!
            }
            if self.foundationVersion != nil {
                map["foundationVersion"] = self.foundationVersion!
            }
            if self.foundationVersionUID != nil {
                map["foundationVersionUID"] = self.foundationVersionUID!
            }
            if self.reusable != nil {
                map["reusable"] = self.reusable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("clusterConfig") && dict["clusterConfig"] != nil {
                self.clusterConfig = dict["clusterConfig"] as! String
            }
            if dict.keys.contains("foundationReferenceUID") && dict["foundationReferenceUID"] != nil {
                self.foundationReferenceUID = dict["foundationReferenceUID"] as! String
            }
            if dict.keys.contains("foundationVersion") && dict["foundationVersion"] != nil {
                self.foundationVersion = dict["foundationVersion"] as! String
            }
            if dict.keys.contains("foundationVersionUID") && dict["foundationVersionUID"] != nil {
                self.foundationVersionUID = dict["foundationVersionUID"] as! String
            }
            if dict.keys.contains("reusable") && dict["reusable"] != nil {
                self.reusable = dict["reusable"] as! String
            }
        }
    }
    public class Products : Tea.TeaModel {
        public var namespace: String?

        public var order: String?

        public var productName: String?

        public var productType: String?

        public var productUID: String?

        public var productVersion: String?

        public var productVersionSpecName: String?

        public var productVersionSpecUID: String?

        public var productVersionUID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.order != nil {
                map["order"] = self.order!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.productType != nil {
                map["productType"] = self.productType!
            }
            if self.productUID != nil {
                map["productUID"] = self.productUID!
            }
            if self.productVersion != nil {
                map["productVersion"] = self.productVersion!
            }
            if self.productVersionSpecName != nil {
                map["productVersionSpecName"] = self.productVersionSpecName!
            }
            if self.productVersionSpecUID != nil {
                map["productVersionSpecUID"] = self.productVersionSpecUID!
            }
            if self.productVersionUID != nil {
                map["productVersionUID"] = self.productVersionUID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("namespace") && dict["namespace"] != nil {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("order") && dict["order"] != nil {
                self.order = dict["order"] as! String
            }
            if dict.keys.contains("productName") && dict["productName"] != nil {
                self.productName = dict["productName"] as! String
            }
            if dict.keys.contains("productType") && dict["productType"] != nil {
                self.productType = dict["productType"] as! String
            }
            if dict.keys.contains("productUID") && dict["productUID"] != nil {
                self.productUID = dict["productUID"] as! String
            }
            if dict.keys.contains("productVersion") && dict["productVersion"] != nil {
                self.productVersion = dict["productVersion"] as! String
            }
            if dict.keys.contains("productVersionSpecName") && dict["productVersionSpecName"] != nil {
                self.productVersionSpecName = dict["productVersionSpecName"] as! String
            }
            if dict.keys.contains("productVersionSpecUID") && dict["productVersionSpecUID"] != nil {
                self.productVersionSpecUID = dict["productVersionSpecUID"] as! String
            }
            if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                self.productVersionUID = dict["productVersionUID"] as! String
            }
        }
    }
    public var clusterUID: String?

    public var deliverableConfigUID: String?

    public var deliverableUID: String?

    public var envUID: String?

    public var foundation: CreateDeliveryInstanceRequest.Foundation?

    public var products: [CreateDeliveryInstanceRequest.Products]?

    public var templateUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.foundation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterUID != nil {
            map["clusterUID"] = self.clusterUID!
        }
        if self.deliverableConfigUID != nil {
            map["deliverableConfigUID"] = self.deliverableConfigUID!
        }
        if self.deliverableUID != nil {
            map["deliverableUID"] = self.deliverableUID!
        }
        if self.envUID != nil {
            map["envUID"] = self.envUID!
        }
        if self.foundation != nil {
            map["foundation"] = self.foundation?.toMap()
        }
        if self.products != nil {
            var tmp : [Any] = []
            for k in self.products! {
                tmp.append(k.toMap())
            }
            map["products"] = tmp
        }
        if self.templateUID != nil {
            map["templateUID"] = self.templateUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusterUID") && dict["clusterUID"] != nil {
            self.clusterUID = dict["clusterUID"] as! String
        }
        if dict.keys.contains("deliverableConfigUID") && dict["deliverableConfigUID"] != nil {
            self.deliverableConfigUID = dict["deliverableConfigUID"] as! String
        }
        if dict.keys.contains("deliverableUID") && dict["deliverableUID"] != nil {
            self.deliverableUID = dict["deliverableUID"] as! String
        }
        if dict.keys.contains("envUID") && dict["envUID"] != nil {
            self.envUID = dict["envUID"] as! String
        }
        if dict.keys.contains("foundation") && dict["foundation"] != nil {
            var model = CreateDeliveryInstanceRequest.Foundation()
            model.fromMap(dict["foundation"] as! [String: Any])
            self.foundation = model
        }
        if dict.keys.contains("products") && dict["products"] != nil {
            var tmp : [CreateDeliveryInstanceRequest.Products] = []
            for v in dict["products"] as! [Any] {
                var model = CreateDeliveryInstanceRequest.Products()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.products = tmp
        }
        if dict.keys.contains("templateUID") && dict["templateUID"] != nil {
            self.templateUID = dict["templateUID"] as! String
        }
    }
}

public class CreateDeliveryInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateDeliveryInstanceResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = CreateDeliveryInstanceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class CreateDeliveryInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeliveryInstanceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateDeliveryInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDeliveryPackageRequest : Tea.TeaModel {
    public var deliverableUID: String?

    public var deliveryInstanceUID: String?

    public var originDeliverableUID: String?

    public var packageContentType: String?

    public var packageType: String?

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
        if self.deliverableUID != nil {
            map["deliverableUID"] = self.deliverableUID!
        }
        if self.deliveryInstanceUID != nil {
            map["deliveryInstanceUID"] = self.deliveryInstanceUID!
        }
        if self.originDeliverableUID != nil {
            map["originDeliverableUID"] = self.originDeliverableUID!
        }
        if self.packageContentType != nil {
            map["packageContentType"] = self.packageContentType!
        }
        if self.packageType != nil {
            map["packageType"] = self.packageType!
        }
        if self.platform != nil {
            map["platform"] = self.platform!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deliverableUID") && dict["deliverableUID"] != nil {
            self.deliverableUID = dict["deliverableUID"] as! String
        }
        if dict.keys.contains("deliveryInstanceUID") && dict["deliveryInstanceUID"] != nil {
            self.deliveryInstanceUID = dict["deliveryInstanceUID"] as! String
        }
        if dict.keys.contains("originDeliverableUID") && dict["originDeliverableUID"] != nil {
            self.originDeliverableUID = dict["originDeliverableUID"] as! String
        }
        if dict.keys.contains("packageContentType") && dict["packageContentType"] != nil {
            self.packageContentType = dict["packageContentType"] as! String
        }
        if dict.keys.contains("packageType") && dict["packageType"] != nil {
            self.packageType = dict["packageType"] as! String
        }
        if dict.keys.contains("platform") && dict["platform"] != nil {
            self.platform = dict["platform"] as! String
        }
    }
}

public class CreateDeliveryPackageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateDeliveryPackageResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = CreateDeliveryPackageResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class CreateDeliveryPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeliveryPackageResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateDeliveryPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEnvironmentHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
    }
}

public class CreateEnvironmentRequest : Tea.TeaModel {
    public class Platform : Tea.TeaModel {
        public var architecture: String?

        public var os: String?

        public override init() {
            super.init()
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
                map["architecture"] = self.architecture!
            }
            if self.os != nil {
                map["os"] = self.os!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("architecture") && dict["architecture"] != nil {
                self.architecture = dict["architecture"] as! String
            }
            if dict.keys.contains("os") && dict["os"] != nil {
                self.os = dict["os"] as! String
            }
        }
    }
    public var annotations: String?

    public var description_: String?

    public var expiredAt: String?

    public var location: String?

    public var name: String?

    public var platform: CreateEnvironmentRequest.Platform?

    public var platformList: [Platform]?

    public var productVersionUID: String?

    public var type: String?

    public var vendorConfig: String?

    public var vendorType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.platform?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.annotations != nil {
            map["annotations"] = self.annotations!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.expiredAt != nil {
            map["expiredAt"] = self.expiredAt!
        }
        if self.location != nil {
            map["location"] = self.location!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.platform != nil {
            map["platform"] = self.platform?.toMap()
        }
        if self.platformList != nil {
            var tmp : [Any] = []
            for k in self.platformList! {
                tmp.append(k.toMap())
            }
            map["platformList"] = tmp
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.vendorConfig != nil {
            map["vendorConfig"] = self.vendorConfig!
        }
        if self.vendorType != nil {
            map["vendorType"] = self.vendorType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("annotations") && dict["annotations"] != nil {
            self.annotations = dict["annotations"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("expiredAt") && dict["expiredAt"] != nil {
            self.expiredAt = dict["expiredAt"] as! String
        }
        if dict.keys.contains("location") && dict["location"] != nil {
            self.location = dict["location"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("platform") && dict["platform"] != nil {
            var model = CreateEnvironmentRequest.Platform()
            model.fromMap(dict["platform"] as! [String: Any])
            self.platform = model
        }
        if dict.keys.contains("platformList") && dict["platformList"] != nil {
            var tmp : [Platform] = []
            for v in dict["platformList"] as! [Any] {
                var model = Platform()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.platformList = tmp
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("vendorConfig") && dict["vendorConfig"] != nil {
            self.vendorConfig = dict["vendorConfig"] as! String
        }
        if dict.keys.contains("vendorType") && dict["vendorType"] != nil {
            self.vendorType = dict["vendorType"] as! String
        }
    }
}

public class CreateEnvironmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var environmentUID: String?

        public var vendorConfig: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.environmentUID != nil {
                map["environmentUID"] = self.environmentUID!
            }
            if self.vendorConfig != nil {
                map["vendorConfig"] = self.vendorConfig!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("environmentUID") && dict["environmentUID"] != nil {
                self.environmentUID = dict["environmentUID"] as! String
            }
            if dict.keys.contains("vendorConfig") && dict["vendorConfig"] != nil {
                self.vendorConfig = dict["vendorConfig"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateEnvironmentResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = CreateEnvironmentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class CreateEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEnvironmentResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateEnvironmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEnvironmentLicenseRequest : Tea.TeaModel {
    public class LicenseQuota : Tea.TeaModel {
        public class ClusterQuota : Tea.TeaModel {
            public var cpuCoreLimit: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuCoreLimit != nil {
                    map["cpuCoreLimit"] = self.cpuCoreLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cpuCoreLimit") && dict["cpuCoreLimit"] != nil {
                    self.cpuCoreLimit = dict["cpuCoreLimit"] as! Int64
                }
            }
        }
        public class CustomQuotas : Tea.TeaModel {
            public var description_: String?

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
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.key != nil {
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("description") && dict["description"] != nil {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("key") && dict["key"] != nil {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") && dict["value"] != nil {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var clusterQuota: CreateEnvironmentLicenseRequest.LicenseQuota.ClusterQuota?

        public var customQuotas: [CreateEnvironmentLicenseRequest.LicenseQuota.CustomQuotas]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.clusterQuota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterQuota != nil {
                map["clusterQuota"] = self.clusterQuota?.toMap()
            }
            if self.customQuotas != nil {
                var tmp : [Any] = []
                for k in self.customQuotas! {
                    tmp.append(k.toMap())
                }
                map["customQuotas"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("clusterQuota") && dict["clusterQuota"] != nil {
                var model = CreateEnvironmentLicenseRequest.LicenseQuota.ClusterQuota()
                model.fromMap(dict["clusterQuota"] as! [String: Any])
                self.clusterQuota = model
            }
            if dict.keys.contains("customQuotas") && dict["customQuotas"] != nil {
                var tmp : [CreateEnvironmentLicenseRequest.LicenseQuota.CustomQuotas] = []
                for v in dict["customQuotas"] as! [Any] {
                    var model = CreateEnvironmentLicenseRequest.LicenseQuota.CustomQuotas()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.customQuotas = tmp
            }
        }
    }
    public var companyName: String?

    public var contact: String?

    public var description_: String?

    public var expireTime: String?

    public var licenseQuota: CreateEnvironmentLicenseRequest.LicenseQuota?

    public var machineFingerprint: String?

    public var name: String?

    public var productVersionUID: String?

    public var scenario: String?

    public var scope: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.licenseQuota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.companyName != nil {
            map["companyName"] = self.companyName!
        }
        if self.contact != nil {
            map["contact"] = self.contact!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.expireTime != nil {
            map["expireTime"] = self.expireTime!
        }
        if self.licenseQuota != nil {
            map["licenseQuota"] = self.licenseQuota?.toMap()
        }
        if self.machineFingerprint != nil {
            map["machineFingerprint"] = self.machineFingerprint!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        if self.scenario != nil {
            map["scenario"] = self.scenario!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("companyName") && dict["companyName"] != nil {
            self.companyName = dict["companyName"] as! String
        }
        if dict.keys.contains("contact") && dict["contact"] != nil {
            self.contact = dict["contact"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("expireTime") && dict["expireTime"] != nil {
            self.expireTime = dict["expireTime"] as! String
        }
        if dict.keys.contains("licenseQuota") && dict["licenseQuota"] != nil {
            var model = CreateEnvironmentLicenseRequest.LicenseQuota()
            model.fromMap(dict["licenseQuota"] as! [String: Any])
            self.licenseQuota = model
        }
        if dict.keys.contains("machineFingerprint") && dict["machineFingerprint"] != nil {
            self.machineFingerprint = dict["machineFingerprint"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
        if dict.keys.contains("scenario") && dict["scenario"] != nil {
            self.scenario = dict["scenario"] as! String
        }
        if dict.keys.contains("scope") && dict["scope"] != nil {
            self.scope = dict["scope"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateEnvironmentLicenseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateEnvironmentLicenseResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = CreateEnvironmentLicenseResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class CreateEnvironmentLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEnvironmentLicenseResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateEnvironmentLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFoundationReferenceRequest : Tea.TeaModel {
    public class ComponentConfigs : Tea.TeaModel {
        public var componentVersionUID: String?

        public var orchestrationValues: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.componentVersionUID != nil {
                map["componentVersionUID"] = self.componentVersionUID!
            }
            if self.orchestrationValues != nil {
                map["orchestrationValues"] = self.orchestrationValues!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("componentVersionUID") && dict["componentVersionUID"] != nil {
                self.componentVersionUID = dict["componentVersionUID"] as! String
            }
            if dict.keys.contains("orchestrationValues") && dict["orchestrationValues"] != nil {
                self.orchestrationValues = dict["orchestrationValues"] as! String
            }
        }
    }
    public class FoundationReferenceConfigs : Tea.TeaModel {
        public var componentReleaseName: String?

        public var configType: String?

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
            if self.componentReleaseName != nil {
                map["componentReleaseName"] = self.componentReleaseName!
            }
            if self.configType != nil {
                map["configType"] = self.configType!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("componentReleaseName") && dict["componentReleaseName"] != nil {
                self.componentReleaseName = dict["componentReleaseName"] as! String
            }
            if dict.keys.contains("configType") && dict["configType"] != nil {
                self.configType = dict["configType"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
        }
    }
    public var clusterConfig: String?

    public var componentConfigs: [CreateFoundationReferenceRequest.ComponentConfigs]?

    public var foundationReferenceConfigs: [CreateFoundationReferenceRequest.FoundationReferenceConfigs]?

    public var foundationVersionUID: String?

    public var originFoundationReferenceUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterConfig != nil {
            map["clusterConfig"] = self.clusterConfig!
        }
        if self.componentConfigs != nil {
            var tmp : [Any] = []
            for k in self.componentConfigs! {
                tmp.append(k.toMap())
            }
            map["componentConfigs"] = tmp
        }
        if self.foundationReferenceConfigs != nil {
            var tmp : [Any] = []
            for k in self.foundationReferenceConfigs! {
                tmp.append(k.toMap())
            }
            map["foundationReferenceConfigs"] = tmp
        }
        if self.foundationVersionUID != nil {
            map["foundationVersionUID"] = self.foundationVersionUID!
        }
        if self.originFoundationReferenceUID != nil {
            map["originFoundationReferenceUID"] = self.originFoundationReferenceUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusterConfig") && dict["clusterConfig"] != nil {
            self.clusterConfig = dict["clusterConfig"] as! String
        }
        if dict.keys.contains("componentConfigs") && dict["componentConfigs"] != nil {
            var tmp : [CreateFoundationReferenceRequest.ComponentConfigs] = []
            for v in dict["componentConfigs"] as! [Any] {
                var model = CreateFoundationReferenceRequest.ComponentConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.componentConfigs = tmp
        }
        if dict.keys.contains("foundationReferenceConfigs") && dict["foundationReferenceConfigs"] != nil {
            var tmp : [CreateFoundationReferenceRequest.FoundationReferenceConfigs] = []
            for v in dict["foundationReferenceConfigs"] as! [Any] {
                var model = CreateFoundationReferenceRequest.FoundationReferenceConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.foundationReferenceConfigs = tmp
        }
        if dict.keys.contains("foundationVersionUID") && dict["foundationVersionUID"] != nil {
            self.foundationVersionUID = dict["foundationVersionUID"] as! String
        }
        if dict.keys.contains("originFoundationReferenceUID") && dict["originFoundationReferenceUID"] != nil {
            self.originFoundationReferenceUID = dict["originFoundationReferenceUID"] as! String
        }
    }
}

public class CreateFoundationReferenceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateFoundationReferenceResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = CreateFoundationReferenceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class CreateFoundationReferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFoundationReferenceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateFoundationReferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProductHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
    }
}

public class CreateProductRequest : Tea.TeaModel {
    public var categories: [String]?

    public var description_: String?

    public var displayName: String?

    public var foundationVersionUID: String?

    public var productName: String?

    public var vendor: String?

    public var withoutProductVersion: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categories != nil {
            map["categories"] = self.categories!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.foundationVersionUID != nil {
            map["foundationVersionUID"] = self.foundationVersionUID!
        }
        if self.productName != nil {
            map["productName"] = self.productName!
        }
        if self.vendor != nil {
            map["vendor"] = self.vendor!
        }
        if self.withoutProductVersion != nil {
            map["withoutProductVersion"] = self.withoutProductVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("categories") && dict["categories"] != nil {
            self.categories = dict["categories"] as! [String]
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("displayName") && dict["displayName"] != nil {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("foundationVersionUID") && dict["foundationVersionUID"] != nil {
            self.foundationVersionUID = dict["foundationVersionUID"] as! String
        }
        if dict.keys.contains("productName") && dict["productName"] != nil {
            self.productName = dict["productName"] as! String
        }
        if dict.keys.contains("vendor") && dict["vendor"] != nil {
            self.vendor = dict["vendor"] as! String
        }
        if dict.keys.contains("withoutProductVersion") && dict["withoutProductVersion"] != nil {
            self.withoutProductVersion = dict["withoutProductVersion"] as! Bool
        }
    }
}

public class CreateProductResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateProductResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = CreateProductResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class CreateProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProductResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProductDeploymentRequest : Tea.TeaModel {
    public var environmentUID: String?

    public var namespace: String?

    public var oldProductVersionUID: String?

    public var packageConfig: String?

    public var packageUID: String?

    public var productVersionUID: String?

    public var timeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environmentUID != nil {
            map["environmentUID"] = self.environmentUID!
        }
        if self.namespace != nil {
            map["namespace"] = self.namespace!
        }
        if self.oldProductVersionUID != nil {
            map["oldProductVersionUID"] = self.oldProductVersionUID!
        }
        if self.packageConfig != nil {
            map["packageConfig"] = self.packageConfig!
        }
        if self.packageUID != nil {
            map["packageUID"] = self.packageUID!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("environmentUID") && dict["environmentUID"] != nil {
            self.environmentUID = dict["environmentUID"] as! String
        }
        if dict.keys.contains("namespace") && dict["namespace"] != nil {
            self.namespace = dict["namespace"] as! String
        }
        if dict.keys.contains("oldProductVersionUID") && dict["oldProductVersionUID"] != nil {
            self.oldProductVersionUID = dict["oldProductVersionUID"] as! String
        }
        if dict.keys.contains("packageConfig") && dict["packageConfig"] != nil {
            self.packageConfig = dict["packageConfig"] as! String
        }
        if dict.keys.contains("packageUID") && dict["packageUID"] != nil {
            self.packageUID = dict["packageUID"] as! String
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
        if dict.keys.contains("timeout") && dict["timeout"] != nil {
            self.timeout = dict["timeout"] as! Int64
        }
    }
}

public class CreateProductDeploymentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateProductDeploymentResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = CreateProductDeploymentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class CreateProductDeploymentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProductDeploymentResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateProductDeploymentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProductVersionRequest : Tea.TeaModel {
    public var baseProductVersionUID: String?

    public var version: String?

    public var withoutBaseProductVersion: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baseProductVersionUID != nil {
            map["baseProductVersionUID"] = self.baseProductVersionUID!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        if self.withoutBaseProductVersion != nil {
            map["withoutBaseProductVersion"] = self.withoutBaseProductVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("baseProductVersionUID") && dict["baseProductVersionUID"] != nil {
            self.baseProductVersionUID = dict["baseProductVersionUID"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
        if dict.keys.contains("withoutBaseProductVersion") && dict["withoutBaseProductVersion"] != nil {
            self.withoutBaseProductVersion = dict["withoutBaseProductVersion"] as! Bool
        }
    }
}

public class CreateProductVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateProductVersionResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = CreateProductVersionResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class CreateProductVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProductVersionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateProductVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProductVersionPackageHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var clientToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
    }
}

public class CreateProductVersionPackageRequest : Tea.TeaModel {
    public var clusterEngineType: String?

    public var foundationReferenceUID: String?

    public var oldFoundationReferenceUID: String?

    public var oldProductVersionUID: String?

    public var packageContentType: String?

    public var packageToolType: String?

    public var packageType: String?

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
        if self.clusterEngineType != nil {
            map["clusterEngineType"] = self.clusterEngineType!
        }
        if self.foundationReferenceUID != nil {
            map["foundationReferenceUID"] = self.foundationReferenceUID!
        }
        if self.oldFoundationReferenceUID != nil {
            map["oldFoundationReferenceUID"] = self.oldFoundationReferenceUID!
        }
        if self.oldProductVersionUID != nil {
            map["oldProductVersionUID"] = self.oldProductVersionUID!
        }
        if self.packageContentType != nil {
            map["packageContentType"] = self.packageContentType!
        }
        if self.packageToolType != nil {
            map["packageToolType"] = self.packageToolType!
        }
        if self.packageType != nil {
            map["packageType"] = self.packageType!
        }
        if self.platform != nil {
            map["platform"] = self.platform!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusterEngineType") && dict["clusterEngineType"] != nil {
            self.clusterEngineType = dict["clusterEngineType"] as! String
        }
        if dict.keys.contains("foundationReferenceUID") && dict["foundationReferenceUID"] != nil {
            self.foundationReferenceUID = dict["foundationReferenceUID"] as! String
        }
        if dict.keys.contains("oldFoundationReferenceUID") && dict["oldFoundationReferenceUID"] != nil {
            self.oldFoundationReferenceUID = dict["oldFoundationReferenceUID"] as! String
        }
        if dict.keys.contains("oldProductVersionUID") && dict["oldProductVersionUID"] != nil {
            self.oldProductVersionUID = dict["oldProductVersionUID"] as! String
        }
        if dict.keys.contains("packageContentType") && dict["packageContentType"] != nil {
            self.packageContentType = dict["packageContentType"] as! String
        }
        if dict.keys.contains("packageToolType") && dict["packageToolType"] != nil {
            self.packageToolType = dict["packageToolType"] as! String
        }
        if dict.keys.contains("packageType") && dict["packageType"] != nil {
            self.packageType = dict["packageType"] as! String
        }
        if dict.keys.contains("platform") && dict["platform"] != nil {
            self.platform = dict["platform"] as! String
        }
    }
}

public class CreateProductVersionPackageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: CreateProductVersionPackageResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = CreateProductVersionPackageResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class CreateProductVersionPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProductVersionPackageResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateProductVersionPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEnvironmentResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class DeleteEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEnvironmentResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteEnvironmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEnvironmentLicenseResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteEnvironmentLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEnvironmentLicenseResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteEnvironmentLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEnvironmentNodeResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class DeleteEnvironmentNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEnvironmentNodeResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteEnvironmentNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEnvironmentProductVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class DeleteEnvironmentProductVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEnvironmentProductVersionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteEnvironmentProductVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProductResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class DeleteProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProductResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProductComponentVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class DeleteProductComponentVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProductComponentVersionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteProductComponentVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProductInstanceConfigRequest : Tea.TeaModel {
    public var environmentUID: String?

    public var productVersionUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environmentUID != nil {
            map["environmentUID"] = self.environmentUID!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("environmentUID") && dict["environmentUID"] != nil {
            self.environmentUID = dict["environmentUID"] as! String
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
    }
}

public class DeleteProductInstanceConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class DeleteProductInstanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProductInstanceConfigResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteProductInstanceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProductVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteProductVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProductVersionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteProductVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProductVersionConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class DeleteProductVersionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProductVersionConfigResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteProductVersionConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateProductInstanceDeploymentConfigRequest : Tea.TeaModel {
    public var environmentUID: String?

    public var packageContentType: String?

    public var packageUID: String?

    public var productVersionUID: String?

    public var productVersionUIDList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environmentUID != nil {
            map["environmentUID"] = self.environmentUID!
        }
        if self.packageContentType != nil {
            map["packageContentType"] = self.packageContentType!
        }
        if self.packageUID != nil {
            map["packageUID"] = self.packageUID!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        if self.productVersionUIDList != nil {
            map["productVersionUIDList"] = self.productVersionUIDList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("environmentUID") && dict["environmentUID"] != nil {
            self.environmentUID = dict["environmentUID"] as! String
        }
        if dict.keys.contains("packageContentType") && dict["packageContentType"] != nil {
            self.packageContentType = dict["packageContentType"] as! String
        }
        if dict.keys.contains("packageUID") && dict["packageUID"] != nil {
            self.packageUID = dict["packageUID"] as! String
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
        if dict.keys.contains("productVersionUIDList") && dict["productVersionUIDList"] != nil {
            self.productVersionUIDList = dict["productVersionUIDList"] as! [String]
        }
    }
}

public class GenerateProductInstanceDeploymentConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var packageConfig: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.packageConfig != nil {
                map["packageConfig"] = self.packageConfig!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("packageConfig") && dict["packageConfig"] != nil {
                self.packageConfig = dict["packageConfig"] as! String
            }
        }
    }
    public var code: String?

    public var data: GenerateProductInstanceDeploymentConfigResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GenerateProductInstanceDeploymentConfigResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GenerateProductInstanceDeploymentConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateProductInstanceDeploymentConfigResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GenerateProductInstanceDeploymentConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetComponentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var category: String?

        public var description_: String?

        public var documents: String?

        public var name: String?

        public var public_: Bool?

        public var singleton: Bool?

        public var source: String?

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
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.documents != nil {
                map["documents"] = self.documents!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.public_ != nil {
                map["public"] = self.public_!
            }
            if self.singleton != nil {
                map["singleton"] = self.singleton!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("category") && dict["category"] != nil {
                self.category = dict["category"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("documents") && dict["documents"] != nil {
                self.documents = dict["documents"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("public") && dict["public"] != nil {
                self.public_ = dict["public"] as! Bool
            }
            if dict.keys.contains("singleton") && dict["singleton"] != nil {
                self.singleton = dict["singleton"] as! Bool
            }
            if dict.keys.contains("source") && dict["source"] != nil {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetComponentResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetComponentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetComponentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetComponentResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetComponentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetComponentVersionRequest : Tea.TeaModel {
    public var withoutChartContent: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.withoutChartContent != nil {
            map["withoutChartContent"] = self.withoutChartContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("withoutChartContent") && dict["withoutChartContent"] != nil {
            self.withoutChartContent = dict["withoutChartContent"] as! Bool
        }
    }
}

public class GetComponentVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Resources : Tea.TeaModel {
            public var limits: [String: Any]?

            public var requests: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.limits != nil {
                    map["limits"] = self.limits!
                }
                if self.requests != nil {
                    map["requests"] = self.requests!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("limits") && dict["limits"] != nil {
                    self.limits = dict["limits"] as! [String: Any]
                }
                if dict.keys.contains("requests") && dict["requests"] != nil {
                    self.requests = dict["requests"] as! [String: Any]
                }
            }
        }
        public var componentName: String?

        public var componentUID: String?

        public var description_: String?

        public var documents: String?

        public var orchestrationValues: String?

        public var packageURL: String?

        public var parentComponent: Bool?

        public var productComponentVersionUID: String?

        public var provider: String?

        public var readme: String?

        public var resources: GetComponentVersionResponseBody.Data.Resources?

        public var uid: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resources?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.componentName != nil {
                map["componentName"] = self.componentName!
            }
            if self.componentUID != nil {
                map["componentUID"] = self.componentUID!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.documents != nil {
                map["documents"] = self.documents!
            }
            if self.orchestrationValues != nil {
                map["orchestrationValues"] = self.orchestrationValues!
            }
            if self.packageURL != nil {
                map["packageURL"] = self.packageURL!
            }
            if self.parentComponent != nil {
                map["parentComponent"] = self.parentComponent!
            }
            if self.productComponentVersionUID != nil {
                map["productComponentVersionUID"] = self.productComponentVersionUID!
            }
            if self.provider != nil {
                map["provider"] = self.provider!
            }
            if self.readme != nil {
                map["readme"] = self.readme!
            }
            if self.resources != nil {
                map["resources"] = self.resources?.toMap()
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("componentName") && dict["componentName"] != nil {
                self.componentName = dict["componentName"] as! String
            }
            if dict.keys.contains("componentUID") && dict["componentUID"] != nil {
                self.componentUID = dict["componentUID"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("documents") && dict["documents"] != nil {
                self.documents = dict["documents"] as! String
            }
            if dict.keys.contains("orchestrationValues") && dict["orchestrationValues"] != nil {
                self.orchestrationValues = dict["orchestrationValues"] as! String
            }
            if dict.keys.contains("packageURL") && dict["packageURL"] != nil {
                self.packageURL = dict["packageURL"] as! String
            }
            if dict.keys.contains("parentComponent") && dict["parentComponent"] != nil {
                self.parentComponent = dict["parentComponent"] as! Bool
            }
            if dict.keys.contains("productComponentVersionUID") && dict["productComponentVersionUID"] != nil {
                self.productComponentVersionUID = dict["productComponentVersionUID"] as! String
            }
            if dict.keys.contains("provider") && dict["provider"] != nil {
                self.provider = dict["provider"] as! String
            }
            if dict.keys.contains("readme") && dict["readme"] != nil {
                self.readme = dict["readme"] as! String
            }
            if dict.keys.contains("resources") && dict["resources"] != nil {
                var model = GetComponentVersionResponseBody.Data.Resources()
                model.fromMap(dict["resources"] as! [String: Any])
                self.resources = model
            }
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetComponentVersionResponseBody.Data]?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [GetComponentVersionResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetComponentVersionResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetComponentVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetComponentVersionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetComponentVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeliverableResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Foundation : Tea.TeaModel {
            public var clusterConfig: String?

            public var foundationReferenceUID: String?

            public var foundationVersion: String?

            public var foundationVersionUID: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterConfig != nil {
                    map["clusterConfig"] = self.clusterConfig!
                }
                if self.foundationReferenceUID != nil {
                    map["foundationReferenceUID"] = self.foundationReferenceUID!
                }
                if self.foundationVersion != nil {
                    map["foundationVersion"] = self.foundationVersion!
                }
                if self.foundationVersionUID != nil {
                    map["foundationVersionUID"] = self.foundationVersionUID!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("clusterConfig") && dict["clusterConfig"] != nil {
                    self.clusterConfig = dict["clusterConfig"] as! String
                }
                if dict.keys.contains("foundationReferenceUID") && dict["foundationReferenceUID"] != nil {
                    self.foundationReferenceUID = dict["foundationReferenceUID"] as! String
                }
                if dict.keys.contains("foundationVersion") && dict["foundationVersion"] != nil {
                    self.foundationVersion = dict["foundationVersion"] as! String
                }
                if dict.keys.contains("foundationVersionUID") && dict["foundationVersionUID"] != nil {
                    self.foundationVersionUID = dict["foundationVersionUID"] as! String
                }
            }
        }
        public class Products : Tea.TeaModel {
            public var namespace: String?

            public var productName: String?

            public var productType: String?

            public var productUID: String?

            public var productVersion: String?

            public var productVersionSpecName: String?

            public var productVersionSpecUID: String?

            public var productVersionUID: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.productName != nil {
                    map["productName"] = self.productName!
                }
                if self.productType != nil {
                    map["productType"] = self.productType!
                }
                if self.productUID != nil {
                    map["productUID"] = self.productUID!
                }
                if self.productVersion != nil {
                    map["productVersion"] = self.productVersion!
                }
                if self.productVersionSpecName != nil {
                    map["productVersionSpecName"] = self.productVersionSpecName!
                }
                if self.productVersionSpecUID != nil {
                    map["productVersionSpecUID"] = self.productVersionSpecUID!
                }
                if self.productVersionUID != nil {
                    map["productVersionUID"] = self.productVersionUID!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("namespace") && dict["namespace"] != nil {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("productName") && dict["productName"] != nil {
                    self.productName = dict["productName"] as! String
                }
                if dict.keys.contains("productType") && dict["productType"] != nil {
                    self.productType = dict["productType"] as! String
                }
                if dict.keys.contains("productUID") && dict["productUID"] != nil {
                    self.productUID = dict["productUID"] as! String
                }
                if dict.keys.contains("productVersion") && dict["productVersion"] != nil {
                    self.productVersion = dict["productVersion"] as! String
                }
                if dict.keys.contains("productVersionSpecName") && dict["productVersionSpecName"] != nil {
                    self.productVersionSpecName = dict["productVersionSpecName"] as! String
                }
                if dict.keys.contains("productVersionSpecUID") && dict["productVersionSpecUID"] != nil {
                    self.productVersionSpecUID = dict["productVersionSpecUID"] as! String
                }
                if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                    self.productVersionUID = dict["productVersionUID"] as! String
                }
            }
        }
        public var foundation: GetDeliverableResponseBody.Data.Foundation?

        public var products: [GetDeliverableResponseBody.Data.Products]?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.foundation?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.foundation != nil {
                map["foundation"] = self.foundation?.toMap()
            }
            if self.products != nil {
                var tmp : [Any] = []
                for k in self.products! {
                    tmp.append(k.toMap())
                }
                map["products"] = tmp
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("foundation") && dict["foundation"] != nil {
                var model = GetDeliverableResponseBody.Data.Foundation()
                model.fromMap(dict["foundation"] as! [String: Any])
                self.foundation = model
            }
            if dict.keys.contains("products") && dict["products"] != nil {
                var tmp : [GetDeliverableResponseBody.Data.Products] = []
                for v in dict["products"] as! [Any] {
                    var model = GetDeliverableResponseBody.Data.Products()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.products = tmp
            }
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetDeliverableResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetDeliverableResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetDeliverableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeliverableResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetDeliverableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDeliveryPackageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deliverableUID: String?

        public var originDeliverableUID: String?

        public var packageContentType: String?

        public var packageSize: String?

        public var packageStatus: String?

        public var packageType: String?

        public var packageUID: String?

        public var packageURL: String?

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
            if self.deliverableUID != nil {
                map["deliverableUID"] = self.deliverableUID!
            }
            if self.originDeliverableUID != nil {
                map["originDeliverableUID"] = self.originDeliverableUID!
            }
            if self.packageContentType != nil {
                map["packageContentType"] = self.packageContentType!
            }
            if self.packageSize != nil {
                map["packageSize"] = self.packageSize!
            }
            if self.packageStatus != nil {
                map["packageStatus"] = self.packageStatus!
            }
            if self.packageType != nil {
                map["packageType"] = self.packageType!
            }
            if self.packageUID != nil {
                map["packageUID"] = self.packageUID!
            }
            if self.packageURL != nil {
                map["packageURL"] = self.packageURL!
            }
            if self.platform != nil {
                map["platform"] = self.platform!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deliverableUID") && dict["deliverableUID"] != nil {
                self.deliverableUID = dict["deliverableUID"] as! String
            }
            if dict.keys.contains("originDeliverableUID") && dict["originDeliverableUID"] != nil {
                self.originDeliverableUID = dict["originDeliverableUID"] as! String
            }
            if dict.keys.contains("packageContentType") && dict["packageContentType"] != nil {
                self.packageContentType = dict["packageContentType"] as! String
            }
            if dict.keys.contains("packageSize") && dict["packageSize"] != nil {
                self.packageSize = dict["packageSize"] as! String
            }
            if dict.keys.contains("packageStatus") && dict["packageStatus"] != nil {
                self.packageStatus = dict["packageStatus"] as! String
            }
            if dict.keys.contains("packageType") && dict["packageType"] != nil {
                self.packageType = dict["packageType"] as! String
            }
            if dict.keys.contains("packageUID") && dict["packageUID"] != nil {
                self.packageUID = dict["packageUID"] as! String
            }
            if dict.keys.contains("packageURL") && dict["packageURL"] != nil {
                self.packageURL = dict["packageURL"] as! String
            }
            if dict.keys.contains("platform") && dict["platform"] != nil {
                self.platform = dict["platform"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetDeliveryPackageResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetDeliveryPackageResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetDeliveryPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDeliveryPackageResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetDeliveryPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEnvironmentRequest : Tea.TeaModel {
    public class Options : Tea.TeaModel {
        public var withSiteSurveyReport: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.withSiteSurveyReport != nil {
                map["withSiteSurveyReport"] = self.withSiteSurveyReport!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("withSiteSurveyReport") && dict["withSiteSurveyReport"] != nil {
                self.withSiteSurveyReport = dict["withSiteSurveyReport"] as! Bool
            }
        }
    }
    public var options: GetEnvironmentRequest.Options?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.options?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.options != nil {
            map["options"] = self.options?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("options") && dict["options"] != nil {
            var model = GetEnvironmentRequest.Options()
            model.fromMap(dict["options"] as! [String: Any])
            self.options = model
        }
    }
}

public class GetEnvironmentShrinkRequest : Tea.TeaModel {
    public var optionsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.optionsShrink != nil {
            map["options"] = self.optionsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("options") && dict["options"] != nil {
            self.optionsShrink = dict["options"] as! String
        }
    }
}

public class GetEnvironmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AdvancedConfigs : Tea.TeaModel {
            public var enableDeploySimulation: Bool?

            public var enableSiteSurvey: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableDeploySimulation != nil {
                    map["enableDeploySimulation"] = self.enableDeploySimulation!
                }
                if self.enableSiteSurvey != nil {
                    map["enableSiteSurvey"] = self.enableSiteSurvey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enableDeploySimulation") && dict["enableDeploySimulation"] != nil {
                    self.enableDeploySimulation = dict["enableDeploySimulation"] as! Bool
                }
                if dict.keys.contains("enableSiteSurvey") && dict["enableSiteSurvey"] != nil {
                    self.enableSiteSurvey = dict["enableSiteSurvey"] as! Bool
                }
            }
        }
        public class Platform : Tea.TeaModel {
            public var architecture: String?

            public var os: String?

            public override init() {
                super.init()
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
                    map["architecture"] = self.architecture!
                }
                if self.os != nil {
                    map["os"] = self.os!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("architecture") && dict["architecture"] != nil {
                    self.architecture = dict["architecture"] as! String
                }
                if dict.keys.contains("os") && dict["os"] != nil {
                    self.os = dict["os"] as! String
                }
            }
        }
        public class SiteSurveyReport : Tea.TeaModel {
            public class CheckList : Tea.TeaModel {
                public class FailedList : Tea.TeaModel {
                    public var ip: String?

                    public var reason: [String: Any]?

                    public override init() {
                        super.init()
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
                            map["ip"] = self.ip!
                        }
                        if self.reason != nil {
                            map["reason"] = self.reason!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ip") && dict["ip"] != nil {
                            self.ip = dict["ip"] as! String
                        }
                        if dict.keys.contains("reason") && dict["reason"] != nil {
                            self.reason = dict["reason"] as! [String: Any]
                        }
                    }
                }
                public var description_: [String: Any]?

                public var failedList: [GetEnvironmentResponseBody.Data.SiteSurveyReport.CheckList.FailedList]?

                public var level: String?

                public var name: String?

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
                    if self.description_ != nil {
                        map["description"] = self.description_!
                    }
                    if self.failedList != nil {
                        var tmp : [Any] = []
                        for k in self.failedList! {
                            tmp.append(k.toMap())
                        }
                        map["failedList"] = tmp
                    }
                    if self.level != nil {
                        map["level"] = self.level!
                    }
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("description") && dict["description"] != nil {
                        self.description_ = dict["description"] as! [String: Any]
                    }
                    if dict.keys.contains("failedList") && dict["failedList"] != nil {
                        var tmp : [GetEnvironmentResponseBody.Data.SiteSurveyReport.CheckList.FailedList] = []
                        for v in dict["failedList"] as! [Any] {
                            var model = GetEnvironmentResponseBody.Data.SiteSurveyReport.CheckList.FailedList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.failedList = tmp
                    }
                    if dict.keys.contains("level") && dict["level"] != nil {
                        self.level = dict["level"] as! String
                    }
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! String
                    }
                }
            }
            public var checkList: [GetEnvironmentResponseBody.Data.SiteSurveyReport.CheckList]?

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
                if self.checkList != nil {
                    var tmp : [Any] = []
                    for k in self.checkList! {
                        tmp.append(k.toMap())
                    }
                    map["checkList"] = tmp
                }
                if self.result != nil {
                    map["result"] = self.result!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("checkList") && dict["checkList"] != nil {
                    var tmp : [GetEnvironmentResponseBody.Data.SiteSurveyReport.CheckList] = []
                    for v in dict["checkList"] as! [Any] {
                        var model = GetEnvironmentResponseBody.Data.SiteSurveyReport.CheckList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.checkList = tmp
                }
                if dict.keys.contains("result") && dict["result"] != nil {
                    self.result = dict["result"] as! String
                }
            }
        }
        public var advancedConfigs: GetEnvironmentResponseBody.Data.AdvancedConfigs?

        public var clusterId: String?

        public var clusterUID: String?

        public var createdAt: String?

        public var description_: String?

        public var expiredAt: String?

        public var foundationType: String?

        public var foundationVersion: String?

        public var foundationVersionUID: String?

        public var instanceList: [InstanceInfo]?

        public var instanceStatus: String?

        public var location: String?

        public var name: String?

        public var oldProductVersion: String?

        public var oldProductVersionUID: String?

        public var platform: GetEnvironmentResponseBody.Data.Platform?

        public var platformList: [Platform]?

        public var platformStatus: String?

        public var productName: String?

        public var productVersion: String?

        public var siteSurveyReport: GetEnvironmentResponseBody.Data.SiteSurveyReport?

        public var uid: String?

        public var vendorConfig: String?

        public var vendorType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.advancedConfigs?.validate()
            try self.platform?.validate()
            try self.siteSurveyReport?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advancedConfigs != nil {
                map["advancedConfigs"] = self.advancedConfigs?.toMap()
            }
            if self.clusterId != nil {
                map["clusterId"] = self.clusterId!
            }
            if self.clusterUID != nil {
                map["clusterUID"] = self.clusterUID!
            }
            if self.createdAt != nil {
                map["createdAt"] = self.createdAt!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.expiredAt != nil {
                map["expiredAt"] = self.expiredAt!
            }
            if self.foundationType != nil {
                map["foundationType"] = self.foundationType!
            }
            if self.foundationVersion != nil {
                map["foundationVersion"] = self.foundationVersion!
            }
            if self.foundationVersionUID != nil {
                map["foundationVersionUID"] = self.foundationVersionUID!
            }
            if self.instanceList != nil {
                var tmp : [Any] = []
                for k in self.instanceList! {
                    tmp.append(k.toMap())
                }
                map["instanceList"] = tmp
            }
            if self.instanceStatus != nil {
                map["instanceStatus"] = self.instanceStatus!
            }
            if self.location != nil {
                map["location"] = self.location!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.oldProductVersion != nil {
                map["oldProductVersion"] = self.oldProductVersion!
            }
            if self.oldProductVersionUID != nil {
                map["oldProductVersionUID"] = self.oldProductVersionUID!
            }
            if self.platform != nil {
                map["platform"] = self.platform?.toMap()
            }
            if self.platformList != nil {
                var tmp : [Any] = []
                for k in self.platformList! {
                    tmp.append(k.toMap())
                }
                map["platformList"] = tmp
            }
            if self.platformStatus != nil {
                map["platformStatus"] = self.platformStatus!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.productVersion != nil {
                map["productVersion"] = self.productVersion!
            }
            if self.siteSurveyReport != nil {
                map["siteSurveyReport"] = self.siteSurveyReport?.toMap()
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            if self.vendorConfig != nil {
                map["vendorConfig"] = self.vendorConfig!
            }
            if self.vendorType != nil {
                map["vendorType"] = self.vendorType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("advancedConfigs") && dict["advancedConfigs"] != nil {
                var model = GetEnvironmentResponseBody.Data.AdvancedConfigs()
                model.fromMap(dict["advancedConfigs"] as! [String: Any])
                self.advancedConfigs = model
            }
            if dict.keys.contains("clusterId") && dict["clusterId"] != nil {
                self.clusterId = dict["clusterId"] as! String
            }
            if dict.keys.contains("clusterUID") && dict["clusterUID"] != nil {
                self.clusterUID = dict["clusterUID"] as! String
            }
            if dict.keys.contains("createdAt") && dict["createdAt"] != nil {
                self.createdAt = dict["createdAt"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("expiredAt") && dict["expiredAt"] != nil {
                self.expiredAt = dict["expiredAt"] as! String
            }
            if dict.keys.contains("foundationType") && dict["foundationType"] != nil {
                self.foundationType = dict["foundationType"] as! String
            }
            if dict.keys.contains("foundationVersion") && dict["foundationVersion"] != nil {
                self.foundationVersion = dict["foundationVersion"] as! String
            }
            if dict.keys.contains("foundationVersionUID") && dict["foundationVersionUID"] != nil {
                self.foundationVersionUID = dict["foundationVersionUID"] as! String
            }
            if dict.keys.contains("instanceList") && dict["instanceList"] != nil {
                var tmp : [InstanceInfo] = []
                for v in dict["instanceList"] as! [Any] {
                    var model = InstanceInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instanceList = tmp
            }
            if dict.keys.contains("instanceStatus") && dict["instanceStatus"] != nil {
                self.instanceStatus = dict["instanceStatus"] as! String
            }
            if dict.keys.contains("location") && dict["location"] != nil {
                self.location = dict["location"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("oldProductVersion") && dict["oldProductVersion"] != nil {
                self.oldProductVersion = dict["oldProductVersion"] as! String
            }
            if dict.keys.contains("oldProductVersionUID") && dict["oldProductVersionUID"] != nil {
                self.oldProductVersionUID = dict["oldProductVersionUID"] as! String
            }
            if dict.keys.contains("platform") && dict["platform"] != nil {
                var model = GetEnvironmentResponseBody.Data.Platform()
                model.fromMap(dict["platform"] as! [String: Any])
                self.platform = model
            }
            if dict.keys.contains("platformList") && dict["platformList"] != nil {
                var tmp : [Platform] = []
                for v in dict["platformList"] as! [Any] {
                    var model = Platform()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.platformList = tmp
            }
            if dict.keys.contains("platformStatus") && dict["platformStatus"] != nil {
                self.platformStatus = dict["platformStatus"] as! String
            }
            if dict.keys.contains("productName") && dict["productName"] != nil {
                self.productName = dict["productName"] as! String
            }
            if dict.keys.contains("productVersion") && dict["productVersion"] != nil {
                self.productVersion = dict["productVersion"] as! String
            }
            if dict.keys.contains("siteSurveyReport") && dict["siteSurveyReport"] != nil {
                var model = GetEnvironmentResponseBody.Data.SiteSurveyReport()
                model.fromMap(dict["siteSurveyReport"] as! [String: Any])
                self.siteSurveyReport = model
            }
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
            if dict.keys.contains("vendorConfig") && dict["vendorConfig"] != nil {
                self.vendorConfig = dict["vendorConfig"] as! String
            }
            if dict.keys.contains("vendorType") && dict["vendorType"] != nil {
                self.vendorType = dict["vendorType"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetEnvironmentResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetEnvironmentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnvironmentResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetEnvironmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEnvironmentDeliveryInstanceRequest : Tea.TeaModel {
    public var clusterUID: String?

    public var envUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterUID != nil {
            map["clusterUID"] = self.clusterUID!
        }
        if self.envUID != nil {
            map["envUID"] = self.envUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusterUID") && dict["clusterUID"] != nil {
            self.clusterUID = dict["clusterUID"] as! String
        }
        if dict.keys.contains("envUID") && dict["envUID"] != nil {
            self.envUID = dict["envUID"] as! String
        }
    }
}

public class GetEnvironmentDeliveryInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clusterUID: String?

        public var deliverableConfigUID: String?

        public var deliverableUID: String?

        public var envUID: String?

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
            if self.clusterUID != nil {
                map["clusterUID"] = self.clusterUID!
            }
            if self.deliverableConfigUID != nil {
                map["deliverableConfigUID"] = self.deliverableConfigUID!
            }
            if self.deliverableUID != nil {
                map["deliverableUID"] = self.deliverableUID!
            }
            if self.envUID != nil {
                map["envUID"] = self.envUID!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("clusterUID") && dict["clusterUID"] != nil {
                self.clusterUID = dict["clusterUID"] as! String
            }
            if dict.keys.contains("deliverableConfigUID") && dict["deliverableConfigUID"] != nil {
                self.deliverableConfigUID = dict["deliverableConfigUID"] as! String
            }
            if dict.keys.contains("deliverableUID") && dict["deliverableUID"] != nil {
                self.deliverableUID = dict["deliverableUID"] as! String
            }
            if dict.keys.contains("envUID") && dict["envUID"] != nil {
                self.envUID = dict["envUID"] as! String
            }
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetEnvironmentDeliveryInstanceResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetEnvironmentDeliveryInstanceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetEnvironmentDeliveryInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnvironmentDeliveryInstanceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetEnvironmentDeliveryInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEnvironmentLicenseRequest : Tea.TeaModel {
    public class Options : Tea.TeaModel {
        public var withSecretYAML: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.withSecretYAML != nil {
                map["withSecretYAML"] = self.withSecretYAML!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("withSecretYAML") && dict["withSecretYAML"] != nil {
                self.withSecretYAML = dict["withSecretYAML"] as! Bool
            }
        }
    }
    public var options: GetEnvironmentLicenseRequest.Options?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.options?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.options != nil {
            map["options"] = self.options?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("options") && dict["options"] != nil {
            var model = GetEnvironmentLicenseRequest.Options()
            model.fromMap(dict["options"] as! [String: Any])
            self.options = model
        }
    }
}

public class GetEnvironmentLicenseShrinkRequest : Tea.TeaModel {
    public var optionsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.optionsShrink != nil {
            map["options"] = self.optionsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("options") && dict["options"] != nil {
            self.optionsShrink = dict["options"] as! String
        }
    }
}

public class GetEnvironmentLicenseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class LicenseQuota : Tea.TeaModel {
            public class ClusterQuota : Tea.TeaModel {
                public var cpuCoreLimit: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cpuCoreLimit != nil {
                        map["cpuCoreLimit"] = self.cpuCoreLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cpuCoreLimit") && dict["cpuCoreLimit"] != nil {
                        self.cpuCoreLimit = dict["cpuCoreLimit"] as! Int64
                    }
                }
            }
            public class ComponentQuotas : Tea.TeaModel {
                public var componentName: String?

                public var componentSource: String?

                public var instanceLimit: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.componentName != nil {
                        map["componentName"] = self.componentName!
                    }
                    if self.componentSource != nil {
                        map["componentSource"] = self.componentSource!
                    }
                    if self.instanceLimit != nil {
                        map["instanceLimit"] = self.instanceLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("componentName") && dict["componentName"] != nil {
                        self.componentName = dict["componentName"] as! String
                    }
                    if dict.keys.contains("componentSource") && dict["componentSource"] != nil {
                        self.componentSource = dict["componentSource"] as! String
                    }
                    if dict.keys.contains("instanceLimit") && dict["instanceLimit"] != nil {
                        self.instanceLimit = dict["instanceLimit"] as! Int64
                    }
                }
            }
            public class CustomQuotas : Tea.TeaModel {
                public var description_: String?

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
                    if self.description_ != nil {
                        map["description"] = self.description_!
                    }
                    if self.key != nil {
                        map["key"] = self.key!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("description") && dict["description"] != nil {
                        self.description_ = dict["description"] as! String
                    }
                    if dict.keys.contains("key") && dict["key"] != nil {
                        self.key = dict["key"] as! String
                    }
                    if dict.keys.contains("value") && dict["value"] != nil {
                        self.value = dict["value"] as! String
                    }
                }
            }
            public var clusterQuota: GetEnvironmentLicenseResponseBody.Data.LicenseQuota.ClusterQuota?

            public var componentQuotas: [GetEnvironmentLicenseResponseBody.Data.LicenseQuota.ComponentQuotas]?

            public var customQuotas: [GetEnvironmentLicenseResponseBody.Data.LicenseQuota.CustomQuotas]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.clusterQuota?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterQuota != nil {
                    map["clusterQuota"] = self.clusterQuota?.toMap()
                }
                if self.componentQuotas != nil {
                    var tmp : [Any] = []
                    for k in self.componentQuotas! {
                        tmp.append(k.toMap())
                    }
                    map["componentQuotas"] = tmp
                }
                if self.customQuotas != nil {
                    var tmp : [Any] = []
                    for k in self.customQuotas! {
                        tmp.append(k.toMap())
                    }
                    map["customQuotas"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("clusterQuota") && dict["clusterQuota"] != nil {
                    var model = GetEnvironmentLicenseResponseBody.Data.LicenseQuota.ClusterQuota()
                    model.fromMap(dict["clusterQuota"] as! [String: Any])
                    self.clusterQuota = model
                }
                if dict.keys.contains("componentQuotas") && dict["componentQuotas"] != nil {
                    var tmp : [GetEnvironmentLicenseResponseBody.Data.LicenseQuota.ComponentQuotas] = []
                    for v in dict["componentQuotas"] as! [Any] {
                        var model = GetEnvironmentLicenseResponseBody.Data.LicenseQuota.ComponentQuotas()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.componentQuotas = tmp
                }
                if dict.keys.contains("customQuotas") && dict["customQuotas"] != nil {
                    var tmp : [GetEnvironmentLicenseResponseBody.Data.LicenseQuota.CustomQuotas] = []
                    for v in dict["customQuotas"] as! [Any] {
                        var model = GetEnvironmentLicenseResponseBody.Data.LicenseQuota.CustomQuotas()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.customQuotas = tmp
                }
            }
        }
        public var expireTime: String?

        public var licenseKey: String?

        public var licenseQuota: GetEnvironmentLicenseResponseBody.Data.LicenseQuota?

        public var productVersionUID: String?

        public var rejectReason: String?

        public var scope: String?

        public var secretYAML: String?

        public var status: String?

        public var type: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.licenseQuota?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expireTime != nil {
                map["expireTime"] = self.expireTime!
            }
            if self.licenseKey != nil {
                map["licenseKey"] = self.licenseKey!
            }
            if self.licenseQuota != nil {
                map["licenseQuota"] = self.licenseQuota?.toMap()
            }
            if self.productVersionUID != nil {
                map["productVersionUID"] = self.productVersionUID!
            }
            if self.rejectReason != nil {
                map["rejectReason"] = self.rejectReason!
            }
            if self.scope != nil {
                map["scope"] = self.scope!
            }
            if self.secretYAML != nil {
                map["secretYAML"] = self.secretYAML!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("expireTime") && dict["expireTime"] != nil {
                self.expireTime = dict["expireTime"] as! String
            }
            if dict.keys.contains("licenseKey") && dict["licenseKey"] != nil {
                self.licenseKey = dict["licenseKey"] as! String
            }
            if dict.keys.contains("licenseQuota") && dict["licenseQuota"] != nil {
                var model = GetEnvironmentLicenseResponseBody.Data.LicenseQuota()
                model.fromMap(dict["licenseQuota"] as! [String: Any])
                self.licenseQuota = model
            }
            if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                self.productVersionUID = dict["productVersionUID"] as! String
            }
            if dict.keys.contains("rejectReason") && dict["rejectReason"] != nil {
                self.rejectReason = dict["rejectReason"] as! String
            }
            if dict.keys.contains("scope") && dict["scope"] != nil {
                self.scope = dict["scope"] as! String
            }
            if dict.keys.contains("secretYAML") && dict["secretYAML"] != nil {
                self.secretYAML = dict["secretYAML"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetEnvironmentLicenseResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetEnvironmentLicenseResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetEnvironmentLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnvironmentLicenseResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetEnvironmentLicenseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetEnvironmentNodeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: InstanceInfo?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = InstanceInfo()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetEnvironmentNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetEnvironmentNodeResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetEnvironmentNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFoundationComponentReferenceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var list: [FoundationComponentReferenceDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [FoundationComponentReferenceDetail] = []
                for v in dict["list"] as! [Any] {
                    var model = FoundationComponentReferenceDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
        }
    }
    public var code: String?

    public var data: GetFoundationComponentReferenceResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetFoundationComponentReferenceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetFoundationComponentReferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFoundationComponentReferenceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetFoundationComponentReferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFoundationReferenceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var clusterConfig: String?

        public var foundationVersionUID: String?

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
            if self.clusterConfig != nil {
                map["clusterConfig"] = self.clusterConfig!
            }
            if self.foundationVersionUID != nil {
                map["foundationVersionUID"] = self.foundationVersionUID!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("clusterConfig") && dict["clusterConfig"] != nil {
                self.clusterConfig = dict["clusterConfig"] as! String
            }
            if dict.keys.contains("foundationVersionUID") && dict["foundationVersionUID"] != nil {
                self.foundationVersionUID = dict["foundationVersionUID"] as! String
            }
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetFoundationReferenceResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetFoundationReferenceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetFoundationReferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFoundationReferenceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetFoundationReferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFoundationVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SiteSurveyTool : Tea.TeaModel {
            public var clusterCheckerURL: String?

            public var clusterInfoBrief: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterCheckerURL != nil {
                    map["clusterCheckerURL"] = self.clusterCheckerURL!
                }
                if self.clusterInfoBrief != nil {
                    map["clusterInfoBrief"] = self.clusterInfoBrief!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("clusterCheckerURL") && dict["clusterCheckerURL"] != nil {
                    self.clusterCheckerURL = dict["clusterCheckerURL"] as! String
                }
                if dict.keys.contains("clusterInfoBrief") && dict["clusterInfoBrief"] != nil {
                    self.clusterInfoBrief = dict["clusterInfoBrief"] as! String
                }
            }
        }
        public var description_: String?

        public var features: [String]?

        public var isDefault: Bool?

        public var labels: String?

        public var name: String?

        public var platforms: [Platform]?

        public var siteSurveyTool: GetFoundationVersionResponseBody.Data.SiteSurveyTool?

        public var specName: String?

        public var status: String?

        public var type: String?

        public var uid: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.siteSurveyTool?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.features != nil {
                map["features"] = self.features!
            }
            if self.isDefault != nil {
                map["isDefault"] = self.isDefault!
            }
            if self.labels != nil {
                map["labels"] = self.labels!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.platforms != nil {
                var tmp : [Any] = []
                for k in self.platforms! {
                    tmp.append(k.toMap())
                }
                map["platforms"] = tmp
            }
            if self.siteSurveyTool != nil {
                map["siteSurveyTool"] = self.siteSurveyTool?.toMap()
            }
            if self.specName != nil {
                map["specName"] = self.specName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("features") && dict["features"] != nil {
                self.features = dict["features"] as! [String]
            }
            if dict.keys.contains("isDefault") && dict["isDefault"] != nil {
                self.isDefault = dict["isDefault"] as! Bool
            }
            if dict.keys.contains("labels") && dict["labels"] != nil {
                self.labels = dict["labels"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("platforms") && dict["platforms"] != nil {
                var tmp : [Platform] = []
                for v in dict["platforms"] as! [Any] {
                    var model = Platform()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.platforms = tmp
            }
            if dict.keys.contains("siteSurveyTool") && dict["siteSurveyTool"] != nil {
                var model = GetFoundationVersionResponseBody.Data.SiteSurveyTool()
                model.fromMap(dict["siteSurveyTool"] as! [String: Any])
                self.siteSurveyTool = model
            }
            if dict.keys.contains("specName") && dict["specName"] != nil {
                self.specName = dict["specName"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetFoundationVersionResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetFoundationVersionResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetFoundationVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFoundationVersionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetFoundationVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProductRequest : Tea.TeaModel {
    public var withIconURL: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.withIconURL != nil {
            map["withIconURL"] = self.withIconURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("withIconURL") && dict["withIconURL"] != nil {
            self.withIconURL = dict["withIconURL"] as! Bool
        }
    }
}

public class GetProductResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Icons : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var url: String?

            public override init() {
                super.init()
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
                    map["description"] = self.description_!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("description") && dict["description"] != nil {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("url") && dict["url"] != nil {
                    self.url = dict["url"] as! String
                }
            }
        }
        public var categories: [String]?

        public var description_: String?

        public var displayName: String?

        public var icons: [GetProductResponseBody.Data.Icons]?

        public var name: String?

        public var uid: String?

        public var vendor: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["categories"] = self.categories!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.icons != nil {
                var tmp : [Any] = []
                for k in self.icons! {
                    tmp.append(k.toMap())
                }
                map["icons"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            if self.vendor != nil {
                map["vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("categories") && dict["categories"] != nil {
                self.categories = dict["categories"] as! [String]
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("displayName") && dict["displayName"] != nil {
                self.displayName = dict["displayName"] as! String
            }
            if dict.keys.contains("icons") && dict["icons"] != nil {
                var tmp : [GetProductResponseBody.Data.Icons] = []
                for v in dict["icons"] as! [Any] {
                    var model = GetProductResponseBody.Data.Icons()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.icons = tmp
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
            if dict.keys.contains("vendor") && dict["vendor"] != nil {
                self.vendor = dict["vendor"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetProductResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetProductResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProductResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProductComponentVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appVersion: String?

        public var category: String?

        public var componentDescription: String?

        public var componentName: String?

        public var componentUID: String?

        public var componentVersionDescription: String?

        public var componentVersionUID: String?

        public var enable: Bool?

        public var namespace: String?

        public var orchestrationValues: String?

        public var parentComponent: Bool?

        public var parentComponentVersionRelationUID: String?

        public var parentComponentVersionUID: String?

        public var productVersionUID: String?

        public var relationUID: String?

        public var releaseName: String?

        public var resources: String?

        public var sequence: Int32?

        public var source: String?

        public var values: String?

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
            if self.appVersion != nil {
                map["appVersion"] = self.appVersion!
            }
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.componentDescription != nil {
                map["componentDescription"] = self.componentDescription!
            }
            if self.componentName != nil {
                map["componentName"] = self.componentName!
            }
            if self.componentUID != nil {
                map["componentUID"] = self.componentUID!
            }
            if self.componentVersionDescription != nil {
                map["componentVersionDescription"] = self.componentVersionDescription!
            }
            if self.componentVersionUID != nil {
                map["componentVersionUID"] = self.componentVersionUID!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.orchestrationValues != nil {
                map["orchestrationValues"] = self.orchestrationValues!
            }
            if self.parentComponent != nil {
                map["parentComponent"] = self.parentComponent!
            }
            if self.parentComponentVersionRelationUID != nil {
                map["parentComponentVersionRelationUID"] = self.parentComponentVersionRelationUID!
            }
            if self.parentComponentVersionUID != nil {
                map["parentComponentVersionUID"] = self.parentComponentVersionUID!
            }
            if self.productVersionUID != nil {
                map["productVersionUID"] = self.productVersionUID!
            }
            if self.relationUID != nil {
                map["relationUID"] = self.relationUID!
            }
            if self.releaseName != nil {
                map["releaseName"] = self.releaseName!
            }
            if self.resources != nil {
                map["resources"] = self.resources!
            }
            if self.sequence != nil {
                map["sequence"] = self.sequence!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.values != nil {
                map["values"] = self.values!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("appVersion") && dict["appVersion"] != nil {
                self.appVersion = dict["appVersion"] as! String
            }
            if dict.keys.contains("category") && dict["category"] != nil {
                self.category = dict["category"] as! String
            }
            if dict.keys.contains("componentDescription") && dict["componentDescription"] != nil {
                self.componentDescription = dict["componentDescription"] as! String
            }
            if dict.keys.contains("componentName") && dict["componentName"] != nil {
                self.componentName = dict["componentName"] as! String
            }
            if dict.keys.contains("componentUID") && dict["componentUID"] != nil {
                self.componentUID = dict["componentUID"] as! String
            }
            if dict.keys.contains("componentVersionDescription") && dict["componentVersionDescription"] != nil {
                self.componentVersionDescription = dict["componentVersionDescription"] as! String
            }
            if dict.keys.contains("componentVersionUID") && dict["componentVersionUID"] != nil {
                self.componentVersionUID = dict["componentVersionUID"] as! String
            }
            if dict.keys.contains("enable") && dict["enable"] != nil {
                self.enable = dict["enable"] as! Bool
            }
            if dict.keys.contains("namespace") && dict["namespace"] != nil {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("orchestrationValues") && dict["orchestrationValues"] != nil {
                self.orchestrationValues = dict["orchestrationValues"] as! String
            }
            if dict.keys.contains("parentComponent") && dict["parentComponent"] != nil {
                self.parentComponent = dict["parentComponent"] as! Bool
            }
            if dict.keys.contains("parentComponentVersionRelationUID") && dict["parentComponentVersionRelationUID"] != nil {
                self.parentComponentVersionRelationUID = dict["parentComponentVersionRelationUID"] as! String
            }
            if dict.keys.contains("parentComponentVersionUID") && dict["parentComponentVersionUID"] != nil {
                self.parentComponentVersionUID = dict["parentComponentVersionUID"] as! String
            }
            if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                self.productVersionUID = dict["productVersionUID"] as! String
            }
            if dict.keys.contains("relationUID") && dict["relationUID"] != nil {
                self.relationUID = dict["relationUID"] as! String
            }
            if dict.keys.contains("releaseName") && dict["releaseName"] != nil {
                self.releaseName = dict["releaseName"] as! String
            }
            if dict.keys.contains("resources") && dict["resources"] != nil {
                self.resources = dict["resources"] as! String
            }
            if dict.keys.contains("sequence") && dict["sequence"] != nil {
                self.sequence = dict["sequence"] as! Int32
            }
            if dict.keys.contains("source") && dict["source"] != nil {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("values") && dict["values"] != nil {
                self.values = dict["values"] as! String
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetProductComponentVersionResponseBody.Data]?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [GetProductComponentVersionResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetProductComponentVersionResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetProductComponentVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProductComponentVersionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetProductComponentVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProductDeploymentRequest : Tea.TeaModel {
    public var environmentUID: String?

    public var productVersionUID: String?

    public var withParamConfig: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environmentUID != nil {
            map["environmentUID"] = self.environmentUID!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        if self.withParamConfig != nil {
            map["withParamConfig"] = self.withParamConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("environmentUID") && dict["environmentUID"] != nil {
            self.environmentUID = dict["environmentUID"] as! String
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
        if dict.keys.contains("withParamConfig") && dict["withParamConfig"] != nil {
            self.withParamConfig = dict["withParamConfig"] as! Bool
        }
    }
}

public class GetProductDeploymentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var envParams: String?

        public var envUID: String?

        public var status: String?

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
            if self.envParams != nil {
                map["envParams"] = self.envParams!
            }
            if self.envUID != nil {
                map["envUID"] = self.envUID!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("envParams") && dict["envParams"] != nil {
                self.envParams = dict["envParams"] as! String
            }
            if dict.keys.contains("envUID") && dict["envUID"] != nil {
                self.envUID = dict["envUID"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetProductDeploymentResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetProductDeploymentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetProductDeploymentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProductDeploymentResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetProductDeploymentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProductVersionRequest : Tea.TeaModel {
    public var withDocumentationURL: Bool?

    public var withExtendResourceURL: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.withDocumentationURL != nil {
            map["withDocumentationURL"] = self.withDocumentationURL!
        }
        if self.withExtendResourceURL != nil {
            map["withExtendResourceURL"] = self.withExtendResourceURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("withDocumentationURL") && dict["withDocumentationURL"] != nil {
            self.withDocumentationURL = dict["withDocumentationURL"] as! Bool
        }
        if dict.keys.contains("withExtendResourceURL") && dict["withExtendResourceURL"] != nil {
            self.withExtendResourceURL = dict["withExtendResourceURL"] as! Bool
        }
    }
}

public class GetProductVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Documentations : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var url: String?

            public override init() {
                super.init()
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
                    map["description"] = self.description_!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("description") && dict["description"] != nil {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("url") && dict["url"] != nil {
                    self.url = dict["url"] as! String
                }
            }
        }
        public class ExtendedResources : Tea.TeaModel {
            public var description_: String?

            public var name: String?

            public var url: String?

            public override init() {
                super.init()
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
                    map["description"] = self.description_!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("description") && dict["description"] != nil {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("url") && dict["url"] != nil {
                    self.url = dict["url"] as! String
                }
            }
        }
        public var continuousIntegration: Bool?

        public var description_: String?

        public var documentations: [GetProductVersionResponseBody.Data.Documentations]?

        public var extendedResources: [GetProductVersionResponseBody.Data.ExtendedResources]?

        public var foundationVersionUID: String?

        public var packageURL: String?

        public var platforms: [Platform]?

        public var productName: String?

        public var productUID: String?

        public var provider: String?

        public var timeout: Int64?

        public var uid: String?

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
            if self.continuousIntegration != nil {
                map["continuousIntegration"] = self.continuousIntegration!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.documentations != nil {
                var tmp : [Any] = []
                for k in self.documentations! {
                    tmp.append(k.toMap())
                }
                map["documentations"] = tmp
            }
            if self.extendedResources != nil {
                var tmp : [Any] = []
                for k in self.extendedResources! {
                    tmp.append(k.toMap())
                }
                map["extendedResources"] = tmp
            }
            if self.foundationVersionUID != nil {
                map["foundationVersionUID"] = self.foundationVersionUID!
            }
            if self.packageURL != nil {
                map["packageURL"] = self.packageURL!
            }
            if self.platforms != nil {
                var tmp : [Any] = []
                for k in self.platforms! {
                    tmp.append(k.toMap())
                }
                map["platforms"] = tmp
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.productUID != nil {
                map["productUID"] = self.productUID!
            }
            if self.provider != nil {
                map["provider"] = self.provider!
            }
            if self.timeout != nil {
                map["timeout"] = self.timeout!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("continuousIntegration") && dict["continuousIntegration"] != nil {
                self.continuousIntegration = dict["continuousIntegration"] as! Bool
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("documentations") && dict["documentations"] != nil {
                var tmp : [GetProductVersionResponseBody.Data.Documentations] = []
                for v in dict["documentations"] as! [Any] {
                    var model = GetProductVersionResponseBody.Data.Documentations()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.documentations = tmp
            }
            if dict.keys.contains("extendedResources") && dict["extendedResources"] != nil {
                var tmp : [GetProductVersionResponseBody.Data.ExtendedResources] = []
                for v in dict["extendedResources"] as! [Any] {
                    var model = GetProductVersionResponseBody.Data.ExtendedResources()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.extendedResources = tmp
            }
            if dict.keys.contains("foundationVersionUID") && dict["foundationVersionUID"] != nil {
                self.foundationVersionUID = dict["foundationVersionUID"] as! String
            }
            if dict.keys.contains("packageURL") && dict["packageURL"] != nil {
                self.packageURL = dict["packageURL"] as! String
            }
            if dict.keys.contains("platforms") && dict["platforms"] != nil {
                var tmp : [Platform] = []
                for v in dict["platforms"] as! [Any] {
                    var model = Platform()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.platforms = tmp
            }
            if dict.keys.contains("productName") && dict["productName"] != nil {
                self.productName = dict["productName"] as! String
            }
            if dict.keys.contains("productUID") && dict["productUID"] != nil {
                self.productUID = dict["productUID"] as! String
            }
            if dict.keys.contains("provider") && dict["provider"] != nil {
                self.provider = dict["provider"] as! String
            }
            if dict.keys.contains("timeout") && dict["timeout"] != nil {
                self.timeout = dict["timeout"] as! Int64
            }
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetProductVersionResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetProductVersionResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetProductVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProductVersionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetProductVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProductVersionDifferencesRequest : Tea.TeaModel {
    public var preVersionUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.preVersionUID != nil {
            map["preVersionUID"] = self.preVersionUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("preVersionUID") && dict["preVersionUID"] != nil {
            self.preVersionUID = dict["preVersionUID"] as! String
        }
    }
}

public class GetProductVersionDifferencesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var componentName: String?

        public var difference: String?

        public var message: String?

        public var preVersion: String?

        public var releaseName: String?

        public var upgradeFlag: Bool?

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
            if self.componentName != nil {
                map["componentName"] = self.componentName!
            }
            if self.difference != nil {
                map["difference"] = self.difference!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.preVersion != nil {
                map["preVersion"] = self.preVersion!
            }
            if self.releaseName != nil {
                map["releaseName"] = self.releaseName!
            }
            if self.upgradeFlag != nil {
                map["upgradeFlag"] = self.upgradeFlag!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("componentName") && dict["componentName"] != nil {
                self.componentName = dict["componentName"] as! String
            }
            if dict.keys.contains("difference") && dict["difference"] != nil {
                self.difference = dict["difference"] as! String
            }
            if dict.keys.contains("message") && dict["message"] != nil {
                self.message = dict["message"] as! String
            }
            if dict.keys.contains("preVersion") && dict["preVersion"] != nil {
                self.preVersion = dict["preVersion"] as! String
            }
            if dict.keys.contains("releaseName") && dict["releaseName"] != nil {
                self.releaseName = dict["releaseName"] as! String
            }
            if dict.keys.contains("upgradeFlag") && dict["upgradeFlag"] != nil {
                self.upgradeFlag = dict["upgradeFlag"] as! Bool
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetProductVersionDifferencesResponseBody.Data]?

    public var msg: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [GetProductVersionDifferencesResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = GetProductVersionDifferencesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GetProductVersionDifferencesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProductVersionDifferencesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetProductVersionDifferencesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProductVersionPackageRequest : Tea.TeaModel {
    public var foundationReferenceUID: String?

    public var oldFoundationReferenceUID: String?

    public var oldProductVersionUID: String?

    public var packageContentType: String?

    public var packageType: String?

    public var packageUID: String?

    public var platform: String?

    public var withURL: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.foundationReferenceUID != nil {
            map["foundationReferenceUID"] = self.foundationReferenceUID!
        }
        if self.oldFoundationReferenceUID != nil {
            map["oldFoundationReferenceUID"] = self.oldFoundationReferenceUID!
        }
        if self.oldProductVersionUID != nil {
            map["oldProductVersionUID"] = self.oldProductVersionUID!
        }
        if self.packageContentType != nil {
            map["packageContentType"] = self.packageContentType!
        }
        if self.packageType != nil {
            map["packageType"] = self.packageType!
        }
        if self.packageUID != nil {
            map["packageUID"] = self.packageUID!
        }
        if self.platform != nil {
            map["platform"] = self.platform!
        }
        if self.withURL != nil {
            map["withURL"] = self.withURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("foundationReferenceUID") && dict["foundationReferenceUID"] != nil {
            self.foundationReferenceUID = dict["foundationReferenceUID"] as! String
        }
        if dict.keys.contains("oldFoundationReferenceUID") && dict["oldFoundationReferenceUID"] != nil {
            self.oldFoundationReferenceUID = dict["oldFoundationReferenceUID"] as! String
        }
        if dict.keys.contains("oldProductVersionUID") && dict["oldProductVersionUID"] != nil {
            self.oldProductVersionUID = dict["oldProductVersionUID"] as! String
        }
        if dict.keys.contains("packageContentType") && dict["packageContentType"] != nil {
            self.packageContentType = dict["packageContentType"] as! String
        }
        if dict.keys.contains("packageType") && dict["packageType"] != nil {
            self.packageType = dict["packageType"] as! String
        }
        if dict.keys.contains("packageUID") && dict["packageUID"] != nil {
            self.packageUID = dict["packageUID"] as! String
        }
        if dict.keys.contains("platform") && dict["platform"] != nil {
            self.platform = dict["platform"] as! String
        }
        if dict.keys.contains("withURL") && dict["withURL"] != nil {
            self.withURL = dict["withURL"] as! Bool
        }
    }
}

public class GetProductVersionPackageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var packageContentType: String?

        public var packageSize: String?

        public var packageStatus: String?

        public var packageType: String?

        public var packageUID: String?

        public var packageURL: String?

        public var platform: Platform?

        public var platformList: [Platform]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.platform?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.packageContentType != nil {
                map["packageContentType"] = self.packageContentType!
            }
            if self.packageSize != nil {
                map["packageSize"] = self.packageSize!
            }
            if self.packageStatus != nil {
                map["packageStatus"] = self.packageStatus!
            }
            if self.packageType != nil {
                map["packageType"] = self.packageType!
            }
            if self.packageUID != nil {
                map["packageUID"] = self.packageUID!
            }
            if self.packageURL != nil {
                map["packageURL"] = self.packageURL!
            }
            if self.platform != nil {
                map["platform"] = self.platform?.toMap()
            }
            if self.platformList != nil {
                var tmp : [Any] = []
                for k in self.platformList! {
                    tmp.append(k.toMap())
                }
                map["platformList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("packageContentType") && dict["packageContentType"] != nil {
                self.packageContentType = dict["packageContentType"] as! String
            }
            if dict.keys.contains("packageSize") && dict["packageSize"] != nil {
                self.packageSize = dict["packageSize"] as! String
            }
            if dict.keys.contains("packageStatus") && dict["packageStatus"] != nil {
                self.packageStatus = dict["packageStatus"] as! String
            }
            if dict.keys.contains("packageType") && dict["packageType"] != nil {
                self.packageType = dict["packageType"] as! String
            }
            if dict.keys.contains("packageUID") && dict["packageUID"] != nil {
                self.packageUID = dict["packageUID"] as! String
            }
            if dict.keys.contains("packageURL") && dict["packageURL"] != nil {
                self.packageURL = dict["packageURL"] as! String
            }
            if dict.keys.contains("platform") && dict["platform"] != nil {
                var model = Platform()
                model.fromMap(dict["platform"] as! [String: Any])
                self.platform = model
            }
            if dict.keys.contains("platformList") && dict["platformList"] != nil {
                var tmp : [Platform] = []
                for v in dict["platformList"] as! [Any] {
                    var model = Platform()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.platformList = tmp
            }
        }
    }
    public var code: String?

    public var data: GetProductVersionPackageResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetProductVersionPackageResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetProductVersionPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProductVersionPackageResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetProductVersionPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetResourceSnapshotRequest : Tea.TeaModel {
    public var productVersionUID: String?

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
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        if self.uid != nil {
            map["uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
        if dict.keys.contains("uid") && dict["uid"] != nil {
            self.uid = dict["uid"] as! String
        }
    }
}

public class GetResourceSnapshotResponseBody : Tea.TeaModel {
    public class AdpInfo : Tea.TeaModel {
        public class Components : Tea.TeaModel {
            public var CPULimit: String?

            public var CPURequest: String?

            public var componentName: String?

            public var componentReleaseName: String?

            public var componentVersion: String?

            public var memoryLimit: String?

            public var memoryRequest: String?

            public var orchestrationValue: String?

            public var status: String?

            public var storageRequest: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.CPULimit != nil {
                    map["CPULimit"] = self.CPULimit!
                }
                if self.CPURequest != nil {
                    map["CPURequest"] = self.CPURequest!
                }
                if self.componentName != nil {
                    map["componentName"] = self.componentName!
                }
                if self.componentReleaseName != nil {
                    map["componentReleaseName"] = self.componentReleaseName!
                }
                if self.componentVersion != nil {
                    map["componentVersion"] = self.componentVersion!
                }
                if self.memoryLimit != nil {
                    map["memoryLimit"] = self.memoryLimit!
                }
                if self.memoryRequest != nil {
                    map["memoryRequest"] = self.memoryRequest!
                }
                if self.orchestrationValue != nil {
                    map["orchestrationValue"] = self.orchestrationValue!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.storageRequest != nil {
                    map["storageRequest"] = self.storageRequest!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CPULimit") && dict["CPULimit"] != nil {
                    self.CPULimit = dict["CPULimit"] as! String
                }
                if dict.keys.contains("CPURequest") && dict["CPURequest"] != nil {
                    self.CPURequest = dict["CPURequest"] as! String
                }
                if dict.keys.contains("componentName") && dict["componentName"] != nil {
                    self.componentName = dict["componentName"] as! String
                }
                if dict.keys.contains("componentReleaseName") && dict["componentReleaseName"] != nil {
                    self.componentReleaseName = dict["componentReleaseName"] as! String
                }
                if dict.keys.contains("componentVersion") && dict["componentVersion"] != nil {
                    self.componentVersion = dict["componentVersion"] as! String
                }
                if dict.keys.contains("memoryLimit") && dict["memoryLimit"] != nil {
                    self.memoryLimit = dict["memoryLimit"] as! String
                }
                if dict.keys.contains("memoryRequest") && dict["memoryRequest"] != nil {
                    self.memoryRequest = dict["memoryRequest"] as! String
                }
                if dict.keys.contains("orchestrationValue") && dict["orchestrationValue"] != nil {
                    self.orchestrationValue = dict["orchestrationValue"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("storageRequest") && dict["storageRequest"] != nil {
                    self.storageRequest = dict["storageRequest"] as! String
                }
            }
        }
        public var CPURequest: String?

        public var componentNum: Int32?

        public var components: [GetResourceSnapshotResponseBody.AdpInfo.Components]?

        public var memoryRequest: String?

        public var podNum: Int32?

        public var storageRequest: String?

        public var workloadNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPURequest != nil {
                map["CPURequest"] = self.CPURequest!
            }
            if self.componentNum != nil {
                map["componentNum"] = self.componentNum!
            }
            if self.components != nil {
                var tmp : [Any] = []
                for k in self.components! {
                    tmp.append(k.toMap())
                }
                map["components"] = tmp
            }
            if self.memoryRequest != nil {
                map["memoryRequest"] = self.memoryRequest!
            }
            if self.podNum != nil {
                map["podNum"] = self.podNum!
            }
            if self.storageRequest != nil {
                map["storageRequest"] = self.storageRequest!
            }
            if self.workloadNum != nil {
                map["workloadNum"] = self.workloadNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CPURequest") && dict["CPURequest"] != nil {
                self.CPURequest = dict["CPURequest"] as! String
            }
            if dict.keys.contains("componentNum") && dict["componentNum"] != nil {
                self.componentNum = dict["componentNum"] as! Int32
            }
            if dict.keys.contains("components") && dict["components"] != nil {
                var tmp : [GetResourceSnapshotResponseBody.AdpInfo.Components] = []
                for v in dict["components"] as! [Any] {
                    var model = GetResourceSnapshotResponseBody.AdpInfo.Components()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.components = tmp
            }
            if dict.keys.contains("memoryRequest") && dict["memoryRequest"] != nil {
                self.memoryRequest = dict["memoryRequest"] as! String
            }
            if dict.keys.contains("podNum") && dict["podNum"] != nil {
                self.podNum = dict["podNum"] as! Int32
            }
            if dict.keys.contains("storageRequest") && dict["storageRequest"] != nil {
                self.storageRequest = dict["storageRequest"] as! String
            }
            if dict.keys.contains("workloadNum") && dict["workloadNum"] != nil {
                self.workloadNum = dict["workloadNum"] as! Int32
            }
        }
    }
    public class ProductInfo : Tea.TeaModel {
        public class Components : Tea.TeaModel {
            public var CPULimit: String?

            public var CPURequest: String?

            public var componentName: String?

            public var componentReleaseName: String?

            public var componentVersion: String?

            public var memoryLimit: String?

            public var memoryRequest: String?

            public var orchestrationValue: String?

            public var status: String?

            public var storageRequest: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.CPULimit != nil {
                    map["CPULimit"] = self.CPULimit!
                }
                if self.CPURequest != nil {
                    map["CPURequest"] = self.CPURequest!
                }
                if self.componentName != nil {
                    map["componentName"] = self.componentName!
                }
                if self.componentReleaseName != nil {
                    map["componentReleaseName"] = self.componentReleaseName!
                }
                if self.componentVersion != nil {
                    map["componentVersion"] = self.componentVersion!
                }
                if self.memoryLimit != nil {
                    map["memoryLimit"] = self.memoryLimit!
                }
                if self.memoryRequest != nil {
                    map["memoryRequest"] = self.memoryRequest!
                }
                if self.orchestrationValue != nil {
                    map["orchestrationValue"] = self.orchestrationValue!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.storageRequest != nil {
                    map["storageRequest"] = self.storageRequest!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CPULimit") && dict["CPULimit"] != nil {
                    self.CPULimit = dict["CPULimit"] as! String
                }
                if dict.keys.contains("CPURequest") && dict["CPURequest"] != nil {
                    self.CPURequest = dict["CPURequest"] as! String
                }
                if dict.keys.contains("componentName") && dict["componentName"] != nil {
                    self.componentName = dict["componentName"] as! String
                }
                if dict.keys.contains("componentReleaseName") && dict["componentReleaseName"] != nil {
                    self.componentReleaseName = dict["componentReleaseName"] as! String
                }
                if dict.keys.contains("componentVersion") && dict["componentVersion"] != nil {
                    self.componentVersion = dict["componentVersion"] as! String
                }
                if dict.keys.contains("memoryLimit") && dict["memoryLimit"] != nil {
                    self.memoryLimit = dict["memoryLimit"] as! String
                }
                if dict.keys.contains("memoryRequest") && dict["memoryRequest"] != nil {
                    self.memoryRequest = dict["memoryRequest"] as! String
                }
                if dict.keys.contains("orchestrationValue") && dict["orchestrationValue"] != nil {
                    self.orchestrationValue = dict["orchestrationValue"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("storageRequest") && dict["storageRequest"] != nil {
                    self.storageRequest = dict["storageRequest"] as! String
                }
            }
        }
        public var CPURequest: String?

        public var componentNum: Int32?

        public var components: [GetResourceSnapshotResponseBody.ProductInfo.Components]?

        public var memoryRequest: String?

        public var podNum: Int32?

        public var storageRequest: String?

        public var workloadNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPURequest != nil {
                map["CPURequest"] = self.CPURequest!
            }
            if self.componentNum != nil {
                map["componentNum"] = self.componentNum!
            }
            if self.components != nil {
                var tmp : [Any] = []
                for k in self.components! {
                    tmp.append(k.toMap())
                }
                map["components"] = tmp
            }
            if self.memoryRequest != nil {
                map["memoryRequest"] = self.memoryRequest!
            }
            if self.podNum != nil {
                map["podNum"] = self.podNum!
            }
            if self.storageRequest != nil {
                map["storageRequest"] = self.storageRequest!
            }
            if self.workloadNum != nil {
                map["workloadNum"] = self.workloadNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CPURequest") && dict["CPURequest"] != nil {
                self.CPURequest = dict["CPURequest"] as! String
            }
            if dict.keys.contains("componentNum") && dict["componentNum"] != nil {
                self.componentNum = dict["componentNum"] as! Int32
            }
            if dict.keys.contains("components") && dict["components"] != nil {
                var tmp : [GetResourceSnapshotResponseBody.ProductInfo.Components] = []
                for v in dict["components"] as! [Any] {
                    var model = GetResourceSnapshotResponseBody.ProductInfo.Components()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.components = tmp
            }
            if dict.keys.contains("memoryRequest") && dict["memoryRequest"] != nil {
                self.memoryRequest = dict["memoryRequest"] as! String
            }
            if dict.keys.contains("podNum") && dict["podNum"] != nil {
                self.podNum = dict["podNum"] as! Int32
            }
            if dict.keys.contains("storageRequest") && dict["storageRequest"] != nil {
                self.storageRequest = dict["storageRequest"] as! String
            }
            if dict.keys.contains("workloadNum") && dict["workloadNum"] != nil {
                self.workloadNum = dict["workloadNum"] as! Int32
            }
        }
    }
    public class SpecParamConfigs : Tea.TeaModel {
        public var componentName: String?

        public var componentReleaseName: String?

        public var componentSource: String?

        public var componentVersion: String?

        public var name: String?

        public var paramType: String?

        public var parentComponentName: String?

        public var parentComponentReleaseName: String?

        public var parentComponentVersion: String?

        public var value: String?

        public var valueType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.componentName != nil {
                map["componentName"] = self.componentName!
            }
            if self.componentReleaseName != nil {
                map["componentReleaseName"] = self.componentReleaseName!
            }
            if self.componentSource != nil {
                map["componentSource"] = self.componentSource!
            }
            if self.componentVersion != nil {
                map["componentVersion"] = self.componentVersion!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.paramType != nil {
                map["paramType"] = self.paramType!
            }
            if self.parentComponentName != nil {
                map["parentComponentName"] = self.parentComponentName!
            }
            if self.parentComponentReleaseName != nil {
                map["parentComponentReleaseName"] = self.parentComponentReleaseName!
            }
            if self.parentComponentVersion != nil {
                map["parentComponentVersion"] = self.parentComponentVersion!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            if self.valueType != nil {
                map["valueType"] = self.valueType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("componentName") && dict["componentName"] != nil {
                self.componentName = dict["componentName"] as! String
            }
            if dict.keys.contains("componentReleaseName") && dict["componentReleaseName"] != nil {
                self.componentReleaseName = dict["componentReleaseName"] as! String
            }
            if dict.keys.contains("componentSource") && dict["componentSource"] != nil {
                self.componentSource = dict["componentSource"] as! String
            }
            if dict.keys.contains("componentVersion") && dict["componentVersion"] != nil {
                self.componentVersion = dict["componentVersion"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("paramType") && dict["paramType"] != nil {
                self.paramType = dict["paramType"] as! String
            }
            if dict.keys.contains("parentComponentName") && dict["parentComponentName"] != nil {
                self.parentComponentName = dict["parentComponentName"] as! String
            }
            if dict.keys.contains("parentComponentReleaseName") && dict["parentComponentReleaseName"] != nil {
                self.parentComponentReleaseName = dict["parentComponentReleaseName"] as! String
            }
            if dict.keys.contains("parentComponentVersion") && dict["parentComponentVersion"] != nil {
                self.parentComponentVersion = dict["parentComponentVersion"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
            if dict.keys.contains("valueType") && dict["valueType"] != nil {
                self.valueType = dict["valueType"] as! String
            }
        }
    }
    public var CPULimit: String?

    public var CPURequest: String?

    public var adpInfo: GetResourceSnapshotResponseBody.AdpInfo?

    public var memoryLimit: String?

    public var memoryRequest: String?

    public var productInfo: GetResourceSnapshotResponseBody.ProductInfo?

    public var specParamConfigs: [GetResourceSnapshotResponseBody.SpecParamConfigs]?

    public var storageRequest: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.adpInfo?.validate()
        try self.productInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CPULimit != nil {
            map["CPULimit"] = self.CPULimit!
        }
        if self.CPURequest != nil {
            map["CPURequest"] = self.CPURequest!
        }
        if self.adpInfo != nil {
            map["adpInfo"] = self.adpInfo?.toMap()
        }
        if self.memoryLimit != nil {
            map["memoryLimit"] = self.memoryLimit!
        }
        if self.memoryRequest != nil {
            map["memoryRequest"] = self.memoryRequest!
        }
        if self.productInfo != nil {
            map["productInfo"] = self.productInfo?.toMap()
        }
        if self.specParamConfigs != nil {
            var tmp : [Any] = []
            for k in self.specParamConfigs! {
                tmp.append(k.toMap())
            }
            map["specParamConfigs"] = tmp
        }
        if self.storageRequest != nil {
            map["storageRequest"] = self.storageRequest!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CPULimit") && dict["CPULimit"] != nil {
            self.CPULimit = dict["CPULimit"] as! String
        }
        if dict.keys.contains("CPURequest") && dict["CPURequest"] != nil {
            self.CPURequest = dict["CPURequest"] as! String
        }
        if dict.keys.contains("adpInfo") && dict["adpInfo"] != nil {
            var model = GetResourceSnapshotResponseBody.AdpInfo()
            model.fromMap(dict["adpInfo"] as! [String: Any])
            self.adpInfo = model
        }
        if dict.keys.contains("memoryLimit") && dict["memoryLimit"] != nil {
            self.memoryLimit = dict["memoryLimit"] as! String
        }
        if dict.keys.contains("memoryRequest") && dict["memoryRequest"] != nil {
            self.memoryRequest = dict["memoryRequest"] as! String
        }
        if dict.keys.contains("productInfo") && dict["productInfo"] != nil {
            var model = GetResourceSnapshotResponseBody.ProductInfo()
            model.fromMap(dict["productInfo"] as! [String: Any])
            self.productInfo = model
        }
        if dict.keys.contains("specParamConfigs") && dict["specParamConfigs"] != nil {
            var tmp : [GetResourceSnapshotResponseBody.SpecParamConfigs] = []
            for v in dict["specParamConfigs"] as! [Any] {
                var model = GetResourceSnapshotResponseBody.SpecParamConfigs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.specParamConfigs = tmp
        }
        if dict.keys.contains("storageRequest") && dict["storageRequest"] != nil {
            self.storageRequest = dict["storageRequest"] as! String
        }
    }
}

public class GetResourceSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceSnapshotResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetResourceSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWorkflowStatusRequest : Tea.TeaModel {
    public var workflowType: String?

    public var xuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workflowType != nil {
            map["workflowType"] = self.workflowType!
        }
        if self.xuid != nil {
            map["xuid"] = self.xuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("workflowType") && dict["workflowType"] != nil {
            self.workflowType = dict["workflowType"] as! String
        }
        if dict.keys.contains("xuid") && dict["xuid"] != nil {
            self.xuid = dict["xuid"] as! String
        }
    }
}

public class GetWorkflowStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class StepStatus : Tea.TeaModel {
            public class WorkflowTasks : Tea.TeaModel {
                public var name: String?

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
                    if self.name != nil {
                        map["name"] = self.name!
                    }
                    if self.status != nil {
                        map["status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("name") && dict["name"] != nil {
                        self.name = dict["name"] as! String
                    }
                    if dict.keys.contains("status") && dict["status"] != nil {
                        self.status = dict["status"] as! String
                    }
                }
            }
            public var name: String?

            public var status: String?

            public var workflowTasks: [GetWorkflowStatusResponseBody.Data.StepStatus.WorkflowTasks]?

            public override init() {
                super.init()
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
                    map["name"] = self.name!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.workflowTasks != nil {
                    var tmp : [Any] = []
                    for k in self.workflowTasks! {
                        tmp.append(k.toMap())
                    }
                    map["workflowTasks"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("workflowTasks") && dict["workflowTasks"] != nil {
                    var tmp : [GetWorkflowStatusResponseBody.Data.StepStatus.WorkflowTasks] = []
                    for v in dict["workflowTasks"] as! [Any] {
                        var model = GetWorkflowStatusResponseBody.Data.StepStatus.WorkflowTasks()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.workflowTasks = tmp
                }
            }
        }
        public var status: String?

        public var stepStatus: [GetWorkflowStatusResponseBody.Data.StepStatus]?

        public override init() {
            super.init()
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
                map["status"] = self.status!
            }
            if self.stepStatus != nil {
                var tmp : [Any] = []
                for k in self.stepStatus! {
                    tmp.append(k.toMap())
                }
                map["stepStatus"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("stepStatus") && dict["stepStatus"] != nil {
                var tmp : [GetWorkflowStatusResponseBody.Data.StepStatus] = []
                for v in dict["stepStatus"] as! [Any] {
                    var model = GetWorkflowStatusResponseBody.Data.StepStatus()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.stepStatus = tmp
            }
        }
    }
    public var code: String?

    public var data: GetWorkflowStatusResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetWorkflowStatusResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class GetWorkflowStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkflowStatusResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetWorkflowStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InitEnvironmentResourceRequest : Tea.TeaModel {
    public var accessKeyID: String?

    public var accessKeySecret: String?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKeyID != nil {
            map["accessKeyID"] = self.accessKeyID!
        }
        if self.accessKeySecret != nil {
            map["accessKeySecret"] = self.accessKeySecret!
        }
        if self.securityToken != nil {
            map["securityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accessKeyID") && dict["accessKeyID"] != nil {
            self.accessKeyID = dict["accessKeyID"] as! String
        }
        if dict.keys.contains("accessKeySecret") && dict["accessKeySecret"] != nil {
            self.accessKeySecret = dict["accessKeySecret"] as! String
        }
        if dict.keys.contains("securityToken") && dict["securityToken"] != nil {
            self.securityToken = dict["securityToken"] as! String
        }
    }
}

public class InitEnvironmentResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
        }
    }
    public var code: String?

    public var data: InitEnvironmentResourceResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = InitEnvironmentResourceResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class InitEnvironmentResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitEnvironmentResourceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = InitEnvironmentResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListComponentVersionsRequest : Tea.TeaModel {
    public class Platforms : Tea.TeaModel {
        public var architecture: String?

        public var os: String?

        public override init() {
            super.init()
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
                map["architecture"] = self.architecture!
            }
            if self.os != nil {
                map["os"] = self.os!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("architecture") && dict["architecture"] != nil {
                self.architecture = dict["architecture"] as! String
            }
            if dict.keys.contains("os") && dict["os"] != nil {
                self.os = dict["os"] as! String
            }
        }
    }
    public var pageNum: Int32?

    public var pageSize: Int32?

    public var platforms: [ListComponentVersionsRequest.Platforms]?

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
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.platforms != nil {
            var tmp : [Any] = []
            for k in self.platforms! {
                tmp.append(k.toMap())
            }
            map["platforms"] = tmp
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("platforms") && dict["platforms"] != nil {
            var tmp : [ListComponentVersionsRequest.Platforms] = []
            for v in dict["platforms"] as! [Any] {
                var model = ListComponentVersionsRequest.Platforms()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.platforms = tmp
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class ListComponentVersionsShrinkRequest : Tea.TeaModel {
    public var pageNum: Int32?

    public var pageSize: Int32?

    public var platformsShrink: String?

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
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.platformsShrink != nil {
            map["platforms"] = self.platformsShrink!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("platforms") && dict["platforms"] != nil {
            self.platformsShrink = dict["platforms"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class ListComponentVersionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var appVersion: String?

            public var componentName: String?

            public var componentUID: String?

            public var description_: String?

            public var documents: String?

            public var imagesMapping: String?

            public var orchestrationValues: String?

            public var packageURL: String?

            public var parentComponent: Bool?

            public var readme: String?

            public var resources: String?

            public var uid: String?

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
                if self.appVersion != nil {
                    map["appVersion"] = self.appVersion!
                }
                if self.componentName != nil {
                    map["componentName"] = self.componentName!
                }
                if self.componentUID != nil {
                    map["componentUID"] = self.componentUID!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.documents != nil {
                    map["documents"] = self.documents!
                }
                if self.imagesMapping != nil {
                    map["imagesMapping"] = self.imagesMapping!
                }
                if self.orchestrationValues != nil {
                    map["orchestrationValues"] = self.orchestrationValues!
                }
                if self.packageURL != nil {
                    map["packageURL"] = self.packageURL!
                }
                if self.parentComponent != nil {
                    map["parentComponent"] = self.parentComponent!
                }
                if self.readme != nil {
                    map["readme"] = self.readme!
                }
                if self.resources != nil {
                    map["resources"] = self.resources!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("appVersion") && dict["appVersion"] != nil {
                    self.appVersion = dict["appVersion"] as! String
                }
                if dict.keys.contains("componentName") && dict["componentName"] != nil {
                    self.componentName = dict["componentName"] as! String
                }
                if dict.keys.contains("componentUID") && dict["componentUID"] != nil {
                    self.componentUID = dict["componentUID"] as! String
                }
                if dict.keys.contains("description") && dict["description"] != nil {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("documents") && dict["documents"] != nil {
                    self.documents = dict["documents"] as! String
                }
                if dict.keys.contains("imagesMapping") && dict["imagesMapping"] != nil {
                    self.imagesMapping = dict["imagesMapping"] as! String
                }
                if dict.keys.contains("orchestrationValues") && dict["orchestrationValues"] != nil {
                    self.orchestrationValues = dict["orchestrationValues"] as! String
                }
                if dict.keys.contains("packageURL") && dict["packageURL"] != nil {
                    self.packageURL = dict["packageURL"] as! String
                }
                if dict.keys.contains("parentComponent") && dict["parentComponent"] != nil {
                    self.parentComponent = dict["parentComponent"] as! Bool
                }
                if dict.keys.contains("readme") && dict["readme"] != nil {
                    self.readme = dict["readme"] as! String
                }
                if dict.keys.contains("resources") && dict["resources"] != nil {
                    self.resources = dict["resources"] as! String
                }
                if dict.keys.contains("uid") && dict["uid"] != nil {
                    self.uid = dict["uid"] as! String
                }
                if dict.keys.contains("version") && dict["version"] != nil {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var list: [ListComponentVersionsResponseBody.Data.List]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ListComponentVersionsResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListComponentVersionsResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var code: String?

    public var data: ListComponentVersionsResponseBody.Data?

    public var msg: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListComponentVersionsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListComponentVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListComponentVersionsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListComponentVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListComponentsRequest : Tea.TeaModel {
    public var category: String?

    public var fuzzy: String?

    public var name: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var public_: Bool?

    public override init() {
        super.init()
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
            map["category"] = self.category!
        }
        if self.fuzzy != nil {
            map["fuzzy"] = self.fuzzy!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.public_ != nil {
            map["public"] = self.public_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("category") && dict["category"] != nil {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("fuzzy") && dict["fuzzy"] != nil {
            self.fuzzy = dict["fuzzy"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("public") && dict["public"] != nil {
            self.public_ = dict["public"] as! Bool
        }
    }
}

public class ListComponentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class Annotations : Tea.TeaModel {
                public var annotations: String?

                public override init() {
                    super.init()
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
                        map["annotations"] = self.annotations!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("annotations") && dict["annotations"] != nil {
                        self.annotations = dict["annotations"] as! String
                    }
                }
            }
            public var annotations: ListComponentsResponseBody.Data.List.Annotations?

            public var category: String?

            public var description_: String?

            public var documents: String?

            public var name: String?

            public var provider: String?

            public var public_: Bool?

            public var singleton: Bool?

            public var source: String?

            public var uid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.annotations?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.annotations != nil {
                    map["annotations"] = self.annotations?.toMap()
                }
                if self.category != nil {
                    map["category"] = self.category!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.documents != nil {
                    map["documents"] = self.documents!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.provider != nil {
                    map["provider"] = self.provider!
                }
                if self.public_ != nil {
                    map["public"] = self.public_!
                }
                if self.singleton != nil {
                    map["singleton"] = self.singleton!
                }
                if self.source != nil {
                    map["source"] = self.source!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("annotations") && dict["annotations"] != nil {
                    var model = ListComponentsResponseBody.Data.List.Annotations()
                    model.fromMap(dict["annotations"] as! [String: Any])
                    self.annotations = model
                }
                if dict.keys.contains("category") && dict["category"] != nil {
                    self.category = dict["category"] as! String
                }
                if dict.keys.contains("description") && dict["description"] != nil {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("documents") && dict["documents"] != nil {
                    self.documents = dict["documents"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("provider") && dict["provider"] != nil {
                    self.provider = dict["provider"] as! String
                }
                if dict.keys.contains("public") && dict["public"] != nil {
                    self.public_ = dict["public"] as! Bool
                }
                if dict.keys.contains("singleton") && dict["singleton"] != nil {
                    self.singleton = dict["singleton"] as! Bool
                }
                if dict.keys.contains("source") && dict["source"] != nil {
                    self.source = dict["source"] as! String
                }
                if dict.keys.contains("uid") && dict["uid"] != nil {
                    self.uid = dict["uid"] as! String
                }
            }
        }
        public var list: [ListComponentsResponseBody.Data.List]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ListComponentsResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListComponentsResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListComponentsResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListComponentsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListComponentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListComponentsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListComponentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeliveryInstanceChangeRecordsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EnvNodeInfo : Tea.TeaModel {
            public var capacity: String?

            public var cpu: String?

            public var identifier: String?

            public var label: [String: Any]?

            public var memory: String?

            public var name: String?

            public var privateIP: String?

            public var taints: [String: Any]?

            public override init() {
                super.init()
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
                    map["capacity"] = self.capacity!
                }
                if self.cpu != nil {
                    map["cpu"] = self.cpu!
                }
                if self.identifier != nil {
                    map["identifier"] = self.identifier!
                }
                if self.label != nil {
                    map["label"] = self.label!
                }
                if self.memory != nil {
                    map["memory"] = self.memory!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.privateIP != nil {
                    map["privateIP"] = self.privateIP!
                }
                if self.taints != nil {
                    map["taints"] = self.taints!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("capacity") && dict["capacity"] != nil {
                    self.capacity = dict["capacity"] as! String
                }
                if dict.keys.contains("cpu") && dict["cpu"] != nil {
                    self.cpu = dict["cpu"] as! String
                }
                if dict.keys.contains("identifier") && dict["identifier"] != nil {
                    self.identifier = dict["identifier"] as! String
                }
                if dict.keys.contains("label") && dict["label"] != nil {
                    self.label = dict["label"] as! [String: Any]
                }
                if dict.keys.contains("memory") && dict["memory"] != nil {
                    self.memory = dict["memory"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("privateIP") && dict["privateIP"] != nil {
                    self.privateIP = dict["privateIP"] as! String
                }
                if dict.keys.contains("taints") && dict["taints"] != nil {
                    self.taints = dict["taints"] as! [String: Any]
                }
            }
        }
        public var deliverableUID: String?

        public var envChangeRecords: [String: Any]?

        public var envNodeInfo: [ListDeliveryInstanceChangeRecordsResponseBody.Data.EnvNodeInfo]?

        public var envPackageConfig: String?

        public var originDeliverableUID: String?

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
            if self.deliverableUID != nil {
                map["deliverableUID"] = self.deliverableUID!
            }
            if self.envChangeRecords != nil {
                map["envChangeRecords"] = self.envChangeRecords!
            }
            if self.envNodeInfo != nil {
                var tmp : [Any] = []
                for k in self.envNodeInfo! {
                    tmp.append(k.toMap())
                }
                map["envNodeInfo"] = tmp
            }
            if self.envPackageConfig != nil {
                map["envPackageConfig"] = self.envPackageConfig!
            }
            if self.originDeliverableUID != nil {
                map["originDeliverableUID"] = self.originDeliverableUID!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deliverableUID") && dict["deliverableUID"] != nil {
                self.deliverableUID = dict["deliverableUID"] as! String
            }
            if dict.keys.contains("envChangeRecords") && dict["envChangeRecords"] != nil {
                self.envChangeRecords = dict["envChangeRecords"] as! [String: Any]
            }
            if dict.keys.contains("envNodeInfo") && dict["envNodeInfo"] != nil {
                var tmp : [ListDeliveryInstanceChangeRecordsResponseBody.Data.EnvNodeInfo] = []
                for v in dict["envNodeInfo"] as! [Any] {
                    var model = ListDeliveryInstanceChangeRecordsResponseBody.Data.EnvNodeInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.envNodeInfo = tmp
            }
            if dict.keys.contains("envPackageConfig") && dict["envPackageConfig"] != nil {
                self.envPackageConfig = dict["envPackageConfig"] as! String
            }
            if dict.keys.contains("originDeliverableUID") && dict["originDeliverableUID"] != nil {
                self.originDeliverableUID = dict["originDeliverableUID"] as! String
            }
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListDeliveryInstanceChangeRecordsResponseBody.Data]?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [ListDeliveryInstanceChangeRecordsResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListDeliveryInstanceChangeRecordsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListDeliveryInstanceChangeRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeliveryInstanceChangeRecordsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListDeliveryInstanceChangeRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeliveryPackageRequest : Tea.TeaModel {
    public var deliverableUID: String?

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
        if self.deliverableUID != nil {
            map["deliverableUID"] = self.deliverableUID!
        }
        if self.platform != nil {
            map["platform"] = self.platform!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deliverableUID") && dict["deliverableUID"] != nil {
            self.deliverableUID = dict["deliverableUID"] as! String
        }
        if dict.keys.contains("platform") && dict["platform"] != nil {
            self.platform = dict["platform"] as! String
        }
    }
}

public class ListDeliveryPackageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deliverableUID: String?

        public var originDeliverableUID: String?

        public var packageContentType: String?

        public var packageSize: String?

        public var packageStatus: String?

        public var packageType: String?

        public var packageUID: String?

        public var packageURL: String?

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
            if self.deliverableUID != nil {
                map["deliverableUID"] = self.deliverableUID!
            }
            if self.originDeliverableUID != nil {
                map["originDeliverableUID"] = self.originDeliverableUID!
            }
            if self.packageContentType != nil {
                map["packageContentType"] = self.packageContentType!
            }
            if self.packageSize != nil {
                map["packageSize"] = self.packageSize!
            }
            if self.packageStatus != nil {
                map["packageStatus"] = self.packageStatus!
            }
            if self.packageType != nil {
                map["packageType"] = self.packageType!
            }
            if self.packageUID != nil {
                map["packageUID"] = self.packageUID!
            }
            if self.packageURL != nil {
                map["packageURL"] = self.packageURL!
            }
            if self.platform != nil {
                map["platform"] = self.platform!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deliverableUID") && dict["deliverableUID"] != nil {
                self.deliverableUID = dict["deliverableUID"] as! String
            }
            if dict.keys.contains("originDeliverableUID") && dict["originDeliverableUID"] != nil {
                self.originDeliverableUID = dict["originDeliverableUID"] as! String
            }
            if dict.keys.contains("packageContentType") && dict["packageContentType"] != nil {
                self.packageContentType = dict["packageContentType"] as! String
            }
            if dict.keys.contains("packageSize") && dict["packageSize"] != nil {
                self.packageSize = dict["packageSize"] as! String
            }
            if dict.keys.contains("packageStatus") && dict["packageStatus"] != nil {
                self.packageStatus = dict["packageStatus"] as! String
            }
            if dict.keys.contains("packageType") && dict["packageType"] != nil {
                self.packageType = dict["packageType"] as! String
            }
            if dict.keys.contains("packageUID") && dict["packageUID"] != nil {
                self.packageUID = dict["packageUID"] as! String
            }
            if dict.keys.contains("packageURL") && dict["packageURL"] != nil {
                self.packageURL = dict["packageURL"] as! String
            }
            if dict.keys.contains("platform") && dict["platform"] != nil {
                self.platform = dict["platform"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListDeliveryPackageResponseBody.Data]?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [ListDeliveryPackageResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListDeliveryPackageResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListDeliveryPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeliveryPackageResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListDeliveryPackageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnvironmentLicensesRequest : Tea.TeaModel {
    public var pageNum: Int32?

    public var pageSize: Int32?

    public var scope: String?

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
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("scope") && dict["scope"] != nil {
            self.scope = dict["scope"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class ListEnvironmentLicensesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class LicenseQuota : Tea.TeaModel {
                public class ClusterQuota : Tea.TeaModel {
                    public var cpuCoreLimit: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.cpuCoreLimit != nil {
                            map["cpuCoreLimit"] = self.cpuCoreLimit!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("cpuCoreLimit") && dict["cpuCoreLimit"] != nil {
                            self.cpuCoreLimit = dict["cpuCoreLimit"] as! Int32
                        }
                    }
                }
                public class ComponentQuotas : Tea.TeaModel {
                    public var componentName: String?

                    public var componentSource: String?

                    public var instanceLimit: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.componentName != nil {
                            map["componentName"] = self.componentName!
                        }
                        if self.componentSource != nil {
                            map["componentSource"] = self.componentSource!
                        }
                        if self.instanceLimit != nil {
                            map["instanceLimit"] = self.instanceLimit!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("componentName") && dict["componentName"] != nil {
                            self.componentName = dict["componentName"] as! String
                        }
                        if dict.keys.contains("componentSource") && dict["componentSource"] != nil {
                            self.componentSource = dict["componentSource"] as! String
                        }
                        if dict.keys.contains("instanceLimit") && dict["instanceLimit"] != nil {
                            self.instanceLimit = dict["instanceLimit"] as! Int32
                        }
                    }
                }
                public class CustomQuotas : Tea.TeaModel {
                    public var description_: String?

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
                        if self.description_ != nil {
                            map["description"] = self.description_!
                        }
                        if self.key != nil {
                            map["key"] = self.key!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("description") && dict["description"] != nil {
                            self.description_ = dict["description"] as! String
                        }
                        if dict.keys.contains("key") && dict["key"] != nil {
                            self.key = dict["key"] as! String
                        }
                        if dict.keys.contains("value") && dict["value"] != nil {
                            self.value = dict["value"] as! String
                        }
                    }
                }
                public var clusterQuota: ListEnvironmentLicensesResponseBody.Data.List.LicenseQuota.ClusterQuota?

                public var componentQuotas: [ListEnvironmentLicensesResponseBody.Data.List.LicenseQuota.ComponentQuotas]?

                public var customQuotas: [ListEnvironmentLicensesResponseBody.Data.List.LicenseQuota.CustomQuotas]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.clusterQuota?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.clusterQuota != nil {
                        map["clusterQuota"] = self.clusterQuota?.toMap()
                    }
                    if self.componentQuotas != nil {
                        var tmp : [Any] = []
                        for k in self.componentQuotas! {
                            tmp.append(k.toMap())
                        }
                        map["componentQuotas"] = tmp
                    }
                    if self.customQuotas != nil {
                        var tmp : [Any] = []
                        for k in self.customQuotas! {
                            tmp.append(k.toMap())
                        }
                        map["customQuotas"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("clusterQuota") && dict["clusterQuota"] != nil {
                        var model = ListEnvironmentLicensesResponseBody.Data.List.LicenseQuota.ClusterQuota()
                        model.fromMap(dict["clusterQuota"] as! [String: Any])
                        self.clusterQuota = model
                    }
                    if dict.keys.contains("componentQuotas") && dict["componentQuotas"] != nil {
                        var tmp : [ListEnvironmentLicensesResponseBody.Data.List.LicenseQuota.ComponentQuotas] = []
                        for v in dict["componentQuotas"] as! [Any] {
                            var model = ListEnvironmentLicensesResponseBody.Data.List.LicenseQuota.ComponentQuotas()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.componentQuotas = tmp
                    }
                    if dict.keys.contains("customQuotas") && dict["customQuotas"] != nil {
                        var tmp : [ListEnvironmentLicensesResponseBody.Data.List.LicenseQuota.CustomQuotas] = []
                        for v in dict["customQuotas"] as! [Any] {
                            var model = ListEnvironmentLicensesResponseBody.Data.List.LicenseQuota.CustomQuotas()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.customQuotas = tmp
                    }
                }
            }
            public var expireTime: String?

            public var licenseKey: String?

            public var licenseQuota: ListEnvironmentLicensesResponseBody.Data.List.LicenseQuota?

            public var productVersionUID: String?

            public var rejectReason: String?

            public var scope: String?

            public var status: String?

            public var type: String?

            public var uid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.licenseQuota?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.expireTime != nil {
                    map["expireTime"] = self.expireTime!
                }
                if self.licenseKey != nil {
                    map["licenseKey"] = self.licenseKey!
                }
                if self.licenseQuota != nil {
                    map["licenseQuota"] = self.licenseQuota?.toMap()
                }
                if self.productVersionUID != nil {
                    map["productVersionUID"] = self.productVersionUID!
                }
                if self.rejectReason != nil {
                    map["rejectReason"] = self.rejectReason!
                }
                if self.scope != nil {
                    map["scope"] = self.scope!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("expireTime") && dict["expireTime"] != nil {
                    self.expireTime = dict["expireTime"] as! String
                }
                if dict.keys.contains("licenseKey") && dict["licenseKey"] != nil {
                    self.licenseKey = dict["licenseKey"] as! String
                }
                if dict.keys.contains("licenseQuota") && dict["licenseQuota"] != nil {
                    var model = ListEnvironmentLicensesResponseBody.Data.List.LicenseQuota()
                    model.fromMap(dict["licenseQuota"] as! [String: Any])
                    self.licenseQuota = model
                }
                if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                    self.productVersionUID = dict["productVersionUID"] as! String
                }
                if dict.keys.contains("rejectReason") && dict["rejectReason"] != nil {
                    self.rejectReason = dict["rejectReason"] as! String
                }
                if dict.keys.contains("scope") && dict["scope"] != nil {
                    self.scope = dict["scope"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("type") && dict["type"] != nil {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("uid") && dict["uid"] != nil {
                    self.uid = dict["uid"] as! String
                }
            }
        }
        public var list: [ListEnvironmentLicensesResponseBody.Data.List]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ListEnvironmentLicensesResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListEnvironmentLicensesResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListEnvironmentLicensesResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListEnvironmentLicensesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListEnvironmentLicensesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEnvironmentLicensesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListEnvironmentLicensesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnvironmentNodesRequest : Tea.TeaModel {
    public var pageNum: Int32?

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
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListEnvironmentNodesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var list: [InstanceInfo]?

        public var pageNum: Int64?

        public var pageSize: Int64?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [InstanceInfo] = []
                for v in dict["list"] as! [Any] {
                    var model = InstanceInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int64
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ListEnvironmentNodesResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListEnvironmentNodesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListEnvironmentNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEnvironmentNodesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListEnvironmentNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnvironmentTunnelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class TunnelConfig : Tea.TeaModel {
                public var hostname: String?

                public var password: String?

                public var regionId: String?

                public var sshPort: Int32?

                public var username: String?

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
                    if self.hostname != nil {
                        map["hostname"] = self.hostname!
                    }
                    if self.password != nil {
                        map["password"] = self.password!
                    }
                    if self.regionId != nil {
                        map["regionId"] = self.regionId!
                    }
                    if self.sshPort != nil {
                        map["sshPort"] = self.sshPort!
                    }
                    if self.username != nil {
                        map["username"] = self.username!
                    }
                    if self.vpcId != nil {
                        map["vpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("hostname") && dict["hostname"] != nil {
                        self.hostname = dict["hostname"] as! String
                    }
                    if dict.keys.contains("password") && dict["password"] != nil {
                        self.password = dict["password"] as! String
                    }
                    if dict.keys.contains("regionId") && dict["regionId"] != nil {
                        self.regionId = dict["regionId"] as! String
                    }
                    if dict.keys.contains("sshPort") && dict["sshPort"] != nil {
                        self.sshPort = dict["sshPort"] as! Int32
                    }
                    if dict.keys.contains("username") && dict["username"] != nil {
                        self.username = dict["username"] as! String
                    }
                    if dict.keys.contains("vpcId") && dict["vpcId"] != nil {
                        self.vpcId = dict["vpcId"] as! String
                    }
                }
            }
            public var tunnelConfig: ListEnvironmentTunnelsResponseBody.Data.List.TunnelConfig?

            public var tunnelType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tunnelConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tunnelConfig != nil {
                    map["tunnelConfig"] = self.tunnelConfig?.toMap()
                }
                if self.tunnelType != nil {
                    map["tunnelType"] = self.tunnelType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("tunnelConfig") && dict["tunnelConfig"] != nil {
                    var model = ListEnvironmentTunnelsResponseBody.Data.List.TunnelConfig()
                    model.fromMap(dict["tunnelConfig"] as! [String: Any])
                    self.tunnelConfig = model
                }
                if dict.keys.contains("tunnelType") && dict["tunnelType"] != nil {
                    self.tunnelType = dict["tunnelType"] as! String
                }
            }
        }
        public var list: [ListEnvironmentTunnelsResponseBody.Data.List]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ListEnvironmentTunnelsResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListEnvironmentTunnelsResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
        }
    }
    public var code: String?

    public var data: ListEnvironmentTunnelsResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListEnvironmentTunnelsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListEnvironmentTunnelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEnvironmentTunnelsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListEnvironmentTunnelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEnvironmentsRequest : Tea.TeaModel {
    public var clusterUID: String?

    public var endpoint: String?

    public var foundationType: String?

    public var fuzzy: String?

    public var instanceStatus: String?

    public var name: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var type: String?

    public var vendorType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterUID != nil {
            map["clusterUID"] = self.clusterUID!
        }
        if self.endpoint != nil {
            map["endpoint"] = self.endpoint!
        }
        if self.foundationType != nil {
            map["foundationType"] = self.foundationType!
        }
        if self.fuzzy != nil {
            map["fuzzy"] = self.fuzzy!
        }
        if self.instanceStatus != nil {
            map["instanceStatus"] = self.instanceStatus!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.vendorType != nil {
            map["vendorType"] = self.vendorType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusterUID") && dict["clusterUID"] != nil {
            self.clusterUID = dict["clusterUID"] as! String
        }
        if dict.keys.contains("endpoint") && dict["endpoint"] != nil {
            self.endpoint = dict["endpoint"] as! String
        }
        if dict.keys.contains("foundationType") && dict["foundationType"] != nil {
            self.foundationType = dict["foundationType"] as! String
        }
        if dict.keys.contains("fuzzy") && dict["fuzzy"] != nil {
            self.fuzzy = dict["fuzzy"] as! String
        }
        if dict.keys.contains("instanceStatus") && dict["instanceStatus"] != nil {
            self.instanceStatus = dict["instanceStatus"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("vendorType") && dict["vendorType"] != nil {
            self.vendorType = dict["vendorType"] as! String
        }
    }
}

public class ListEnvironmentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class Platform : Tea.TeaModel {
                public var architecture: String?

                public var os: String?

                public override init() {
                    super.init()
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
                        map["architecture"] = self.architecture!
                    }
                    if self.os != nil {
                        map["os"] = self.os!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("architecture") && dict["architecture"] != nil {
                        self.architecture = dict["architecture"] as! String
                    }
                    if dict.keys.contains("os") && dict["os"] != nil {
                        self.os = dict["os"] as! String
                    }
                }
            }
            public var createdAt: String?

            public var description_: String?

            public var expireAt: String?

            public var instanceStatus: String?

            public var location: String?

            public var name: String?

            public var platform: ListEnvironmentsResponseBody.Data.List.Platform?

            public var platformList: [Platform]?

            public var platformStatus: String?

            public var productName: String?

            public var productVersion: String?

            public var productVersionUID: String?

            public var uid: String?

            public var vendorType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.platform?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createdAt != nil {
                    map["createdAt"] = self.createdAt!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.expireAt != nil {
                    map["expireAt"] = self.expireAt!
                }
                if self.instanceStatus != nil {
                    map["instanceStatus"] = self.instanceStatus!
                }
                if self.location != nil {
                    map["location"] = self.location!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.platform != nil {
                    map["platform"] = self.platform?.toMap()
                }
                if self.platformList != nil {
                    var tmp : [Any] = []
                    for k in self.platformList! {
                        tmp.append(k.toMap())
                    }
                    map["platformList"] = tmp
                }
                if self.platformStatus != nil {
                    map["platformStatus"] = self.platformStatus!
                }
                if self.productName != nil {
                    map["productName"] = self.productName!
                }
                if self.productVersion != nil {
                    map["productVersion"] = self.productVersion!
                }
                if self.productVersionUID != nil {
                    map["productVersionUID"] = self.productVersionUID!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                if self.vendorType != nil {
                    map["vendorType"] = self.vendorType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("createdAt") && dict["createdAt"] != nil {
                    self.createdAt = dict["createdAt"] as! String
                }
                if dict.keys.contains("description") && dict["description"] != nil {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("expireAt") && dict["expireAt"] != nil {
                    self.expireAt = dict["expireAt"] as! String
                }
                if dict.keys.contains("instanceStatus") && dict["instanceStatus"] != nil {
                    self.instanceStatus = dict["instanceStatus"] as! String
                }
                if dict.keys.contains("location") && dict["location"] != nil {
                    self.location = dict["location"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("platform") && dict["platform"] != nil {
                    var model = ListEnvironmentsResponseBody.Data.List.Platform()
                    model.fromMap(dict["platform"] as! [String: Any])
                    self.platform = model
                }
                if dict.keys.contains("platformList") && dict["platformList"] != nil {
                    var tmp : [Platform] = []
                    for v in dict["platformList"] as! [Any] {
                        var model = Platform()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.platformList = tmp
                }
                if dict.keys.contains("platformStatus") && dict["platformStatus"] != nil {
                    self.platformStatus = dict["platformStatus"] as! String
                }
                if dict.keys.contains("productName") && dict["productName"] != nil {
                    self.productName = dict["productName"] as! String
                }
                if dict.keys.contains("productVersion") && dict["productVersion"] != nil {
                    self.productVersion = dict["productVersion"] as! String
                }
                if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                    self.productVersionUID = dict["productVersionUID"] as! String
                }
                if dict.keys.contains("uid") && dict["uid"] != nil {
                    self.uid = dict["uid"] as! String
                }
                if dict.keys.contains("vendorType") && dict["vendorType"] != nil {
                    self.vendorType = dict["vendorType"] as! String
                }
            }
        }
        public var list: [ListEnvironmentsResponseBody.Data.List]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ListEnvironmentsResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListEnvironmentsResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListEnvironmentsResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListEnvironmentsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListEnvironmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEnvironmentsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListEnvironmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFoundationComponentVersionsRequest : Tea.TeaModel {
    public var onlyEnabled: Bool?

    public var parentComponentRelationUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.onlyEnabled != nil {
            map["onlyEnabled"] = self.onlyEnabled!
        }
        if self.parentComponentRelationUID != nil {
            map["parentComponentRelationUID"] = self.parentComponentRelationUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("onlyEnabled") && dict["onlyEnabled"] != nil {
            self.onlyEnabled = dict["onlyEnabled"] as! Bool
        }
        if dict.keys.contains("parentComponentRelationUID") && dict["parentComponentRelationUID"] != nil {
            self.parentComponentRelationUID = dict["parentComponentRelationUID"] as! String
        }
    }
}

public class ListFoundationComponentVersionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var list: [ComponentVersion]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ComponentVersion] = []
                for v in dict["list"] as! [Any] {
                    var model = ComponentVersion()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListFoundationComponentVersionsResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListFoundationComponentVersionsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListFoundationComponentVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFoundationComponentVersionsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListFoundationComponentVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFoundationReferenceComponentsRequest : Tea.TeaModel {
    public var foundationReferenceUID: String?

    public var foundationVersionUID: String?

    public var onlyEnabled: Bool?

    public var parentComponentReferenceUID: String?

    public var productVersionUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.foundationReferenceUID != nil {
            map["foundationReferenceUID"] = self.foundationReferenceUID!
        }
        if self.foundationVersionUID != nil {
            map["foundationVersionUID"] = self.foundationVersionUID!
        }
        if self.onlyEnabled != nil {
            map["onlyEnabled"] = self.onlyEnabled!
        }
        if self.parentComponentReferenceUID != nil {
            map["parentComponentReferenceUID"] = self.parentComponentReferenceUID!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("foundationReferenceUID") && dict["foundationReferenceUID"] != nil {
            self.foundationReferenceUID = dict["foundationReferenceUID"] as! String
        }
        if dict.keys.contains("foundationVersionUID") && dict["foundationVersionUID"] != nil {
            self.foundationVersionUID = dict["foundationVersionUID"] as! String
        }
        if dict.keys.contains("onlyEnabled") && dict["onlyEnabled"] != nil {
            self.onlyEnabled = dict["onlyEnabled"] as! Bool
        }
        if dict.keys.contains("parentComponentReferenceUID") && dict["parentComponentReferenceUID"] != nil {
            self.parentComponentReferenceUID = dict["parentComponentReferenceUID"] as! String
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
    }
}

public class ListFoundationReferenceComponentsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [ProductComponentRelationDetail]?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [ProductComponentRelationDetail] = []
            for v in dict["data"] as! [Any] {
                var model = ProductComponentRelationDetail()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListFoundationReferenceComponentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFoundationReferenceComponentsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListFoundationReferenceComponentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFoundationVersionsRequest : Tea.TeaModel {
    public var onlyDefault: Bool?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var sortDirect: String?

    public var sortKey: String?

    public var type: String?

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
        if self.onlyDefault != nil {
            map["onlyDefault"] = self.onlyDefault!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.sortDirect != nil {
            map["sortDirect"] = self.sortDirect!
        }
        if self.sortKey != nil {
            map["sortKey"] = self.sortKey!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("onlyDefault") && dict["onlyDefault"] != nil {
            self.onlyDefault = dict["onlyDefault"] as! Bool
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("sortDirect") && dict["sortDirect"] != nil {
            self.sortDirect = dict["sortDirect"] as! String
        }
        if dict.keys.contains("sortKey") && dict["sortKey"] != nil {
            self.sortKey = dict["sortKey"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class ListFoundationVersionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var list: [FoundationVersion]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [FoundationVersion] = []
                for v in dict["list"] as! [Any] {
                    var model = FoundationVersion()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
        }
    }
    public var code: String?

    public var data: ListFoundationVersionsResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListFoundationVersionsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListFoundationVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFoundationVersionsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListFoundationVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductComponentVersionsRequest : Tea.TeaModel {
    public var category: String?

    public var pageNum: String?

    public var pageSize: String?

    public var releaseName: String?

    public var sortDirect: String?

    public var sortKey: String?

    public override init() {
        super.init()
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
            map["category"] = self.category!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.releaseName != nil {
            map["releaseName"] = self.releaseName!
        }
        if self.sortDirect != nil {
            map["sortDirect"] = self.sortDirect!
        }
        if self.sortKey != nil {
            map["sortKey"] = self.sortKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("category") && dict["category"] != nil {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! String
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("releaseName") && dict["releaseName"] != nil {
            self.releaseName = dict["releaseName"] as! String
        }
        if dict.keys.contains("sortDirect") && dict["sortDirect"] != nil {
            self.sortDirect = dict["sortDirect"] as! String
        }
        if dict.keys.contains("sortKey") && dict["sortKey"] != nil {
            self.sortKey = dict["sortKey"] as! String
        }
    }
}

public class ListProductComponentVersionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var list: [ProductComponentRelationDetail]?

        public var pageNum: Int64?

        public var pageSize: Int64?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ProductComponentRelationDetail] = []
                for v in dict["list"] as! [Any] {
                    var model = ProductComponentRelationDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int64
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ListProductComponentVersionsResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListProductComponentVersionsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListProductComponentVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductComponentVersionsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListProductComponentVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductDeploymentsRequest : Tea.TeaModel {
    public var environmentUID: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productVersionUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.environmentUID != nil {
            map["environmentUID"] = self.environmentUID!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("environmentUID") && dict["environmentUID"] != nil {
            self.environmentUID = dict["environmentUID"] as! String
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
    }
}

public class ListProductDeploymentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var envParams: String?

            public var envUID: String?

            public var oldProductVersion: String?

            public var packageContentType: String?

            public var packageInfoUID: String?

            public var packageType: String?

            public var productName: String?

            public var productVersion: String?

            public var status: String?

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
                if self.envParams != nil {
                    map["envParams"] = self.envParams!
                }
                if self.envUID != nil {
                    map["envUID"] = self.envUID!
                }
                if self.oldProductVersion != nil {
                    map["oldProductVersion"] = self.oldProductVersion!
                }
                if self.packageContentType != nil {
                    map["packageContentType"] = self.packageContentType!
                }
                if self.packageInfoUID != nil {
                    map["packageInfoUID"] = self.packageInfoUID!
                }
                if self.packageType != nil {
                    map["packageType"] = self.packageType!
                }
                if self.productName != nil {
                    map["productName"] = self.productName!
                }
                if self.productVersion != nil {
                    map["productVersion"] = self.productVersion!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("envParams") && dict["envParams"] != nil {
                    self.envParams = dict["envParams"] as! String
                }
                if dict.keys.contains("envUID") && dict["envUID"] != nil {
                    self.envUID = dict["envUID"] as! String
                }
                if dict.keys.contains("oldProductVersion") && dict["oldProductVersion"] != nil {
                    self.oldProductVersion = dict["oldProductVersion"] as! String
                }
                if dict.keys.contains("packageContentType") && dict["packageContentType"] != nil {
                    self.packageContentType = dict["packageContentType"] as! String
                }
                if dict.keys.contains("packageInfoUID") && dict["packageInfoUID"] != nil {
                    self.packageInfoUID = dict["packageInfoUID"] as! String
                }
                if dict.keys.contains("packageType") && dict["packageType"] != nil {
                    self.packageType = dict["packageType"] as! String
                }
                if dict.keys.contains("productName") && dict["productName"] != nil {
                    self.productName = dict["productName"] as! String
                }
                if dict.keys.contains("productVersion") && dict["productVersion"] != nil {
                    self.productVersion = dict["productVersion"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("uid") && dict["uid"] != nil {
                    self.uid = dict["uid"] as! String
                }
            }
        }
        public var list: [ListProductDeploymentsResponseBody.Data.List]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ListProductDeploymentsResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListProductDeploymentsResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListProductDeploymentsResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListProductDeploymentsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListProductDeploymentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductDeploymentsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListProductDeploymentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductEnvironmentsRequest : Tea.TeaModel {
    public class Options : Tea.TeaModel {
        public var filterWithSpecUID: Bool?

        public var specUID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.filterWithSpecUID != nil {
                map["filterWithSpecUID"] = self.filterWithSpecUID!
            }
            if self.specUID != nil {
                map["specUID"] = self.specUID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("filterWithSpecUID") && dict["filterWithSpecUID"] != nil {
                self.filterWithSpecUID = dict["filterWithSpecUID"] as! Bool
            }
            if dict.keys.contains("specUID") && dict["specUID"] != nil {
                self.specUID = dict["specUID"] as! String
            }
        }
    }
    public class Platforms : Tea.TeaModel {
        public var architecture: String?

        public var os: String?

        public override init() {
            super.init()
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
                map["architecture"] = self.architecture!
            }
            if self.os != nil {
                map["os"] = self.os!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("architecture") && dict["architecture"] != nil {
                self.architecture = dict["architecture"] as! String
            }
            if dict.keys.contains("os") && dict["os"] != nil {
                self.os = dict["os"] as! String
            }
        }
    }
    public var compatibleProductVersionUID: String?

    public var envType: String?

    public var options: ListProductEnvironmentsRequest.Options?

    public var platforms: [ListProductEnvironmentsRequest.Platforms]?

    public var productVersionSpecUID: String?

    public var productVersionUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.options?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compatibleProductVersionUID != nil {
            map["compatibleProductVersionUID"] = self.compatibleProductVersionUID!
        }
        if self.envType != nil {
            map["envType"] = self.envType!
        }
        if self.options != nil {
            map["options"] = self.options?.toMap()
        }
        if self.platforms != nil {
            var tmp : [Any] = []
            for k in self.platforms! {
                tmp.append(k.toMap())
            }
            map["platforms"] = tmp
        }
        if self.productVersionSpecUID != nil {
            map["productVersionSpecUID"] = self.productVersionSpecUID!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("compatibleProductVersionUID") && dict["compatibleProductVersionUID"] != nil {
            self.compatibleProductVersionUID = dict["compatibleProductVersionUID"] as! String
        }
        if dict.keys.contains("envType") && dict["envType"] != nil {
            self.envType = dict["envType"] as! String
        }
        if dict.keys.contains("options") && dict["options"] != nil {
            var model = ListProductEnvironmentsRequest.Options()
            model.fromMap(dict["options"] as! [String: Any])
            self.options = model
        }
        if dict.keys.contains("platforms") && dict["platforms"] != nil {
            var tmp : [ListProductEnvironmentsRequest.Platforms] = []
            for v in dict["platforms"] as! [Any] {
                var model = ListProductEnvironmentsRequest.Platforms()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.platforms = tmp
        }
        if dict.keys.contains("productVersionSpecUID") && dict["productVersionSpecUID"] != nil {
            self.productVersionSpecUID = dict["productVersionSpecUID"] as! String
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
    }
}

public class ListProductEnvironmentsShrinkRequest : Tea.TeaModel {
    public var compatibleProductVersionUID: String?

    public var envType: String?

    public var optionsShrink: String?

    public var platformsShrink: String?

    public var productVersionSpecUID: String?

    public var productVersionUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compatibleProductVersionUID != nil {
            map["compatibleProductVersionUID"] = self.compatibleProductVersionUID!
        }
        if self.envType != nil {
            map["envType"] = self.envType!
        }
        if self.optionsShrink != nil {
            map["options"] = self.optionsShrink!
        }
        if self.platformsShrink != nil {
            map["platforms"] = self.platformsShrink!
        }
        if self.productVersionSpecUID != nil {
            map["productVersionSpecUID"] = self.productVersionSpecUID!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("compatibleProductVersionUID") && dict["compatibleProductVersionUID"] != nil {
            self.compatibleProductVersionUID = dict["compatibleProductVersionUID"] as! String
        }
        if dict.keys.contains("envType") && dict["envType"] != nil {
            self.envType = dict["envType"] as! String
        }
        if dict.keys.contains("options") && dict["options"] != nil {
            self.optionsShrink = dict["options"] as! String
        }
        if dict.keys.contains("platforms") && dict["platforms"] != nil {
            self.platformsShrink = dict["platforms"] as! String
        }
        if dict.keys.contains("productVersionSpecUID") && dict["productVersionSpecUID"] != nil {
            self.productVersionSpecUID = dict["productVersionSpecUID"] as! String
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
    }
}

public class ListProductEnvironmentsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var envName: String?

        public var envType: String?

        public var envUID: String?

        public var instanceStatus: String?

        public var oldProductVersion: String?

        public var oldProductVersionUID: String?

        public var platformStatus: String?

        public var productName: String?

        public var productUID: String?

        public var productVersion: String?

        public var productVersionUID: String?

        public var provider: String?

        public var uid: String?

        public var vendorConfig: String?

        public var vendorType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.envName != nil {
                map["envName"] = self.envName!
            }
            if self.envType != nil {
                map["envType"] = self.envType!
            }
            if self.envUID != nil {
                map["envUID"] = self.envUID!
            }
            if self.instanceStatus != nil {
                map["instanceStatus"] = self.instanceStatus!
            }
            if self.oldProductVersion != nil {
                map["oldProductVersion"] = self.oldProductVersion!
            }
            if self.oldProductVersionUID != nil {
                map["oldProductVersionUID"] = self.oldProductVersionUID!
            }
            if self.platformStatus != nil {
                map["platformStatus"] = self.platformStatus!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.productUID != nil {
                map["productUID"] = self.productUID!
            }
            if self.productVersion != nil {
                map["productVersion"] = self.productVersion!
            }
            if self.productVersionUID != nil {
                map["productVersionUID"] = self.productVersionUID!
            }
            if self.provider != nil {
                map["provider"] = self.provider!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            if self.vendorConfig != nil {
                map["vendorConfig"] = self.vendorConfig!
            }
            if self.vendorType != nil {
                map["vendorType"] = self.vendorType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("envName") && dict["envName"] != nil {
                self.envName = dict["envName"] as! String
            }
            if dict.keys.contains("envType") && dict["envType"] != nil {
                self.envType = dict["envType"] as! String
            }
            if dict.keys.contains("envUID") && dict["envUID"] != nil {
                self.envUID = dict["envUID"] as! String
            }
            if dict.keys.contains("instanceStatus") && dict["instanceStatus"] != nil {
                self.instanceStatus = dict["instanceStatus"] as! String
            }
            if dict.keys.contains("oldProductVersion") && dict["oldProductVersion"] != nil {
                self.oldProductVersion = dict["oldProductVersion"] as! String
            }
            if dict.keys.contains("oldProductVersionUID") && dict["oldProductVersionUID"] != nil {
                self.oldProductVersionUID = dict["oldProductVersionUID"] as! String
            }
            if dict.keys.contains("platformStatus") && dict["platformStatus"] != nil {
                self.platformStatus = dict["platformStatus"] as! String
            }
            if dict.keys.contains("productName") && dict["productName"] != nil {
                self.productName = dict["productName"] as! String
            }
            if dict.keys.contains("productUID") && dict["productUID"] != nil {
                self.productUID = dict["productUID"] as! String
            }
            if dict.keys.contains("productVersion") && dict["productVersion"] != nil {
                self.productVersion = dict["productVersion"] as! String
            }
            if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                self.productVersionUID = dict["productVersionUID"] as! String
            }
            if dict.keys.contains("provider") && dict["provider"] != nil {
                self.provider = dict["provider"] as! String
            }
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
            if dict.keys.contains("vendorConfig") && dict["vendorConfig"] != nil {
                self.vendorConfig = dict["vendorConfig"] as! String
            }
            if dict.keys.contains("vendorType") && dict["vendorType"] != nil {
                self.vendorType = dict["vendorType"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListProductEnvironmentsResponseBody.Data]?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [ListProductEnvironmentsResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListProductEnvironmentsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListProductEnvironmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductEnvironmentsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListProductEnvironmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductFoundationReferencesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var foundationReferenceUID: String?

        public var foundationVersion: String?

        public var foundationVersionName: String?

        public var foundationVersionType: String?

        public var foundationVersionUID: String?

        public var productVersionUID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.foundationReferenceUID != nil {
                map["foundationReferenceUID"] = self.foundationReferenceUID!
            }
            if self.foundationVersion != nil {
                map["foundationVersion"] = self.foundationVersion!
            }
            if self.foundationVersionName != nil {
                map["foundationVersionName"] = self.foundationVersionName!
            }
            if self.foundationVersionType != nil {
                map["foundationVersionType"] = self.foundationVersionType!
            }
            if self.foundationVersionUID != nil {
                map["foundationVersionUID"] = self.foundationVersionUID!
            }
            if self.productVersionUID != nil {
                map["productVersionUID"] = self.productVersionUID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("foundationReferenceUID") && dict["foundationReferenceUID"] != nil {
                self.foundationReferenceUID = dict["foundationReferenceUID"] as! String
            }
            if dict.keys.contains("foundationVersion") && dict["foundationVersion"] != nil {
                self.foundationVersion = dict["foundationVersion"] as! String
            }
            if dict.keys.contains("foundationVersionName") && dict["foundationVersionName"] != nil {
                self.foundationVersionName = dict["foundationVersionName"] as! String
            }
            if dict.keys.contains("foundationVersionType") && dict["foundationVersionType"] != nil {
                self.foundationVersionType = dict["foundationVersionType"] as! String
            }
            if dict.keys.contains("foundationVersionUID") && dict["foundationVersionUID"] != nil {
                self.foundationVersionUID = dict["foundationVersionUID"] as! String
            }
            if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                self.productVersionUID = dict["productVersionUID"] as! String
            }
        }
    }
    public var code: String?

    public var data: [ListProductFoundationReferencesResponseBody.Data]?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [ListProductFoundationReferencesResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListProductFoundationReferencesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListProductFoundationReferencesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductFoundationReferencesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListProductFoundationReferencesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductInstanceConfigsRequest : Tea.TeaModel {
    public var componentReleaseName: String?

    public var environmentUID: String?

    public var fuzzy: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var paramType: String?

    public var parameter: String?

    public var productVersionUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentReleaseName != nil {
            map["componentReleaseName"] = self.componentReleaseName!
        }
        if self.environmentUID != nil {
            map["environmentUID"] = self.environmentUID!
        }
        if self.fuzzy != nil {
            map["fuzzy"] = self.fuzzy!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.paramType != nil {
            map["paramType"] = self.paramType!
        }
        if self.parameter != nil {
            map["parameter"] = self.parameter!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("componentReleaseName") && dict["componentReleaseName"] != nil {
            self.componentReleaseName = dict["componentReleaseName"] as! String
        }
        if dict.keys.contains("environmentUID") && dict["environmentUID"] != nil {
            self.environmentUID = dict["environmentUID"] as! String
        }
        if dict.keys.contains("fuzzy") && dict["fuzzy"] != nil {
            self.fuzzy = dict["fuzzy"] as! String
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("paramType") && dict["paramType"] != nil {
            self.paramType = dict["paramType"] as! String
        }
        if dict.keys.contains("parameter") && dict["parameter"] != nil {
            self.parameter = dict["parameter"] as! String
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
    }
}

public class ListProductInstanceConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var componentName: String?

            public var componentReleaseName: String?

            public var componentUID: String?

            public var componentVersionUID: String?

            public var createdAt: String?

            public var description_: String?

            public var envUID: String?

            public var name: String?

            public var parentComponentName: String?

            public var parentComponentReleaseName: String?

            public var parentComponentVersionUID: String?

            public var productName: String?

            public var productVersion: String?

            public var productVersionUID: String?

            public var uid: String?

            public var value: String?

            public var valueType: String?

            public var vendorType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.componentName != nil {
                    map["componentName"] = self.componentName!
                }
                if self.componentReleaseName != nil {
                    map["componentReleaseName"] = self.componentReleaseName!
                }
                if self.componentUID != nil {
                    map["componentUID"] = self.componentUID!
                }
                if self.componentVersionUID != nil {
                    map["componentVersionUID"] = self.componentVersionUID!
                }
                if self.createdAt != nil {
                    map["createdAt"] = self.createdAt!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.envUID != nil {
                    map["envUID"] = self.envUID!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.parentComponentName != nil {
                    map["parentComponentName"] = self.parentComponentName!
                }
                if self.parentComponentReleaseName != nil {
                    map["parentComponentReleaseName"] = self.parentComponentReleaseName!
                }
                if self.parentComponentVersionUID != nil {
                    map["parentComponentVersionUID"] = self.parentComponentVersionUID!
                }
                if self.productName != nil {
                    map["productName"] = self.productName!
                }
                if self.productVersion != nil {
                    map["productVersion"] = self.productVersion!
                }
                if self.productVersionUID != nil {
                    map["productVersionUID"] = self.productVersionUID!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                if self.valueType != nil {
                    map["valueType"] = self.valueType!
                }
                if self.vendorType != nil {
                    map["vendorType"] = self.vendorType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("componentName") && dict["componentName"] != nil {
                    self.componentName = dict["componentName"] as! String
                }
                if dict.keys.contains("componentReleaseName") && dict["componentReleaseName"] != nil {
                    self.componentReleaseName = dict["componentReleaseName"] as! String
                }
                if dict.keys.contains("componentUID") && dict["componentUID"] != nil {
                    self.componentUID = dict["componentUID"] as! String
                }
                if dict.keys.contains("componentVersionUID") && dict["componentVersionUID"] != nil {
                    self.componentVersionUID = dict["componentVersionUID"] as! String
                }
                if dict.keys.contains("createdAt") && dict["createdAt"] != nil {
                    self.createdAt = dict["createdAt"] as! String
                }
                if dict.keys.contains("description") && dict["description"] != nil {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("envUID") && dict["envUID"] != nil {
                    self.envUID = dict["envUID"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("parentComponentName") && dict["parentComponentName"] != nil {
                    self.parentComponentName = dict["parentComponentName"] as! String
                }
                if dict.keys.contains("parentComponentReleaseName") && dict["parentComponentReleaseName"] != nil {
                    self.parentComponentReleaseName = dict["parentComponentReleaseName"] as! String
                }
                if dict.keys.contains("parentComponentVersionUID") && dict["parentComponentVersionUID"] != nil {
                    self.parentComponentVersionUID = dict["parentComponentVersionUID"] as! String
                }
                if dict.keys.contains("productName") && dict["productName"] != nil {
                    self.productName = dict["productName"] as! String
                }
                if dict.keys.contains("productVersion") && dict["productVersion"] != nil {
                    self.productVersion = dict["productVersion"] as! String
                }
                if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                    self.productVersionUID = dict["productVersionUID"] as! String
                }
                if dict.keys.contains("uid") && dict["uid"] != nil {
                    self.uid = dict["uid"] as! String
                }
                if dict.keys.contains("value") && dict["value"] != nil {
                    self.value = dict["value"] as! String
                }
                if dict.keys.contains("valueType") && dict["valueType"] != nil {
                    self.valueType = dict["valueType"] as! String
                }
                if dict.keys.contains("vendorType") && dict["vendorType"] != nil {
                    self.vendorType = dict["vendorType"] as! String
                }
            }
        }
        public var list: [ListProductInstanceConfigsResponseBody.Data.List]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ListProductInstanceConfigsResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListProductInstanceConfigsResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListProductInstanceConfigsResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListProductInstanceConfigsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListProductInstanceConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductInstanceConfigsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListProductInstanceConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductInstancesRequest : Tea.TeaModel {
    public class Options : Tea.TeaModel {
        public var filterWithSpecUID: Bool?

        public var specUID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.filterWithSpecUID != nil {
                map["filterWithSpecUID"] = self.filterWithSpecUID!
            }
            if self.specUID != nil {
                map["specUID"] = self.specUID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("filterWithSpecUID") && dict["filterWithSpecUID"] != nil {
                self.filterWithSpecUID = dict["filterWithSpecUID"] as! Bool
            }
            if dict.keys.contains("specUID") && dict["specUID"] != nil {
                self.specUID = dict["specUID"] as! String
            }
        }
    }
    public var envUID: String?

    public var options: ListProductInstancesRequest.Options?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productVersionUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.options?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.envUID != nil {
            map["envUID"] = self.envUID!
        }
        if self.options != nil {
            map["options"] = self.options?.toMap()
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("envUID") && dict["envUID"] != nil {
            self.envUID = dict["envUID"] as! String
        }
        if dict.keys.contains("options") && dict["options"] != nil {
            var model = ListProductInstancesRequest.Options()
            model.fromMap(dict["options"] as! [String: Any])
            self.options = model
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
    }
}

public class ListProductInstancesShrinkRequest : Tea.TeaModel {
    public var envUID: String?

    public var optionsShrink: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var productVersionUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.envUID != nil {
            map["envUID"] = self.envUID!
        }
        if self.optionsShrink != nil {
            map["options"] = self.optionsShrink!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("envUID") && dict["envUID"] != nil {
            self.envUID = dict["envUID"] as! String
        }
        if dict.keys.contains("options") && dict["options"] != nil {
            self.optionsShrink = dict["options"] as! String
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
    }
}

public class ListProductInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var clusterUID: String?

            public var continuousDeployment: Bool?

            public var namespace: String?

            public var productName: String?

            public var productUID: String?

            public var productVersion: String?

            public var productVersionSpecUID: String?

            public var productVersionUID: String?

            public var status: String?

            public var timeout: Int64?

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
                if self.clusterUID != nil {
                    map["clusterUID"] = self.clusterUID!
                }
                if self.continuousDeployment != nil {
                    map["continuousDeployment"] = self.continuousDeployment!
                }
                if self.namespace != nil {
                    map["namespace"] = self.namespace!
                }
                if self.productName != nil {
                    map["productName"] = self.productName!
                }
                if self.productUID != nil {
                    map["productUID"] = self.productUID!
                }
                if self.productVersion != nil {
                    map["productVersion"] = self.productVersion!
                }
                if self.productVersionSpecUID != nil {
                    map["productVersionSpecUID"] = self.productVersionSpecUID!
                }
                if self.productVersionUID != nil {
                    map["productVersionUID"] = self.productVersionUID!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                if self.timeout != nil {
                    map["timeout"] = self.timeout!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("clusterUID") && dict["clusterUID"] != nil {
                    self.clusterUID = dict["clusterUID"] as! String
                }
                if dict.keys.contains("continuousDeployment") && dict["continuousDeployment"] != nil {
                    self.continuousDeployment = dict["continuousDeployment"] as! Bool
                }
                if dict.keys.contains("namespace") && dict["namespace"] != nil {
                    self.namespace = dict["namespace"] as! String
                }
                if dict.keys.contains("productName") && dict["productName"] != nil {
                    self.productName = dict["productName"] as! String
                }
                if dict.keys.contains("productUID") && dict["productUID"] != nil {
                    self.productUID = dict["productUID"] as! String
                }
                if dict.keys.contains("productVersion") && dict["productVersion"] != nil {
                    self.productVersion = dict["productVersion"] as! String
                }
                if dict.keys.contains("productVersionSpecUID") && dict["productVersionSpecUID"] != nil {
                    self.productVersionSpecUID = dict["productVersionSpecUID"] as! String
                }
                if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                    self.productVersionUID = dict["productVersionUID"] as! String
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! String
                }
                if dict.keys.contains("timeout") && dict["timeout"] != nil {
                    self.timeout = dict["timeout"] as! Int64
                }
                if dict.keys.contains("uid") && dict["uid"] != nil {
                    self.uid = dict["uid"] as! String
                }
            }
        }
        public var list: [ListProductInstancesResponseBody.Data.List]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ListProductInstancesResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListProductInstancesResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListProductInstancesResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListProductInstancesResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListProductInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductInstancesResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListProductInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductVersionConfigsRequest : Tea.TeaModel {
    public var componentReleaseName: String?

    public var configType: String?

    public var fuzzy: String?

    public var pageNum: String?

    public var pageSize: String?

    public var parameter: String?

    public var scope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentReleaseName != nil {
            map["componentReleaseName"] = self.componentReleaseName!
        }
        if self.configType != nil {
            map["configType"] = self.configType!
        }
        if self.fuzzy != nil {
            map["fuzzy"] = self.fuzzy!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.parameter != nil {
            map["parameter"] = self.parameter!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("componentReleaseName") && dict["componentReleaseName"] != nil {
            self.componentReleaseName = dict["componentReleaseName"] as! String
        }
        if dict.keys.contains("configType") && dict["configType"] != nil {
            self.configType = dict["configType"] as! String
        }
        if dict.keys.contains("fuzzy") && dict["fuzzy"] != nil {
            self.fuzzy = dict["fuzzy"] as! String
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! String
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("parameter") && dict["parameter"] != nil {
            self.parameter = dict["parameter"] as! String
        }
        if dict.keys.contains("scope") && dict["scope"] != nil {
            self.scope = dict["scope"] as! String
        }
    }
}

public class ListProductVersionConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var componentName: String?

            public var componentReleaseName: String?

            public var componentVersionUID: String?

            public var description_: String?

            public var name: String?

            public var parentComponentName: String?

            public var parentComponentReleaseName: String?

            public var parentComponentVersionUID: String?

            public var productVersionUID: String?

            public var scope: String?

            public var uid: String?

            public var value: String?

            public var valueType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.componentName != nil {
                    map["componentName"] = self.componentName!
                }
                if self.componentReleaseName != nil {
                    map["componentReleaseName"] = self.componentReleaseName!
                }
                if self.componentVersionUID != nil {
                    map["componentVersionUID"] = self.componentVersionUID!
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.parentComponentName != nil {
                    map["parentComponentName"] = self.parentComponentName!
                }
                if self.parentComponentReleaseName != nil {
                    map["parentComponentReleaseName"] = self.parentComponentReleaseName!
                }
                if self.parentComponentVersionUID != nil {
                    map["parentComponentVersionUID"] = self.parentComponentVersionUID!
                }
                if self.productVersionUID != nil {
                    map["productVersionUID"] = self.productVersionUID!
                }
                if self.scope != nil {
                    map["scope"] = self.scope!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                if self.valueType != nil {
                    map["valueType"] = self.valueType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("componentName") && dict["componentName"] != nil {
                    self.componentName = dict["componentName"] as! String
                }
                if dict.keys.contains("componentReleaseName") && dict["componentReleaseName"] != nil {
                    self.componentReleaseName = dict["componentReleaseName"] as! String
                }
                if dict.keys.contains("componentVersionUID") && dict["componentVersionUID"] != nil {
                    self.componentVersionUID = dict["componentVersionUID"] as! String
                }
                if dict.keys.contains("description") && dict["description"] != nil {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("parentComponentName") && dict["parentComponentName"] != nil {
                    self.parentComponentName = dict["parentComponentName"] as! String
                }
                if dict.keys.contains("parentComponentReleaseName") && dict["parentComponentReleaseName"] != nil {
                    self.parentComponentReleaseName = dict["parentComponentReleaseName"] as! String
                }
                if dict.keys.contains("parentComponentVersionUID") && dict["parentComponentVersionUID"] != nil {
                    self.parentComponentVersionUID = dict["parentComponentVersionUID"] as! String
                }
                if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                    self.productVersionUID = dict["productVersionUID"] as! String
                }
                if dict.keys.contains("scope") && dict["scope"] != nil {
                    self.scope = dict["scope"] as! String
                }
                if dict.keys.contains("uid") && dict["uid"] != nil {
                    self.uid = dict["uid"] as! String
                }
                if dict.keys.contains("value") && dict["value"] != nil {
                    self.value = dict["value"] as! String
                }
                if dict.keys.contains("valueType") && dict["valueType"] != nil {
                    self.valueType = dict["valueType"] as! String
                }
            }
        }
        public var list: [ListProductVersionConfigsResponseBody.Data.List]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ListProductVersionConfigsResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListProductVersionConfigsResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListProductVersionConfigsResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListProductVersionConfigsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListProductVersionConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductVersionConfigsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListProductVersionConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductVersionsRequest : Tea.TeaModel {
    public class Platforms : Tea.TeaModel {
        public var architecture: String?

        public var os: String?

        public override init() {
            super.init()
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
                map["architecture"] = self.architecture!
            }
            if self.os != nil {
                map["os"] = self.os!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("architecture") && dict["architecture"] != nil {
                self.architecture = dict["architecture"] as! String
            }
            if dict.keys.contains("os") && dict["os"] != nil {
                self.os = dict["os"] as! String
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
        }
    }
    public var fuzzy: String?

    public var pageNum: String?

    public var pageSize: String?

    public var platforms: [ListProductVersionsRequest.Platforms]?

    public var productName: String?

    public var productUID: String?

    public var released: Bool?

    public var supportedFoundationTypes: [String]?

    public var tag: ListProductVersionsRequest.Tag?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tag?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fuzzy != nil {
            map["fuzzy"] = self.fuzzy!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.platforms != nil {
            var tmp : [Any] = []
            for k in self.platforms! {
                tmp.append(k.toMap())
            }
            map["platforms"] = tmp
        }
        if self.productName != nil {
            map["productName"] = self.productName!
        }
        if self.productUID != nil {
            map["productUID"] = self.productUID!
        }
        if self.released != nil {
            map["released"] = self.released!
        }
        if self.supportedFoundationTypes != nil {
            map["supportedFoundationTypes"] = self.supportedFoundationTypes!
        }
        if self.tag != nil {
            map["tag"] = self.tag?.toMap()
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fuzzy") && dict["fuzzy"] != nil {
            self.fuzzy = dict["fuzzy"] as! String
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! String
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("platforms") && dict["platforms"] != nil {
            var tmp : [ListProductVersionsRequest.Platforms] = []
            for v in dict["platforms"] as! [Any] {
                var model = ListProductVersionsRequest.Platforms()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.platforms = tmp
        }
        if dict.keys.contains("productName") && dict["productName"] != nil {
            self.productName = dict["productName"] as! String
        }
        if dict.keys.contains("productUID") && dict["productUID"] != nil {
            self.productUID = dict["productUID"] as! String
        }
        if dict.keys.contains("released") && dict["released"] != nil {
            self.released = dict["released"] as! Bool
        }
        if dict.keys.contains("supportedFoundationTypes") && dict["supportedFoundationTypes"] != nil {
            self.supportedFoundationTypes = dict["supportedFoundationTypes"] as! [String]
        }
        if dict.keys.contains("tag") && dict["tag"] != nil {
            var model = ListProductVersionsRequest.Tag()
            model.fromMap(dict["tag"] as! [String: Any])
            self.tag = model
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class ListProductVersionsShrinkRequest : Tea.TeaModel {
    public var fuzzy: String?

    public var pageNum: String?

    public var pageSize: String?

    public var platformsShrink: String?

    public var productName: String?

    public var productUID: String?

    public var released: Bool?

    public var supportedFoundationTypesShrink: String?

    public var tagShrink: String?

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
        if self.fuzzy != nil {
            map["fuzzy"] = self.fuzzy!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.platformsShrink != nil {
            map["platforms"] = self.platformsShrink!
        }
        if self.productName != nil {
            map["productName"] = self.productName!
        }
        if self.productUID != nil {
            map["productUID"] = self.productUID!
        }
        if self.released != nil {
            map["released"] = self.released!
        }
        if self.supportedFoundationTypesShrink != nil {
            map["supportedFoundationTypes"] = self.supportedFoundationTypesShrink!
        }
        if self.tagShrink != nil {
            map["tag"] = self.tagShrink!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("fuzzy") && dict["fuzzy"] != nil {
            self.fuzzy = dict["fuzzy"] as! String
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! String
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("platforms") && dict["platforms"] != nil {
            self.platformsShrink = dict["platforms"] as! String
        }
        if dict.keys.contains("productName") && dict["productName"] != nil {
            self.productName = dict["productName"] as! String
        }
        if dict.keys.contains("productUID") && dict["productUID"] != nil {
            self.productUID = dict["productUID"] as! String
        }
        if dict.keys.contains("released") && dict["released"] != nil {
            self.released = dict["released"] as! Bool
        }
        if dict.keys.contains("supportedFoundationTypes") && dict["supportedFoundationTypes"] != nil {
            self.supportedFoundationTypesShrink = dict["supportedFoundationTypes"] as! String
        }
        if dict.keys.contains("tag") && dict["tag"] != nil {
            self.tagShrink = dict["tag"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class ListProductVersionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class Annotations : Tea.TeaModel {
                public var additionalProp1: String?

                public var additionalProp2: String?

                public var additionalProp3: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.additionalProp1 != nil {
                        map["additionalProp1"] = self.additionalProp1!
                    }
                    if self.additionalProp2 != nil {
                        map["additionalProp2"] = self.additionalProp2!
                    }
                    if self.additionalProp3 != nil {
                        map["additionalProp3"] = self.additionalProp3!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("additionalProp1") && dict["additionalProp1"] != nil {
                        self.additionalProp1 = dict["additionalProp1"] as! String
                    }
                    if dict.keys.contains("additionalProp2") && dict["additionalProp2"] != nil {
                        self.additionalProp2 = dict["additionalProp2"] as! String
                    }
                    if dict.keys.contains("additionalProp3") && dict["additionalProp3"] != nil {
                        self.additionalProp3 = dict["additionalProp3"] as! String
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
                        map["key"] = self.key!
                    }
                    if self.value != nil {
                        map["value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("key") && dict["key"] != nil {
                        self.key = dict["key"] as! String
                    }
                    if dict.keys.contains("value") && dict["value"] != nil {
                        self.value = dict["value"] as! String
                    }
                }
            }
            public var annotations: ListProductVersionsResponseBody.Data.List.Annotations?

            public var description_: String?

            public var packageURL: String?

            public var productName: String?

            public var productUID: String?

            public var provider: String?

            public var releasedAt: String?

            public var tags: [ListProductVersionsResponseBody.Data.List.Tags]?

            public var uid: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.annotations?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.annotations != nil {
                    map["annotations"] = self.annotations?.toMap()
                }
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.packageURL != nil {
                    map["packageURL"] = self.packageURL!
                }
                if self.productName != nil {
                    map["productName"] = self.productName!
                }
                if self.productUID != nil {
                    map["productUID"] = self.productUID!
                }
                if self.provider != nil {
                    map["provider"] = self.provider!
                }
                if self.releasedAt != nil {
                    map["releasedAt"] = self.releasedAt!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["tags"] = tmp
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                if self.version != nil {
                    map["version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("annotations") && dict["annotations"] != nil {
                    var model = ListProductVersionsResponseBody.Data.List.Annotations()
                    model.fromMap(dict["annotations"] as! [String: Any])
                    self.annotations = model
                }
                if dict.keys.contains("description") && dict["description"] != nil {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("packageURL") && dict["packageURL"] != nil {
                    self.packageURL = dict["packageURL"] as! String
                }
                if dict.keys.contains("productName") && dict["productName"] != nil {
                    self.productName = dict["productName"] as! String
                }
                if dict.keys.contains("productUID") && dict["productUID"] != nil {
                    self.productUID = dict["productUID"] as! String
                }
                if dict.keys.contains("provider") && dict["provider"] != nil {
                    self.provider = dict["provider"] as! String
                }
                if dict.keys.contains("releasedAt") && dict["releasedAt"] != nil {
                    self.releasedAt = dict["releasedAt"] as! String
                }
                if dict.keys.contains("tags") && dict["tags"] != nil {
                    var tmp : [ListProductVersionsResponseBody.Data.List.Tags] = []
                    for v in dict["tags"] as! [Any] {
                        var model = ListProductVersionsResponseBody.Data.List.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("uid") && dict["uid"] != nil {
                    self.uid = dict["uid"] as! String
                }
                if dict.keys.contains("version") && dict["version"] != nil {
                    self.version = dict["version"] as! String
                }
            }
        }
        public var list: [ListProductVersionsResponseBody.Data.List]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ListProductVersionsResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListProductVersionsResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListProductVersionsResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListProductVersionsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListProductVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductVersionsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListProductVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProductsRequest : Tea.TeaModel {
    public var description_: String?

    public var fuzzy: String?

    public var name: String?

    public var pageNum: Int32?

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
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.fuzzy != nil {
            map["fuzzy"] = self.fuzzy!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("fuzzy") && dict["fuzzy"] != nil {
            self.fuzzy = dict["fuzzy"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListProductsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var description_: String?

            public var name: String?

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
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("description") && dict["description"] != nil {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("uid") && dict["uid"] != nil {
                    self.uid = dict["uid"] as! String
                }
            }
        }
        public var list: [ListProductsResponseBody.Data.List]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ListProductsResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ListProductsResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int32
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int32
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ListProductsResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListProductsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListProductsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListProductsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWorkflowTaskLogsRequest : Tea.TeaModel {
    public var filterValues: [String]?

    public var orderType: String?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var workflowType: String?

    public var xuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterValues != nil {
            map["filterValues"] = self.filterValues!
        }
        if self.orderType != nil {
            map["orderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.workflowType != nil {
            map["workflowType"] = self.workflowType!
        }
        if self.xuid != nil {
            map["xuid"] = self.xuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filterValues") && dict["filterValues"] != nil {
            self.filterValues = dict["filterValues"] as! [String]
        }
        if dict.keys.contains("orderType") && dict["orderType"] != nil {
            self.orderType = dict["orderType"] as! String
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int64
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("workflowType") && dict["workflowType"] != nil {
            self.workflowType = dict["workflowType"] as! String
        }
        if dict.keys.contains("xuid") && dict["xuid"] != nil {
            self.xuid = dict["xuid"] as! String
        }
    }
}

public class ListWorkflowTaskLogsShrinkRequest : Tea.TeaModel {
    public var filterValuesShrink: String?

    public var orderType: String?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var workflowType: String?

    public var xuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterValuesShrink != nil {
            map["filterValues"] = self.filterValuesShrink!
        }
        if self.orderType != nil {
            map["orderType"] = self.orderType!
        }
        if self.pageNum != nil {
            map["pageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.workflowType != nil {
            map["workflowType"] = self.workflowType!
        }
        if self.xuid != nil {
            map["xuid"] = self.xuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filterValues") && dict["filterValues"] != nil {
            self.filterValuesShrink = dict["filterValues"] as! String
        }
        if dict.keys.contains("orderType") && dict["orderType"] != nil {
            self.orderType = dict["orderType"] as! String
        }
        if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
            self.pageNum = dict["pageNum"] as! Int64
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int64
        }
        if dict.keys.contains("workflowType") && dict["workflowType"] != nil {
            self.workflowType = dict["workflowType"] as! String
        }
        if dict.keys.contains("xuid") && dict["xuid"] != nil {
            self.xuid = dict["xuid"] as! String
        }
    }
}

public class ListWorkflowTaskLogsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var list: [String]?

        public var pageNum: Int64?

        public var pageSize: Int64?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                map["list"] = self.list!
            }
            if self.pageNum != nil {
                map["pageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                self.list = dict["list"] as! [String]
            }
            if dict.keys.contains("pageNum") && dict["pageNum"] != nil {
                self.pageNum = dict["pageNum"] as! Int64
            }
            if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: ListWorkflowTaskLogsResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ListWorkflowTaskLogsResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ListWorkflowTaskLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkflowTaskLogsResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListWorkflowTaskLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutEnvironmentTunnelRequest : Tea.TeaModel {
    public class TunnelConfig : Tea.TeaModel {
        public var hostname: String?

        public var password: String?

        public var regionId: String?

        public var sshPort: Int32?

        public var username: String?

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
            if self.hostname != nil {
                map["hostname"] = self.hostname!
            }
            if self.password != nil {
                map["password"] = self.password!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.sshPort != nil {
                map["sshPort"] = self.sshPort!
            }
            if self.username != nil {
                map["username"] = self.username!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("hostname") && dict["hostname"] != nil {
                self.hostname = dict["hostname"] as! String
            }
            if dict.keys.contains("password") && dict["password"] != nil {
                self.password = dict["password"] as! String
            }
            if dict.keys.contains("regionId") && dict["regionId"] != nil {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("sshPort") && dict["sshPort"] != nil {
                self.sshPort = dict["sshPort"] as! Int32
            }
            if dict.keys.contains("username") && dict["username"] != nil {
                self.username = dict["username"] as! String
            }
            if dict.keys.contains("vpcId") && dict["vpcId"] != nil {
                self.vpcId = dict["vpcId"] as! String
            }
        }
    }
    public var tunnelConfig: PutEnvironmentTunnelRequest.TunnelConfig?

    public var tunnelType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tunnelConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tunnelConfig != nil {
            map["tunnelConfig"] = self.tunnelConfig?.toMap()
        }
        if self.tunnelType != nil {
            map["tunnelType"] = self.tunnelType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("tunnelConfig") && dict["tunnelConfig"] != nil {
            var model = PutEnvironmentTunnelRequest.TunnelConfig()
            model.fromMap(dict["tunnelConfig"] as! [String: Any])
            self.tunnelConfig = model
        }
        if dict.keys.contains("tunnelType") && dict["tunnelType"] != nil {
            self.tunnelType = dict["tunnelType"] as! String
        }
    }
}

public class PutEnvironmentTunnelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: PutEnvironmentTunnelResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = PutEnvironmentTunnelResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class PutEnvironmentTunnelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutEnvironmentTunnelResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PutEnvironmentTunnelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutProductInstanceConfigRequest : Tea.TeaModel {
    public var componentUID: String?

    public var componentVersionUID: String?

    public var configUID: String?

    public var description_: String?

    public var environmentUID: String?

    public var name: String?

    public var parentComponentName: String?

    public var parentComponentVersionUID: String?

    public var productVersionUID: String?

    public var releaseName: String?

    public var scope: [String]?

    public var value: String?

    public var valueType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentUID != nil {
            map["componentUID"] = self.componentUID!
        }
        if self.componentVersionUID != nil {
            map["componentVersionUID"] = self.componentVersionUID!
        }
        if self.configUID != nil {
            map["configUID"] = self.configUID!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.environmentUID != nil {
            map["environmentUID"] = self.environmentUID!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentComponentName != nil {
            map["parentComponentName"] = self.parentComponentName!
        }
        if self.parentComponentVersionUID != nil {
            map["parentComponentVersionUID"] = self.parentComponentVersionUID!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        if self.releaseName != nil {
            map["releaseName"] = self.releaseName!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        if self.valueType != nil {
            map["valueType"] = self.valueType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("componentUID") && dict["componentUID"] != nil {
            self.componentUID = dict["componentUID"] as! String
        }
        if dict.keys.contains("componentVersionUID") && dict["componentVersionUID"] != nil {
            self.componentVersionUID = dict["componentVersionUID"] as! String
        }
        if dict.keys.contains("configUID") && dict["configUID"] != nil {
            self.configUID = dict["configUID"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("environmentUID") && dict["environmentUID"] != nil {
            self.environmentUID = dict["environmentUID"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parentComponentName") && dict["parentComponentName"] != nil {
            self.parentComponentName = dict["parentComponentName"] as! String
        }
        if dict.keys.contains("parentComponentVersionUID") && dict["parentComponentVersionUID"] != nil {
            self.parentComponentVersionUID = dict["parentComponentVersionUID"] as! String
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
        if dict.keys.contains("releaseName") && dict["releaseName"] != nil {
            self.releaseName = dict["releaseName"] as! String
        }
        if dict.keys.contains("scope") && dict["scope"] != nil {
            self.scope = dict["scope"] as! [String]
        }
        if dict.keys.contains("value") && dict["value"] != nil {
            self.value = dict["value"] as! String
        }
        if dict.keys.contains("valueType") && dict["valueType"] != nil {
            self.valueType = dict["valueType"] as! String
        }
    }
}

public class PutProductInstanceConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uid") && dict["uid"] != nil {
                self.uid = dict["uid"] as! String
            }
        }
    }
    public var code: String?

    public var data: PutProductInstanceConfigResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = PutProductInstanceConfigResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class PutProductInstanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutProductInstanceConfigResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PutProductInstanceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetEnvironmentFoundationReferenceResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class SetEnvironmentFoundationReferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetEnvironmentFoundationReferenceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetEnvironmentFoundationReferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDeliverableRequest : Tea.TeaModel {
    public class Foundation : Tea.TeaModel {
        public var clusterConfig: String?

        public var foundationReferenceUID: String?

        public var foundationVersion: String?

        public var foundationVersionUID: String?

        public var reusable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterConfig != nil {
                map["clusterConfig"] = self.clusterConfig!
            }
            if self.foundationReferenceUID != nil {
                map["foundationReferenceUID"] = self.foundationReferenceUID!
            }
            if self.foundationVersion != nil {
                map["foundationVersion"] = self.foundationVersion!
            }
            if self.foundationVersionUID != nil {
                map["foundationVersionUID"] = self.foundationVersionUID!
            }
            if self.reusable != nil {
                map["reusable"] = self.reusable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("clusterConfig") && dict["clusterConfig"] != nil {
                self.clusterConfig = dict["clusterConfig"] as! String
            }
            if dict.keys.contains("foundationReferenceUID") && dict["foundationReferenceUID"] != nil {
                self.foundationReferenceUID = dict["foundationReferenceUID"] as! String
            }
            if dict.keys.contains("foundationVersion") && dict["foundationVersion"] != nil {
                self.foundationVersion = dict["foundationVersion"] as! String
            }
            if dict.keys.contains("foundationVersionUID") && dict["foundationVersionUID"] != nil {
                self.foundationVersionUID = dict["foundationVersionUID"] as! String
            }
            if dict.keys.contains("reusable") && dict["reusable"] != nil {
                self.reusable = dict["reusable"] as! Bool
            }
        }
    }
    public class Products : Tea.TeaModel {
        public var namespace: String?

        public var productName: String?

        public var productType: String?

        public var productUID: String?

        public var productVersion: String?

        public var productVersionSpecName: String?

        public var productVersionSpecUID: String?

        public var productVersionUID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.productName != nil {
                map["productName"] = self.productName!
            }
            if self.productType != nil {
                map["productType"] = self.productType!
            }
            if self.productUID != nil {
                map["productUID"] = self.productUID!
            }
            if self.productVersion != nil {
                map["productVersion"] = self.productVersion!
            }
            if self.productVersionSpecName != nil {
                map["productVersionSpecName"] = self.productVersionSpecName!
            }
            if self.productVersionSpecUID != nil {
                map["productVersionSpecUID"] = self.productVersionSpecUID!
            }
            if self.productVersionUID != nil {
                map["productVersionUID"] = self.productVersionUID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("namespace") && dict["namespace"] != nil {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("productName") && dict["productName"] != nil {
                self.productName = dict["productName"] as! String
            }
            if dict.keys.contains("productType") && dict["productType"] != nil {
                self.productType = dict["productType"] as! String
            }
            if dict.keys.contains("productUID") && dict["productUID"] != nil {
                self.productUID = dict["productUID"] as! String
            }
            if dict.keys.contains("productVersion") && dict["productVersion"] != nil {
                self.productVersion = dict["productVersion"] as! String
            }
            if dict.keys.contains("productVersionSpecName") && dict["productVersionSpecName"] != nil {
                self.productVersionSpecName = dict["productVersionSpecName"] as! String
            }
            if dict.keys.contains("productVersionSpecUID") && dict["productVersionSpecUID"] != nil {
                self.productVersionSpecUID = dict["productVersionSpecUID"] as! String
            }
            if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
                self.productVersionUID = dict["productVersionUID"] as! String
            }
        }
    }
    public var foundation: UpdateDeliverableRequest.Foundation?

    public var products: [UpdateDeliverableRequest.Products]?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.foundation?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.foundation != nil {
            map["foundation"] = self.foundation?.toMap()
        }
        if self.products != nil {
            var tmp : [Any] = []
            for k in self.products! {
                tmp.append(k.toMap())
            }
            map["products"] = tmp
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("foundation") && dict["foundation"] != nil {
            var model = UpdateDeliverableRequest.Foundation()
            model.fromMap(dict["foundation"] as! [String: Any])
            self.foundation = model
        }
        if dict.keys.contains("products") && dict["products"] != nil {
            var tmp : [UpdateDeliverableRequest.Products] = []
            for v in dict["products"] as! [Any] {
                var model = UpdateDeliverableRequest.Products()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.products = tmp
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
    }
}

public class UpdateDeliverableResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class UpdateDeliverableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeliverableResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateDeliverableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDeliveryInstanceRequest : Tea.TeaModel {
    public var deliverableConfigUID: String?

    public var deliverableUID: String?

    public var desc: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deliverableConfigUID != nil {
            map["deliverableConfigUID"] = self.deliverableConfigUID!
        }
        if self.deliverableUID != nil {
            map["deliverableUID"] = self.deliverableUID!
        }
        if self.desc != nil {
            map["desc"] = self.desc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("deliverableConfigUID") && dict["deliverableConfigUID"] != nil {
            self.deliverableConfigUID = dict["deliverableConfigUID"] as! String
        }
        if dict.keys.contains("deliverableUID") && dict["deliverableUID"] != nil {
            self.deliverableUID = dict["deliverableUID"] as! String
        }
        if dict.keys.contains("desc") && dict["desc"] != nil {
            self.desc = dict["desc"] as! String
        }
    }
}

public class UpdateDeliveryInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class UpdateDeliveryInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeliveryInstanceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateDeliveryInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEnvironmentRequest : Tea.TeaModel {
    public class AdvancedConfigs : Tea.TeaModel {
        public var enableDeploySimulation: Bool?

        public var enableSiteSurvey: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableDeploySimulation != nil {
                map["enableDeploySimulation"] = self.enableDeploySimulation!
            }
            if self.enableSiteSurvey != nil {
                map["enableSiteSurvey"] = self.enableSiteSurvey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enableDeploySimulation") && dict["enableDeploySimulation"] != nil {
                self.enableDeploySimulation = dict["enableDeploySimulation"] as! Bool
            }
            if dict.keys.contains("enableSiteSurvey") && dict["enableSiteSurvey"] != nil {
                self.enableSiteSurvey = dict["enableSiteSurvey"] as! Bool
            }
        }
    }
    public var advancedConfigs: UpdateEnvironmentRequest.AdvancedConfigs?

    public var description_: String?

    public var location: String?

    public var vendorConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.advancedConfigs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.advancedConfigs != nil {
            map["advancedConfigs"] = self.advancedConfigs?.toMap()
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.location != nil {
            map["location"] = self.location!
        }
        if self.vendorConfig != nil {
            map["vendorConfig"] = self.vendorConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("advancedConfigs") && dict["advancedConfigs"] != nil {
            var model = UpdateEnvironmentRequest.AdvancedConfigs()
            model.fromMap(dict["advancedConfigs"] as! [String: Any])
            self.advancedConfigs = model
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("location") && dict["location"] != nil {
            self.location = dict["location"] as! String
        }
        if dict.keys.contains("vendorConfig") && dict["vendorConfig"] != nil {
            self.vendorConfig = dict["vendorConfig"] as! String
        }
    }
}

public class UpdateEnvironmentResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class UpdateEnvironmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEnvironmentResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateEnvironmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEnvironmentNodeRequest : Tea.TeaModel {
    public class Taints : Tea.TeaModel {
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
                map["effect"] = self.effect!
            }
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("effect") && dict["effect"] != nil {
                self.effect = dict["effect"] as! String
            }
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
        }
    }
    public var applicationDisk: String?

    public var etcdDisk: String?

    public var labels: [String: Any]?

    public var rootPassword: String?

    public var taints: [UpdateEnvironmentNodeRequest.Taints]?

    public var tridentSystemDisk: String?

    public var tridentSystemSizeDisk: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationDisk != nil {
            map["applicationDisk"] = self.applicationDisk!
        }
        if self.etcdDisk != nil {
            map["etcdDisk"] = self.etcdDisk!
        }
        if self.labels != nil {
            map["labels"] = self.labels!
        }
        if self.rootPassword != nil {
            map["rootPassword"] = self.rootPassword!
        }
        if self.taints != nil {
            var tmp : [Any] = []
            for k in self.taints! {
                tmp.append(k.toMap())
            }
            map["taints"] = tmp
        }
        if self.tridentSystemDisk != nil {
            map["tridentSystemDisk"] = self.tridentSystemDisk!
        }
        if self.tridentSystemSizeDisk != nil {
            map["tridentSystemSizeDisk"] = self.tridentSystemSizeDisk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("applicationDisk") && dict["applicationDisk"] != nil {
            self.applicationDisk = dict["applicationDisk"] as! String
        }
        if dict.keys.contains("etcdDisk") && dict["etcdDisk"] != nil {
            self.etcdDisk = dict["etcdDisk"] as! String
        }
        if dict.keys.contains("labels") && dict["labels"] != nil {
            self.labels = dict["labels"] as! [String: Any]
        }
        if dict.keys.contains("rootPassword") && dict["rootPassword"] != nil {
            self.rootPassword = dict["rootPassword"] as! String
        }
        if dict.keys.contains("taints") && dict["taints"] != nil {
            var tmp : [UpdateEnvironmentNodeRequest.Taints] = []
            for v in dict["taints"] as! [Any] {
                var model = UpdateEnvironmentNodeRequest.Taints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taints = tmp
        }
        if dict.keys.contains("tridentSystemDisk") && dict["tridentSystemDisk"] != nil {
            self.tridentSystemDisk = dict["tridentSystemDisk"] as! String
        }
        if dict.keys.contains("tridentSystemSizeDisk") && dict["tridentSystemSizeDisk"] != nil {
            self.tridentSystemSizeDisk = dict["tridentSystemSizeDisk"] as! Int32
        }
    }
}

public class UpdateEnvironmentNodeResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class UpdateEnvironmentNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEnvironmentNodeResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateEnvironmentNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateEnvironmentProductVersionRequest : Tea.TeaModel {
    public var oldProductVersionSpecUID: String?

    public var oldProductVersionUID: String?

    public var productVersionSpecUID: String?

    public var productVersionUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.oldProductVersionSpecUID != nil {
            map["oldProductVersionSpecUID"] = self.oldProductVersionSpecUID!
        }
        if self.oldProductVersionUID != nil {
            map["oldProductVersionUID"] = self.oldProductVersionUID!
        }
        if self.productVersionSpecUID != nil {
            map["productVersionSpecUID"] = self.productVersionSpecUID!
        }
        if self.productVersionUID != nil {
            map["productVersionUID"] = self.productVersionUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("oldProductVersionSpecUID") && dict["oldProductVersionSpecUID"] != nil {
            self.oldProductVersionSpecUID = dict["oldProductVersionSpecUID"] as! String
        }
        if dict.keys.contains("oldProductVersionUID") && dict["oldProductVersionUID"] != nil {
            self.oldProductVersionUID = dict["oldProductVersionUID"] as! String
        }
        if dict.keys.contains("productVersionSpecUID") && dict["productVersionSpecUID"] != nil {
            self.productVersionSpecUID = dict["productVersionSpecUID"] as! String
        }
        if dict.keys.contains("productVersionUID") && dict["productVersionUID"] != nil {
            self.productVersionUID = dict["productVersionUID"] as! String
        }
    }
}

public class UpdateEnvironmentProductVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class UpdateEnvironmentProductVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEnvironmentProductVersionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateEnvironmentProductVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFoundationComponentReferenceRequest : Tea.TeaModel {
    public var componentOrchestrationValues: String?

    public var enable: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentOrchestrationValues != nil {
            map["componentOrchestrationValues"] = self.componentOrchestrationValues!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("componentOrchestrationValues") && dict["componentOrchestrationValues"] != nil {
            self.componentOrchestrationValues = dict["componentOrchestrationValues"] as! String
        }
        if dict.keys.contains("enable") && dict["enable"] != nil {
            self.enable = dict["enable"] as! Bool
        }
    }
}

public class UpdateFoundationComponentReferenceResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class UpdateFoundationComponentReferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFoundationComponentReferenceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateFoundationComponentReferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFoundationReferenceRequest : Tea.TeaModel {
    public var clusterConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterConfig != nil {
            map["clusterConfig"] = self.clusterConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusterConfig") && dict["clusterConfig"] != nil {
            self.clusterConfig = dict["clusterConfig"] as! String
        }
    }
}

public class UpdateFoundationReferenceResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class UpdateFoundationReferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFoundationReferenceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateFoundationReferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProductRequest : Tea.TeaModel {
    public var categories: [String]?

    public var description_: String?

    public var displayName: String?

    public var vendor: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categories != nil {
            map["categories"] = self.categories!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.vendor != nil {
            map["vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("categories") && dict["categories"] != nil {
            self.categories = dict["categories"] as! [String]
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("displayName") && dict["displayName"] != nil {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("vendor") && dict["vendor"] != nil {
            self.vendor = dict["vendor"] as! String
        }
    }
}

public class UpdateProductResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class UpdateProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProductResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateProductResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProductComponentVersionRequest : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public class MultiCluster : Tea.TeaModel {
            public var autoInstall: Bool?

            public var targetClusters: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoInstall != nil {
                    map["autoInstall"] = self.autoInstall!
                }
                if self.targetClusters != nil {
                    map["targetClusters"] = self.targetClusters!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("autoInstall") && dict["autoInstall"] != nil {
                    self.autoInstall = dict["autoInstall"] as! Bool
                }
                if dict.keys.contains("targetClusters") && dict["targetClusters"] != nil {
                    self.targetClusters = dict["targetClusters"] as! [String]
                }
            }
        }
        public var multiCluster: UpdateProductComponentVersionRequest.Policy.MultiCluster?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.multiCluster?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.multiCluster != nil {
                map["multiCluster"] = self.multiCluster?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("multiCluster") && dict["multiCluster"] != nil {
                var model = UpdateProductComponentVersionRequest.Policy.MultiCluster()
                model.fromMap(dict["multiCluster"] as! [String: Any])
                self.multiCluster = model
            }
        }
    }
    public var componentOrchestrationValues: String?

    public var componentSpecificationUid: String?

    public var componentSpecificationValues: String?

    public var enable: Bool?

    public var newComponentVersionUID: String?

    public var policy: UpdateProductComponentVersionRequest.Policy?

    public var releaseName: String?

    public var unsetComponentVersionSpec: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentOrchestrationValues != nil {
            map["componentOrchestrationValues"] = self.componentOrchestrationValues!
        }
        if self.componentSpecificationUid != nil {
            map["componentSpecificationUid"] = self.componentSpecificationUid!
        }
        if self.componentSpecificationValues != nil {
            map["componentSpecificationValues"] = self.componentSpecificationValues!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.newComponentVersionUID != nil {
            map["newComponentVersionUID"] = self.newComponentVersionUID!
        }
        if self.policy != nil {
            map["policy"] = self.policy?.toMap()
        }
        if self.releaseName != nil {
            map["releaseName"] = self.releaseName!
        }
        if self.unsetComponentVersionSpec != nil {
            map["unsetComponentVersionSpec"] = self.unsetComponentVersionSpec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("componentOrchestrationValues") && dict["componentOrchestrationValues"] != nil {
            self.componentOrchestrationValues = dict["componentOrchestrationValues"] as! String
        }
        if dict.keys.contains("componentSpecificationUid") && dict["componentSpecificationUid"] != nil {
            self.componentSpecificationUid = dict["componentSpecificationUid"] as! String
        }
        if dict.keys.contains("componentSpecificationValues") && dict["componentSpecificationValues"] != nil {
            self.componentSpecificationValues = dict["componentSpecificationValues"] as! String
        }
        if dict.keys.contains("enable") && dict["enable"] != nil {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("newComponentVersionUID") && dict["newComponentVersionUID"] != nil {
            self.newComponentVersionUID = dict["newComponentVersionUID"] as! String
        }
        if dict.keys.contains("policy") && dict["policy"] != nil {
            var model = UpdateProductComponentVersionRequest.Policy()
            model.fromMap(dict["policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("releaseName") && dict["releaseName"] != nil {
            self.releaseName = dict["releaseName"] as! String
        }
        if dict.keys.contains("unsetComponentVersionSpec") && dict["unsetComponentVersionSpec"] != nil {
            self.unsetComponentVersionSpec = dict["unsetComponentVersionSpec"] as! Bool
        }
    }
}

public class UpdateProductComponentVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var relationUID: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.relationUID != nil {
                map["relationUID"] = self.relationUID!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("relationUID") && dict["relationUID"] != nil {
                self.relationUID = dict["relationUID"] as! String
            }
        }
    }
    public var code: String?

    public var data: UpdateProductComponentVersionResponseBody.Data?

    public var msg: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = UpdateProductComponentVersionResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class UpdateProductComponentVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProductComponentVersionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateProductComponentVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProductFoundationVersionRequest : Tea.TeaModel {
    public var foundationVersionUID: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.foundationVersionUID != nil {
            map["foundationVersionUID"] = self.foundationVersionUID!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("foundationVersionUID") && dict["foundationVersionUID"] != nil {
            self.foundationVersionUID = dict["foundationVersionUID"] as! String
        }
    }
}

public class UpdateProductFoundationVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class UpdateProductFoundationVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProductFoundationVersionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateProductFoundationVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProductVersionRequest : Tea.TeaModel {
    public var action: String?

    public var continuousIntegration: Bool?

    public var description_: String?

    public var entry: String?

    public var timeout: Int64?

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
        if self.action != nil {
            map["action"] = self.action!
        }
        if self.continuousIntegration != nil {
            map["continuousIntegration"] = self.continuousIntegration!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.entry != nil {
            map["entry"] = self.entry!
        }
        if self.timeout != nil {
            map["timeout"] = self.timeout!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action") && dict["action"] != nil {
            self.action = dict["action"] as! String
        }
        if dict.keys.contains("continuousIntegration") && dict["continuousIntegration"] != nil {
            self.continuousIntegration = dict["continuousIntegration"] as! Bool
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("entry") && dict["entry"] != nil {
            self.entry = dict["entry"] as! String
        }
        if dict.keys.contains("timeout") && dict["timeout"] != nil {
            self.timeout = dict["timeout"] as! Int64
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class UpdateProductVersionResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class UpdateProductVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProductVersionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateProductVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProductVersionConfigRequest : Tea.TeaModel {
    public var componentVersionUID: String?

    public var description_: String?

    public var name: String?

    public var parentComponentVersionUID: String?

    public var value: String?

    public var valueType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentVersionUID != nil {
            map["componentVersionUID"] = self.componentVersionUID!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.parentComponentVersionUID != nil {
            map["parentComponentVersionUID"] = self.parentComponentVersionUID!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        if self.valueType != nil {
            map["valueType"] = self.valueType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("componentVersionUID") && dict["componentVersionUID"] != nil {
            self.componentVersionUID = dict["componentVersionUID"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("parentComponentVersionUID") && dict["parentComponentVersionUID"] != nil {
            self.parentComponentVersionUID = dict["parentComponentVersionUID"] as! String
        }
        if dict.keys.contains("value") && dict["value"] != nil {
            self.value = dict["value"] as! String
        }
        if dict.keys.contains("valueType") && dict["valueType"] != nil {
            self.valueType = dict["valueType"] as! String
        }
    }
}

public class UpdateProductVersionConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

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
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateProductVersionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProductVersionConfigResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateProductVersionConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ValidateEnvironmentTunnelRequest : Tea.TeaModel {
    public class TunnelConfig : Tea.TeaModel {
        public var hostname: String?

        public var password: String?

        public var regionId: String?

        public var sshPort: Int32?

        public var username: String?

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
            if self.hostname != nil {
                map["hostname"] = self.hostname!
            }
            if self.password != nil {
                map["password"] = self.password!
            }
            if self.regionId != nil {
                map["regionId"] = self.regionId!
            }
            if self.sshPort != nil {
                map["sshPort"] = self.sshPort!
            }
            if self.username != nil {
                map["username"] = self.username!
            }
            if self.vpcId != nil {
                map["vpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("hostname") && dict["hostname"] != nil {
                self.hostname = dict["hostname"] as! String
            }
            if dict.keys.contains("password") && dict["password"] != nil {
                self.password = dict["password"] as! String
            }
            if dict.keys.contains("regionId") && dict["regionId"] != nil {
                self.regionId = dict["regionId"] as! String
            }
            if dict.keys.contains("sshPort") && dict["sshPort"] != nil {
                self.sshPort = dict["sshPort"] as! Int32
            }
            if dict.keys.contains("username") && dict["username"] != nil {
                self.username = dict["username"] as! String
            }
            if dict.keys.contains("vpcId") && dict["vpcId"] != nil {
                self.vpcId = dict["vpcId"] as! String
            }
        }
    }
    public var tunnelConfig: ValidateEnvironmentTunnelRequest.TunnelConfig?

    public var tunnelType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tunnelConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tunnelConfig != nil {
            map["tunnelConfig"] = self.tunnelConfig?.toMap()
        }
        if self.tunnelType != nil {
            map["tunnelType"] = self.tunnelType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("tunnelConfig") && dict["tunnelConfig"] != nil {
            var model = ValidateEnvironmentTunnelRequest.TunnelConfig()
            model.fromMap(dict["tunnelConfig"] as! [String: Any])
            self.tunnelConfig = model
        }
        if dict.keys.contains("tunnelType") && dict["tunnelType"] != nil {
            self.tunnelType = dict["tunnelType"] as! String
        }
    }
}

public class ValidateEnvironmentTunnelResponseBody : Tea.TeaModel {
    public var code: String?

    public var msg: String?

    public override init() {
        super.init()
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
            map["code"] = self.code!
        }
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
    }
}

public class ValidateEnvironmentTunnelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateEnvironmentTunnelResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ValidateEnvironmentTunnelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
