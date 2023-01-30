import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Address : Tea.TeaModel {
    public var addressLine: String?

    public var city: String?

    public var country: String?

    public var district: String?

    public var language: String?

    public var province: String?

    public var township: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressLine != nil {
            map["AddressLine"] = self.addressLine!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.district != nil {
            map["District"] = self.district!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.township != nil {
            map["Township"] = self.township!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressLine") {
            self.addressLine = dict["AddressLine"] as! String
        }
        if dict.keys.contains("City") {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("District") {
            self.district = dict["District"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Province") {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("Township") {
            self.township = dict["Township"] as! String
        }
    }
}

public class AddressForStory : Tea.TeaModel {
    public var city: String?

    public var country: String?

    public var district: String?

    public var province: String?

    public var township: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.district != nil {
            map["District"] = self.district!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.township != nil {
            map["Township"] = self.township!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("City") {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Country") {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("District") {
            self.district = dict["District"] as! String
        }
        if dict.keys.contains("Province") {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("Township") {
            self.township = dict["Township"] as! String
        }
    }
}

public class AssumeRoleChain : Tea.TeaModel {
    public var chain: [AssumeRoleChainNode]?

    public var policy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chain != nil {
            var tmp : [Any] = []
            for k in self.chain! {
                tmp.append(k.toMap())
            }
            map["Chain"] = tmp
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Chain") {
            self.chain = dict["Chain"] as! [AssumeRoleChainNode]
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! String
        }
    }
}

public class AssumeRoleChainNode : Tea.TeaModel {
    public var ownerId: String?

    public var role: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class AudioStream : Tea.TeaModel {
    public var bitrate: Int64?

    public var channelLayout: String?

    public var channels: Int64?

    public var codecLongName: String?

    public var codecName: String?

    public var codecTag: String?

    public var codecTagString: String?

    public var codecTimeBase: String?

    public var duration: Double?

    public var frameCount: Int64?

    public var index: Int64?

    public var language: String?

    public var lyric: String?

    public var sampleFormat: String?

    public var sampleRate: Int64?

    public var startTime: Double?

    public var timeBase: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bitrate != nil {
            map["Bitrate"] = self.bitrate!
        }
        if self.channelLayout != nil {
            map["ChannelLayout"] = self.channelLayout!
        }
        if self.channels != nil {
            map["Channels"] = self.channels!
        }
        if self.codecLongName != nil {
            map["CodecLongName"] = self.codecLongName!
        }
        if self.codecName != nil {
            map["CodecName"] = self.codecName!
        }
        if self.codecTag != nil {
            map["CodecTag"] = self.codecTag!
        }
        if self.codecTagString != nil {
            map["CodecTagString"] = self.codecTagString!
        }
        if self.codecTimeBase != nil {
            map["CodecTimeBase"] = self.codecTimeBase!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.frameCount != nil {
            map["FrameCount"] = self.frameCount!
        }
        if self.index != nil {
            map["Index"] = self.index!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.lyric != nil {
            map["Lyric"] = self.lyric!
        }
        if self.sampleFormat != nil {
            map["SampleFormat"] = self.sampleFormat!
        }
        if self.sampleRate != nil {
            map["SampleRate"] = self.sampleRate!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeBase != nil {
            map["TimeBase"] = self.timeBase!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bitrate") {
            self.bitrate = dict["Bitrate"] as! Int64
        }
        if dict.keys.contains("ChannelLayout") {
            self.channelLayout = dict["ChannelLayout"] as! String
        }
        if dict.keys.contains("Channels") {
            self.channels = dict["Channels"] as! Int64
        }
        if dict.keys.contains("CodecLongName") {
            self.codecLongName = dict["CodecLongName"] as! String
        }
        if dict.keys.contains("CodecName") {
            self.codecName = dict["CodecName"] as! String
        }
        if dict.keys.contains("CodecTag") {
            self.codecTag = dict["CodecTag"] as! String
        }
        if dict.keys.contains("CodecTagString") {
            self.codecTagString = dict["CodecTagString"] as! String
        }
        if dict.keys.contains("CodecTimeBase") {
            self.codecTimeBase = dict["CodecTimeBase"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Double
        }
        if dict.keys.contains("FrameCount") {
            self.frameCount = dict["FrameCount"] as! Int64
        }
        if dict.keys.contains("Index") {
            self.index = dict["Index"] as! Int64
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Lyric") {
            self.lyric = dict["Lyric"] as! String
        }
        if dict.keys.contains("SampleFormat") {
            self.sampleFormat = dict["SampleFormat"] as! String
        }
        if dict.keys.contains("SampleRate") {
            self.sampleRate = dict["SampleRate"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Double
        }
        if dict.keys.contains("TimeBase") {
            self.timeBase = dict["TimeBase"] as! String
        }
    }
}

public class Binding : Tea.TeaModel {
    public var createTime: String?

    public var datasetName: String?

    public var detail: String?

    public var phase: String?

    public var projectName: String?

    public var state: String?

    public var URI: String?

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
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Detail") {
            self.detail = dict["Detail"] as! String
        }
        if dict.keys.contains("Phase") {
            self.phase = dict["Phase"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("URI") {
            self.URI = dict["URI"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class Body : Tea.TeaModel {
    public var boundary: Boundary?

    public var confidence: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.boundary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.boundary != nil {
            map["Boundary"] = self.boundary?.toMap()
        }
        if self.confidence != nil {
            map["Confidence"] = self.confidence!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Boundary") {
            var model = Boundary()
            model.fromMap(dict["Boundary"] as! [String: Any])
            self.boundary = model
        }
        if dict.keys.contains("Confidence") {
            self.confidence = dict["Confidence"] as! Double
        }
    }
}

public class Boundary : Tea.TeaModel {
    public var height: Int64?

    public var left_: Int64?

    public var top: Int64?

    public var width: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.left_ != nil {
            map["Left"] = self.left_!
        }
        if self.top != nil {
            map["Top"] = self.top!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Height") {
            self.height = dict["Height"] as! Int64
        }
        if dict.keys.contains("Left") {
            self.left_ = dict["Left"] as! Int64
        }
        if dict.keys.contains("Top") {
            self.top = dict["Top"] as! Int64
        }
        if dict.keys.contains("Width") {
            self.width = dict["Width"] as! Int64
        }
    }
}

public class ClusterForReq : Tea.TeaModel {
    public class Cover : Tea.TeaModel {
        public class Figures : Tea.TeaModel {
            public var figureId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.figureId != nil {
                    map["FigureId"] = self.figureId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FigureId") {
                    self.figureId = dict["FigureId"] as! String
                }
            }
        }
        public var figures: [ClusterForReq.Cover.Figures]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.figures != nil {
                var tmp : [Any] = []
                for k in self.figures! {
                    tmp.append(k.toMap())
                }
                map["Figures"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Figures") {
                self.figures = dict["Figures"] as! [ClusterForReq.Cover.Figures]
            }
        }
    }
    public var cover: ClusterForReq.Cover?

    public var customId: String?

    public var customLabels: [String: Any]?

    public var name: String?

    public var objectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cover?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cover != nil {
            map["Cover"] = self.cover?.toMap()
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cover") {
            var model = ClusterForReq.Cover()
            model.fromMap(dict["Cover"] as! [String: Any])
            self.cover = model
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! [String: Any]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
    }
}

public class Codes : Tea.TeaModel {
    public var boundary: Boundary?

    public var confidence: Double?

    public var content: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.boundary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.boundary != nil {
            map["Boundary"] = self.boundary?.toMap()
        }
        if self.confidence != nil {
            map["Confidence"] = self.confidence!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Boundary") {
            var model = Boundary()
            model.fromMap(dict["Boundary"] as! [String: Any])
            self.boundary = model
        }
        if dict.keys.contains("Confidence") {
            self.confidence = dict["Confidence"] as! Double
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CredentialConfig : Tea.TeaModel {
    public class Chain : Tea.TeaModel {
        public var assumeRoleFor: String?

        public var role: String?

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
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.roleType != nil {
                map["RoleType"] = self.roleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssumeRoleFor") {
                self.assumeRoleFor = dict["AssumeRoleFor"] as! String
            }
            if dict.keys.contains("Role") {
                self.role = dict["Role"] as! String
            }
            if dict.keys.contains("RoleType") {
                self.roleType = dict["RoleType"] as! String
            }
        }
    }
    public var chain: [CredentialConfig.Chain]?

    public var policy: String?

    public var serviceRole: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chain != nil {
            var tmp : [Any] = []
            for k in self.chain! {
                tmp.append(k.toMap())
            }
            map["Chain"] = tmp
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.serviceRole != nil {
            map["ServiceRole"] = self.serviceRole!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Chain") {
            self.chain = dict["Chain"] as! [CredentialConfig.Chain]
        }
        if dict.keys.contains("Policy") {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("ServiceRole") {
            self.serviceRole = dict["ServiceRole"] as! String
        }
    }
}

public class CroppingSuggestion : Tea.TeaModel {
    public var aspectRatio: String?

    public var boundary: Boundary?

    public var confidence: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.boundary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aspectRatio != nil {
            map["AspectRatio"] = self.aspectRatio!
        }
        if self.boundary != nil {
            map["Boundary"] = self.boundary?.toMap()
        }
        if self.confidence != nil {
            map["Confidence"] = self.confidence!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AspectRatio") {
            self.aspectRatio = dict["AspectRatio"] as! String
        }
        if dict.keys.contains("Boundary") {
            var model = Boundary()
            model.fromMap(dict["Boundary"] as! [String: Any])
            self.boundary = model
        }
        if dict.keys.contains("Confidence") {
            self.confidence = dict["Confidence"] as! Double
        }
    }
}

public class Dataset : Tea.TeaModel {
    public var bindCount: Int64?

    public var createTime: String?

    public var datasetMaxBindCount: Int64?

    public var datasetMaxEntityCount: Int64?

    public var datasetMaxFileCount: Int64?

    public var datasetMaxRelationCount: Int64?

    public var datasetMaxTotalFileSize: Int64?

    public var datasetName: String?

    public var description_: String?

    public var fileCount: Int64?

    public var projectName: String?

    public var templateId: String?

    public var totalFileSize: Int64?

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
        if self.bindCount != nil {
            map["BindCount"] = self.bindCount!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.datasetMaxBindCount != nil {
            map["DatasetMaxBindCount"] = self.datasetMaxBindCount!
        }
        if self.datasetMaxEntityCount != nil {
            map["DatasetMaxEntityCount"] = self.datasetMaxEntityCount!
        }
        if self.datasetMaxFileCount != nil {
            map["DatasetMaxFileCount"] = self.datasetMaxFileCount!
        }
        if self.datasetMaxRelationCount != nil {
            map["DatasetMaxRelationCount"] = self.datasetMaxRelationCount!
        }
        if self.datasetMaxTotalFileSize != nil {
            map["DatasetMaxTotalFileSize"] = self.datasetMaxTotalFileSize!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileCount != nil {
            map["FileCount"] = self.fileCount!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.totalFileSize != nil {
            map["TotalFileSize"] = self.totalFileSize!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BindCount") {
            self.bindCount = dict["BindCount"] as! Int64
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DatasetMaxBindCount") {
            self.datasetMaxBindCount = dict["DatasetMaxBindCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxEntityCount") {
            self.datasetMaxEntityCount = dict["DatasetMaxEntityCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxFileCount") {
            self.datasetMaxFileCount = dict["DatasetMaxFileCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxRelationCount") {
            self.datasetMaxRelationCount = dict["DatasetMaxRelationCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxTotalFileSize") {
            self.datasetMaxTotalFileSize = dict["DatasetMaxTotalFileSize"] as! Int64
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileCount") {
            self.fileCount = dict["FileCount"] as! Int64
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TotalFileSize") {
            self.totalFileSize = dict["TotalFileSize"] as! Int64
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class Figure : Tea.TeaModel {
    public var age: Int64?

    public var ageSD: Double?

    public var attractive: Double?

    public var beard: String?

    public var beardConfidence: Double?

    public var boundary: Boundary?

    public var emotion: String?

    public var emotionConfidence: Double?

    public var faceQuality: Double?

    public var figureClusterConfidence: Double?

    public var figureClusterId: String?

    public var figureConfidence: Double?

    public var figureId: String?

    public var figureType: String?

    public var gender: String?

    public var genderConfidence: Double?

    public var glasses: String?

    public var glassesConfidence: Double?

    public var hat: String?

    public var hatConfidence: Double?

    public var headPose: HeadPose?

    public var mask: String?

    public var maskConfidence: Double?

    public var mouth: String?

    public var mouthConfidence: Double?

    public var sharpness: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.boundary?.validate()
        try self.headPose?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.age != nil {
            map["Age"] = self.age!
        }
        if self.ageSD != nil {
            map["AgeSD"] = self.ageSD!
        }
        if self.attractive != nil {
            map["Attractive"] = self.attractive!
        }
        if self.beard != nil {
            map["Beard"] = self.beard!
        }
        if self.beardConfidence != nil {
            map["BeardConfidence"] = self.beardConfidence!
        }
        if self.boundary != nil {
            map["Boundary"] = self.boundary?.toMap()
        }
        if self.emotion != nil {
            map["Emotion"] = self.emotion!
        }
        if self.emotionConfidence != nil {
            map["EmotionConfidence"] = self.emotionConfidence!
        }
        if self.faceQuality != nil {
            map["FaceQuality"] = self.faceQuality!
        }
        if self.figureClusterConfidence != nil {
            map["FigureClusterConfidence"] = self.figureClusterConfidence!
        }
        if self.figureClusterId != nil {
            map["FigureClusterId"] = self.figureClusterId!
        }
        if self.figureConfidence != nil {
            map["FigureConfidence"] = self.figureConfidence!
        }
        if self.figureId != nil {
            map["FigureId"] = self.figureId!
        }
        if self.figureType != nil {
            map["FigureType"] = self.figureType!
        }
        if self.gender != nil {
            map["Gender"] = self.gender!
        }
        if self.genderConfidence != nil {
            map["GenderConfidence"] = self.genderConfidence!
        }
        if self.glasses != nil {
            map["Glasses"] = self.glasses!
        }
        if self.glassesConfidence != nil {
            map["GlassesConfidence"] = self.glassesConfidence!
        }
        if self.hat != nil {
            map["Hat"] = self.hat!
        }
        if self.hatConfidence != nil {
            map["HatConfidence"] = self.hatConfidence!
        }
        if self.headPose != nil {
            map["HeadPose"] = self.headPose?.toMap()
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.maskConfidence != nil {
            map["MaskConfidence"] = self.maskConfidence!
        }
        if self.mouth != nil {
            map["Mouth"] = self.mouth!
        }
        if self.mouthConfidence != nil {
            map["MouthConfidence"] = self.mouthConfidence!
        }
        if self.sharpness != nil {
            map["Sharpness"] = self.sharpness!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Age") {
            self.age = dict["Age"] as! Int64
        }
        if dict.keys.contains("AgeSD") {
            self.ageSD = dict["AgeSD"] as! Double
        }
        if dict.keys.contains("Attractive") {
            self.attractive = dict["Attractive"] as! Double
        }
        if dict.keys.contains("Beard") {
            self.beard = dict["Beard"] as! String
        }
        if dict.keys.contains("BeardConfidence") {
            self.beardConfidence = dict["BeardConfidence"] as! Double
        }
        if dict.keys.contains("Boundary") {
            var model = Boundary()
            model.fromMap(dict["Boundary"] as! [String: Any])
            self.boundary = model
        }
        if dict.keys.contains("Emotion") {
            self.emotion = dict["Emotion"] as! String
        }
        if dict.keys.contains("EmotionConfidence") {
            self.emotionConfidence = dict["EmotionConfidence"] as! Double
        }
        if dict.keys.contains("FaceQuality") {
            self.faceQuality = dict["FaceQuality"] as! Double
        }
        if dict.keys.contains("FigureClusterConfidence") {
            self.figureClusterConfidence = dict["FigureClusterConfidence"] as! Double
        }
        if dict.keys.contains("FigureClusterId") {
            self.figureClusterId = dict["FigureClusterId"] as! String
        }
        if dict.keys.contains("FigureConfidence") {
            self.figureConfidence = dict["FigureConfidence"] as! Double
        }
        if dict.keys.contains("FigureId") {
            self.figureId = dict["FigureId"] as! String
        }
        if dict.keys.contains("FigureType") {
            self.figureType = dict["FigureType"] as! String
        }
        if dict.keys.contains("Gender") {
            self.gender = dict["Gender"] as! String
        }
        if dict.keys.contains("GenderConfidence") {
            self.genderConfidence = dict["GenderConfidence"] as! Double
        }
        if dict.keys.contains("Glasses") {
            self.glasses = dict["Glasses"] as! String
        }
        if dict.keys.contains("GlassesConfidence") {
            self.glassesConfidence = dict["GlassesConfidence"] as! Double
        }
        if dict.keys.contains("Hat") {
            self.hat = dict["Hat"] as! String
        }
        if dict.keys.contains("HatConfidence") {
            self.hatConfidence = dict["HatConfidence"] as! Double
        }
        if dict.keys.contains("HeadPose") {
            var model = HeadPose()
            model.fromMap(dict["HeadPose"] as! [String: Any])
            self.headPose = model
        }
        if dict.keys.contains("Mask") {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("MaskConfidence") {
            self.maskConfidence = dict["MaskConfidence"] as! Double
        }
        if dict.keys.contains("Mouth") {
            self.mouth = dict["Mouth"] as! String
        }
        if dict.keys.contains("MouthConfidence") {
            self.mouthConfidence = dict["MouthConfidence"] as! Double
        }
        if dict.keys.contains("Sharpness") {
            self.sharpness = dict["Sharpness"] as! Double
        }
    }
}

public class FigureCluster : Tea.TeaModel {
    public var averageAge: Double?

    public var cover: File?

    public var createTime: String?

    public var customId: String?

    public var customLabels: [String: Any]?

    public var datasetName: String?

    public var faceCount: Int64?

    public var gender: String?

    public var imageCount: Int64?

    public var maxAge: Double?

    public var metaLockVersion: Int64?

    public var minAge: Double?

    public var name: String?

    public var objectId: String?

    public var objectType: String?

    public var ownerId: String?

    public var projectName: String?

    public var updateTime: String?

    public var videoCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cover?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.averageAge != nil {
            map["AverageAge"] = self.averageAge!
        }
        if self.cover != nil {
            map["Cover"] = self.cover?.toMap()
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.faceCount != nil {
            map["FaceCount"] = self.faceCount!
        }
        if self.gender != nil {
            map["Gender"] = self.gender!
        }
        if self.imageCount != nil {
            map["ImageCount"] = self.imageCount!
        }
        if self.maxAge != nil {
            map["MaxAge"] = self.maxAge!
        }
        if self.metaLockVersion != nil {
            map["MetaLockVersion"] = self.metaLockVersion!
        }
        if self.minAge != nil {
            map["MinAge"] = self.minAge!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.videoCount != nil {
            map["VideoCount"] = self.videoCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AverageAge") {
            self.averageAge = dict["AverageAge"] as! Double
        }
        if dict.keys.contains("Cover") {
            var model = File()
            model.fromMap(dict["Cover"] as! [String: Any])
            self.cover = model
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! [String: Any]
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("FaceCount") {
            self.faceCount = dict["FaceCount"] as! Int64
        }
        if dict.keys.contains("Gender") {
            self.gender = dict["Gender"] as! String
        }
        if dict.keys.contains("ImageCount") {
            self.imageCount = dict["ImageCount"] as! Int64
        }
        if dict.keys.contains("MaxAge") {
            self.maxAge = dict["MaxAge"] as! Double
        }
        if dict.keys.contains("MetaLockVersion") {
            self.metaLockVersion = dict["MetaLockVersion"] as! Int64
        }
        if dict.keys.contains("MinAge") {
            self.minAge = dict["MinAge"] as! Double
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("VideoCount") {
            self.videoCount = dict["VideoCount"] as! Int64
        }
    }
}

public class FigureClusterForReq : Tea.TeaModel {
    public class Cover : Tea.TeaModel {
        public class Figures : Tea.TeaModel {
            public var figureId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.figureId != nil {
                    map["FigureId"] = self.figureId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FigureId") {
                    self.figureId = dict["FigureId"] as! String
                }
            }
        }
        public var figures: [FigureClusterForReq.Cover.Figures]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.figures != nil {
                var tmp : [Any] = []
                for k in self.figures! {
                    tmp.append(k.toMap())
                }
                map["Figures"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Figures") {
                self.figures = dict["Figures"] as! [FigureClusterForReq.Cover.Figures]
            }
        }
    }
    public var cover: FigureClusterForReq.Cover?

    public var customId: String?

    public var customLabels: [String: Any]?

    public var metaLockVersion: Int64?

    public var name: String?

    public var objectId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cover?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cover != nil {
            map["Cover"] = self.cover?.toMap()
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.metaLockVersion != nil {
            map["MetaLockVersion"] = self.metaLockVersion!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cover") {
            var model = FigureClusterForReq.Cover()
            model.fromMap(dict["Cover"] as! [String: Any])
            self.cover = model
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! [String: Any]
        }
        if dict.keys.contains("MetaLockVersion") {
            self.metaLockVersion = dict["MetaLockVersion"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
    }
}

public class File : Tea.TeaModel {
    public var accessControlAllowOrigin: String?

    public var accessControlRequestMethod: String?

    public var addresses: [Address]?

    public var album: String?

    public var albumArtist: String?

    public var artist: String?

    public var audioCovers: [Image]?

    public var audioStreams: [AudioStream]?

    public var bitrate: Int64?

    public var cacheControl: String?

    public var composer: String?

    public var contentDisposition: String?

    public var contentEncoding: String?

    public var contentLanguage: String?

    public var contentMd5: String?

    public var contentType: String?

    public var createTime: String?

    public var croppingSuggestions: [CroppingSuggestion]?

    public var customId: String?

    public var customLabels: [String: Any]?

    public var datasetName: String?

    public var documentContent: String?

    public var documentLanguage: String?

    public var duration: Double?

    public var ETag: String?

    public var EXIF: String?

    public var figureCount: Int64?

    public var figures: [Figure]?

    public var fileAccessTime: String?

    public var fileCreateTime: String?

    public var fileHash: String?

    public var fileModifiedTime: String?

    public var filename: String?

    public var formatLongName: String?

    public var formatName: String?

    public var imageHeight: Int64?

    public var imageScore: ImageScore?

    public var imageWidth: Int64?

    public var labels: [Label]?

    public var language: String?

    public var latLong: String?

    public var mediaType: String?

    public var OCRContents: [OCRContents]?

    public var OSSCRC64: String?

    public var OSSDeleteMarker: String?

    public var OSSExpiration: String?

    public var OSSObjectType: String?

    public var OSSStorageClass: String?

    public var OSSTagging: [String: Any]?

    public var OSSTaggingCount: Int64?

    public var OSSURI: String?

    public var OSSUserMeta: [String: Any]?

    public var OSSVersionId: String?

    public var objectACL: String?

    public var objectId: String?

    public var objectType: String?

    public var orientation: Int64?

    public var ownerId: String?

    public var pageCount: Int64?

    public var performer: String?

    public var produceTime: String?

    public var programCount: Int64?

    public var projectName: String?

    public var serverSideDataEncryption: String?

    public var serverSideEncryption: String?

    public var serverSideEncryptionCustomerAlgorithm: String?

    public var serverSideEncryptionKeyId: String?

    public var size: Int64?

    public var startTime: Double?

    public var streamCount: Int64?

    public var subtitles: [SubtitleStream]?

    public var timezone: String?

    public var title: String?

    public var travelClusterId: String?

    public var URI: String?

    public var updateTime: String?

    public var videoHeight: Int64?

    public var videoStreams: [VideoStream]?

    public var videoWidth: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.imageScore?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessControlAllowOrigin != nil {
            map["AccessControlAllowOrigin"] = self.accessControlAllowOrigin!
        }
        if self.accessControlRequestMethod != nil {
            map["AccessControlRequestMethod"] = self.accessControlRequestMethod!
        }
        if self.addresses != nil {
            var tmp : [Any] = []
            for k in self.addresses! {
                tmp.append(k.toMap())
            }
            map["Addresses"] = tmp
        }
        if self.album != nil {
            map["Album"] = self.album!
        }
        if self.albumArtist != nil {
            map["AlbumArtist"] = self.albumArtist!
        }
        if self.artist != nil {
            map["Artist"] = self.artist!
        }
        if self.audioCovers != nil {
            var tmp : [Any] = []
            for k in self.audioCovers! {
                tmp.append(k.toMap())
            }
            map["AudioCovers"] = tmp
        }
        if self.audioStreams != nil {
            var tmp : [Any] = []
            for k in self.audioStreams! {
                tmp.append(k.toMap())
            }
            map["AudioStreams"] = tmp
        }
        if self.bitrate != nil {
            map["Bitrate"] = self.bitrate!
        }
        if self.cacheControl != nil {
            map["CacheControl"] = self.cacheControl!
        }
        if self.composer != nil {
            map["Composer"] = self.composer!
        }
        if self.contentDisposition != nil {
            map["ContentDisposition"] = self.contentDisposition!
        }
        if self.contentEncoding != nil {
            map["ContentEncoding"] = self.contentEncoding!
        }
        if self.contentLanguage != nil {
            map["ContentLanguage"] = self.contentLanguage!
        }
        if self.contentMd5 != nil {
            map["ContentMd5"] = self.contentMd5!
        }
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.croppingSuggestions != nil {
            var tmp : [Any] = []
            for k in self.croppingSuggestions! {
                tmp.append(k.toMap())
            }
            map["CroppingSuggestions"] = tmp
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.documentContent != nil {
            map["DocumentContent"] = self.documentContent!
        }
        if self.documentLanguage != nil {
            map["DocumentLanguage"] = self.documentLanguage!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.ETag != nil {
            map["ETag"] = self.ETag!
        }
        if self.EXIF != nil {
            map["EXIF"] = self.EXIF!
        }
        if self.figureCount != nil {
            map["FigureCount"] = self.figureCount!
        }
        if self.figures != nil {
            var tmp : [Any] = []
            for k in self.figures! {
                tmp.append(k.toMap())
            }
            map["Figures"] = tmp
        }
        if self.fileAccessTime != nil {
            map["FileAccessTime"] = self.fileAccessTime!
        }
        if self.fileCreateTime != nil {
            map["FileCreateTime"] = self.fileCreateTime!
        }
        if self.fileHash != nil {
            map["FileHash"] = self.fileHash!
        }
        if self.fileModifiedTime != nil {
            map["FileModifiedTime"] = self.fileModifiedTime!
        }
        if self.filename != nil {
            map["Filename"] = self.filename!
        }
        if self.formatLongName != nil {
            map["FormatLongName"] = self.formatLongName!
        }
        if self.formatName != nil {
            map["FormatName"] = self.formatName!
        }
        if self.imageHeight != nil {
            map["ImageHeight"] = self.imageHeight!
        }
        if self.imageScore != nil {
            map["ImageScore"] = self.imageScore?.toMap()
        }
        if self.imageWidth != nil {
            map["ImageWidth"] = self.imageWidth!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.latLong != nil {
            map["LatLong"] = self.latLong!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.OCRContents != nil {
            var tmp : [Any] = []
            for k in self.OCRContents! {
                tmp.append(k.toMap())
            }
            map["OCRContents"] = tmp
        }
        if self.OSSCRC64 != nil {
            map["OSSCRC64"] = self.OSSCRC64!
        }
        if self.OSSDeleteMarker != nil {
            map["OSSDeleteMarker"] = self.OSSDeleteMarker!
        }
        if self.OSSExpiration != nil {
            map["OSSExpiration"] = self.OSSExpiration!
        }
        if self.OSSObjectType != nil {
            map["OSSObjectType"] = self.OSSObjectType!
        }
        if self.OSSStorageClass != nil {
            map["OSSStorageClass"] = self.OSSStorageClass!
        }
        if self.OSSTagging != nil {
            map["OSSTagging"] = self.OSSTagging!
        }
        if self.OSSTaggingCount != nil {
            map["OSSTaggingCount"] = self.OSSTaggingCount!
        }
        if self.OSSURI != nil {
            map["OSSURI"] = self.OSSURI!
        }
        if self.OSSUserMeta != nil {
            map["OSSUserMeta"] = self.OSSUserMeta!
        }
        if self.OSSVersionId != nil {
            map["OSSVersionId"] = self.OSSVersionId!
        }
        if self.objectACL != nil {
            map["ObjectACL"] = self.objectACL!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.orientation != nil {
            map["Orientation"] = self.orientation!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.performer != nil {
            map["Performer"] = self.performer!
        }
        if self.produceTime != nil {
            map["ProduceTime"] = self.produceTime!
        }
        if self.programCount != nil {
            map["ProgramCount"] = self.programCount!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.serverSideDataEncryption != nil {
            map["ServerSideDataEncryption"] = self.serverSideDataEncryption!
        }
        if self.serverSideEncryption != nil {
            map["ServerSideEncryption"] = self.serverSideEncryption!
        }
        if self.serverSideEncryptionCustomerAlgorithm != nil {
            map["ServerSideEncryptionCustomerAlgorithm"] = self.serverSideEncryptionCustomerAlgorithm!
        }
        if self.serverSideEncryptionKeyId != nil {
            map["ServerSideEncryptionKeyId"] = self.serverSideEncryptionKeyId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.streamCount != nil {
            map["StreamCount"] = self.streamCount!
        }
        if self.subtitles != nil {
            var tmp : [Any] = []
            for k in self.subtitles! {
                tmp.append(k.toMap())
            }
            map["Subtitles"] = tmp
        }
        if self.timezone != nil {
            map["Timezone"] = self.timezone!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.travelClusterId != nil {
            map["TravelClusterId"] = self.travelClusterId!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.videoHeight != nil {
            map["VideoHeight"] = self.videoHeight!
        }
        if self.videoStreams != nil {
            var tmp : [Any] = []
            for k in self.videoStreams! {
                tmp.append(k.toMap())
            }
            map["VideoStreams"] = tmp
        }
        if self.videoWidth != nil {
            map["VideoWidth"] = self.videoWidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessControlAllowOrigin") {
            self.accessControlAllowOrigin = dict["AccessControlAllowOrigin"] as! String
        }
        if dict.keys.contains("AccessControlRequestMethod") {
            self.accessControlRequestMethod = dict["AccessControlRequestMethod"] as! String
        }
        if dict.keys.contains("Addresses") {
            self.addresses = dict["Addresses"] as! [Address]
        }
        if dict.keys.contains("Album") {
            self.album = dict["Album"] as! String
        }
        if dict.keys.contains("AlbumArtist") {
            self.albumArtist = dict["AlbumArtist"] as! String
        }
        if dict.keys.contains("Artist") {
            self.artist = dict["Artist"] as! String
        }
        if dict.keys.contains("AudioCovers") {
            self.audioCovers = dict["AudioCovers"] as! [Image]
        }
        if dict.keys.contains("AudioStreams") {
            self.audioStreams = dict["AudioStreams"] as! [AudioStream]
        }
        if dict.keys.contains("Bitrate") {
            self.bitrate = dict["Bitrate"] as! Int64
        }
        if dict.keys.contains("CacheControl") {
            self.cacheControl = dict["CacheControl"] as! String
        }
        if dict.keys.contains("Composer") {
            self.composer = dict["Composer"] as! String
        }
        if dict.keys.contains("ContentDisposition") {
            self.contentDisposition = dict["ContentDisposition"] as! String
        }
        if dict.keys.contains("ContentEncoding") {
            self.contentEncoding = dict["ContentEncoding"] as! String
        }
        if dict.keys.contains("ContentLanguage") {
            self.contentLanguage = dict["ContentLanguage"] as! String
        }
        if dict.keys.contains("ContentMd5") {
            self.contentMd5 = dict["ContentMd5"] as! String
        }
        if dict.keys.contains("ContentType") {
            self.contentType = dict["ContentType"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CroppingSuggestions") {
            self.croppingSuggestions = dict["CroppingSuggestions"] as! [CroppingSuggestion]
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! [String: Any]
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("DocumentContent") {
            self.documentContent = dict["DocumentContent"] as! String
        }
        if dict.keys.contains("DocumentLanguage") {
            self.documentLanguage = dict["DocumentLanguage"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Double
        }
        if dict.keys.contains("ETag") {
            self.ETag = dict["ETag"] as! String
        }
        if dict.keys.contains("EXIF") {
            self.EXIF = dict["EXIF"] as! String
        }
        if dict.keys.contains("FigureCount") {
            self.figureCount = dict["FigureCount"] as! Int64
        }
        if dict.keys.contains("Figures") {
            self.figures = dict["Figures"] as! [Figure]
        }
        if dict.keys.contains("FileAccessTime") {
            self.fileAccessTime = dict["FileAccessTime"] as! String
        }
        if dict.keys.contains("FileCreateTime") {
            self.fileCreateTime = dict["FileCreateTime"] as! String
        }
        if dict.keys.contains("FileHash") {
            self.fileHash = dict["FileHash"] as! String
        }
        if dict.keys.contains("FileModifiedTime") {
            self.fileModifiedTime = dict["FileModifiedTime"] as! String
        }
        if dict.keys.contains("Filename") {
            self.filename = dict["Filename"] as! String
        }
        if dict.keys.contains("FormatLongName") {
            self.formatLongName = dict["FormatLongName"] as! String
        }
        if dict.keys.contains("FormatName") {
            self.formatName = dict["FormatName"] as! String
        }
        if dict.keys.contains("ImageHeight") {
            self.imageHeight = dict["ImageHeight"] as! Int64
        }
        if dict.keys.contains("ImageScore") {
            var model = ImageScore()
            model.fromMap(dict["ImageScore"] as! [String: Any])
            self.imageScore = model
        }
        if dict.keys.contains("ImageWidth") {
            self.imageWidth = dict["ImageWidth"] as! Int64
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [Label]
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("LatLong") {
            self.latLong = dict["LatLong"] as! String
        }
        if dict.keys.contains("MediaType") {
            self.mediaType = dict["MediaType"] as! String
        }
        if dict.keys.contains("OCRContents") {
            self.OCRContents = dict["OCRContents"] as! [OCRContents]
        }
        if dict.keys.contains("OSSCRC64") {
            self.OSSCRC64 = dict["OSSCRC64"] as! String
        }
        if dict.keys.contains("OSSDeleteMarker") {
            self.OSSDeleteMarker = dict["OSSDeleteMarker"] as! String
        }
        if dict.keys.contains("OSSExpiration") {
            self.OSSExpiration = dict["OSSExpiration"] as! String
        }
        if dict.keys.contains("OSSObjectType") {
            self.OSSObjectType = dict["OSSObjectType"] as! String
        }
        if dict.keys.contains("OSSStorageClass") {
            self.OSSStorageClass = dict["OSSStorageClass"] as! String
        }
        if dict.keys.contains("OSSTagging") {
            self.OSSTagging = dict["OSSTagging"] as! [String: Any]
        }
        if dict.keys.contains("OSSTaggingCount") {
            self.OSSTaggingCount = dict["OSSTaggingCount"] as! Int64
        }
        if dict.keys.contains("OSSURI") {
            self.OSSURI = dict["OSSURI"] as! String
        }
        if dict.keys.contains("OSSUserMeta") {
            self.OSSUserMeta = dict["OSSUserMeta"] as! [String: Any]
        }
        if dict.keys.contains("OSSVersionId") {
            self.OSSVersionId = dict["OSSVersionId"] as! String
        }
        if dict.keys.contains("ObjectACL") {
            self.objectACL = dict["ObjectACL"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("Orientation") {
            self.orientation = dict["Orientation"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int64
        }
        if dict.keys.contains("Performer") {
            self.performer = dict["Performer"] as! String
        }
        if dict.keys.contains("ProduceTime") {
            self.produceTime = dict["ProduceTime"] as! String
        }
        if dict.keys.contains("ProgramCount") {
            self.programCount = dict["ProgramCount"] as! Int64
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("ServerSideDataEncryption") {
            self.serverSideDataEncryption = dict["ServerSideDataEncryption"] as! String
        }
        if dict.keys.contains("ServerSideEncryption") {
            self.serverSideEncryption = dict["ServerSideEncryption"] as! String
        }
        if dict.keys.contains("ServerSideEncryptionCustomerAlgorithm") {
            self.serverSideEncryptionCustomerAlgorithm = dict["ServerSideEncryptionCustomerAlgorithm"] as! String
        }
        if dict.keys.contains("ServerSideEncryptionKeyId") {
            self.serverSideEncryptionKeyId = dict["ServerSideEncryptionKeyId"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Double
        }
        if dict.keys.contains("StreamCount") {
            self.streamCount = dict["StreamCount"] as! Int64
        }
        if dict.keys.contains("Subtitles") {
            self.subtitles = dict["Subtitles"] as! [SubtitleStream]
        }
        if dict.keys.contains("Timezone") {
            self.timezone = dict["Timezone"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("TravelClusterId") {
            self.travelClusterId = dict["TravelClusterId"] as! String
        }
        if dict.keys.contains("URI") {
            self.URI = dict["URI"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("VideoHeight") {
            self.videoHeight = dict["VideoHeight"] as! Int64
        }
        if dict.keys.contains("VideoStreams") {
            self.videoStreams = dict["VideoStreams"] as! [VideoStream]
        }
        if dict.keys.contains("VideoWidth") {
            self.videoWidth = dict["VideoWidth"] as! Int64
        }
    }
}

public class FileForReq : Tea.TeaModel {
    public class Figures : Tea.TeaModel {
        public var figureClusterId: String?

        public var figureId: String?

        public var figureType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.figureClusterId != nil {
                map["FigureClusterId"] = self.figureClusterId!
            }
            if self.figureId != nil {
                map["FigureId"] = self.figureId!
            }
            if self.figureType != nil {
                map["FigureType"] = self.figureType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FigureClusterId") {
                self.figureClusterId = dict["FigureClusterId"] as! String
            }
            if dict.keys.contains("FigureId") {
                self.figureId = dict["FigureId"] as! String
            }
            if dict.keys.contains("FigureType") {
                self.figureType = dict["FigureType"] as! String
            }
        }
    }
    public var contentType: String?

    public var customId: String?

    public var customLabels: [String: Any]?

    public var figures: [FileForReq.Figures]?

    public var fileHash: String?

    public var mediaType: String?

    public var OSSURI: String?

    public var URI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.figures != nil {
            var tmp : [Any] = []
            for k in self.figures! {
                tmp.append(k.toMap())
            }
            map["Figures"] = tmp
        }
        if self.fileHash != nil {
            map["FileHash"] = self.fileHash!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.OSSURI != nil {
            map["OSSURI"] = self.OSSURI!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContentType") {
            self.contentType = dict["ContentType"] as! String
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! [String: Any]
        }
        if dict.keys.contains("Figures") {
            self.figures = dict["Figures"] as! [FileForReq.Figures]
        }
        if dict.keys.contains("FileHash") {
            self.fileHash = dict["FileHash"] as! String
        }
        if dict.keys.contains("MediaType") {
            self.mediaType = dict["MediaType"] as! String
        }
        if dict.keys.contains("OSSURI") {
            self.OSSURI = dict["OSSURI"] as! String
        }
        if dict.keys.contains("URI") {
            self.URI = dict["URI"] as! String
        }
    }
}

public class HeadPose : Tea.TeaModel {
    public var pitch: Double?

    public var roll: Double?

    public var yaw: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pitch != nil {
            map["Pitch"] = self.pitch!
        }
        if self.roll != nil {
            map["Roll"] = self.roll!
        }
        if self.yaw != nil {
            map["Yaw"] = self.yaw!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Pitch") {
            self.pitch = dict["Pitch"] as! Double
        }
        if dict.keys.contains("Roll") {
            self.roll = dict["Roll"] as! Double
        }
        if dict.keys.contains("Yaw") {
            self.yaw = dict["Yaw"] as! Double
        }
    }
}

public class Image : Tea.TeaModel {
    public var croppingSuggestions: [CroppingSuggestion]?

    public var EXIF: String?

    public var imageHeight: Int64?

    public var imageScore: ImageScore?

    public var imageWidth: Int64?

    public var OCRContents: [OCRContents]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.imageScore?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.croppingSuggestions != nil {
            var tmp : [Any] = []
            for k in self.croppingSuggestions! {
                tmp.append(k.toMap())
            }
            map["CroppingSuggestions"] = tmp
        }
        if self.EXIF != nil {
            map["EXIF"] = self.EXIF!
        }
        if self.imageHeight != nil {
            map["ImageHeight"] = self.imageHeight!
        }
        if self.imageScore != nil {
            map["ImageScore"] = self.imageScore?.toMap()
        }
        if self.imageWidth != nil {
            map["ImageWidth"] = self.imageWidth!
        }
        if self.OCRContents != nil {
            var tmp : [Any] = []
            for k in self.OCRContents! {
                tmp.append(k.toMap())
            }
            map["OCRContents"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CroppingSuggestions") {
            self.croppingSuggestions = dict["CroppingSuggestions"] as! [CroppingSuggestion]
        }
        if dict.keys.contains("EXIF") {
            self.EXIF = dict["EXIF"] as! String
        }
        if dict.keys.contains("ImageHeight") {
            self.imageHeight = dict["ImageHeight"] as! Int64
        }
        if dict.keys.contains("ImageScore") {
            var model = ImageScore()
            model.fromMap(dict["ImageScore"] as! [String: Any])
            self.imageScore = model
        }
        if dict.keys.contains("ImageWidth") {
            self.imageWidth = dict["ImageWidth"] as! Int64
        }
        if dict.keys.contains("OCRContents") {
            self.OCRContents = dict["OCRContents"] as! [OCRContents]
        }
    }
}

public class ImageScore : Tea.TeaModel {
    public var overallQualityScore: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.overallQualityScore != nil {
            map["OverallQualityScore"] = self.overallQualityScore!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OverallQualityScore") {
            self.overallQualityScore = dict["OverallQualityScore"] as! Double
        }
    }
}

public class Input : Tea.TeaModel {
    public var OSS: InputOSS?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OSS?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OSS != nil {
            map["OSS"] = self.OSS?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OSS") {
            var model = InputOSS()
            model.fromMap(dict["OSS"] as! [String: Any])
            self.OSS = model
        }
    }
}

public class InputFile : Tea.TeaModel {
    public class Figures : Tea.TeaModel {
        public var figureClusterId: String?

        public var figureId: String?

        public var figureType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.figureClusterId != nil {
                map["FigureClusterId"] = self.figureClusterId!
            }
            if self.figureId != nil {
                map["FigureId"] = self.figureId!
            }
            if self.figureType != nil {
                map["FigureType"] = self.figureType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FigureClusterId") {
                self.figureClusterId = dict["FigureClusterId"] as! String
            }
            if dict.keys.contains("FigureId") {
                self.figureId = dict["FigureId"] as! String
            }
            if dict.keys.contains("FigureType") {
                self.figureType = dict["FigureType"] as! String
            }
        }
    }
    public var contentType: String?

    public var customId: String?

    public var customLabels: [String: Any]?

    public var figures: [InputFile.Figures]?

    public var fileHash: String?

    public var mediaType: String?

    public var OSSURI: String?

    public var URI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.figures != nil {
            var tmp : [Any] = []
            for k in self.figures! {
                tmp.append(k.toMap())
            }
            map["Figures"] = tmp
        }
        if self.fileHash != nil {
            map["FileHash"] = self.fileHash!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.OSSURI != nil {
            map["OSSURI"] = self.OSSURI!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContentType") {
            self.contentType = dict["ContentType"] as! String
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! [String: Any]
        }
        if dict.keys.contains("Figures") {
            self.figures = dict["Figures"] as! [InputFile.Figures]
        }
        if dict.keys.contains("FileHash") {
            self.fileHash = dict["FileHash"] as! String
        }
        if dict.keys.contains("MediaType") {
            self.mediaType = dict["MediaType"] as! String
        }
        if dict.keys.contains("OSSURI") {
            self.OSSURI = dict["OSSURI"] as! String
        }
        if dict.keys.contains("URI") {
            self.URI = dict["URI"] as! String
        }
    }
}

public class InputOSS : Tea.TeaModel {
    public var bucket: String?

    public var matchExpressions: [String]?

    public var prefix_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucket != nil {
            map["Bucket"] = self.bucket!
        }
        if self.matchExpressions != nil {
            map["MatchExpressions"] = self.matchExpressions!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bucket") {
            self.bucket = dict["Bucket"] as! String
        }
        if dict.keys.contains("MatchExpressions") {
            self.matchExpressions = dict["MatchExpressions"] as! [String]
        }
        if dict.keys.contains("Prefix") {
            self.prefix_ = dict["Prefix"] as! String
        }
    }
}

public class KdtreeOption : Tea.TeaModel {
    public var compressionLevel: Int32?

    public var libraryName: String?

    public var quantizationBits: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compressionLevel != nil {
            map["CompressionLevel"] = self.compressionLevel!
        }
        if self.libraryName != nil {
            map["LibraryName"] = self.libraryName!
        }
        if self.quantizationBits != nil {
            map["QuantizationBits"] = self.quantizationBits!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompressionLevel") {
            self.compressionLevel = dict["CompressionLevel"] as! Int32
        }
        if dict.keys.contains("LibraryName") {
            self.libraryName = dict["LibraryName"] as! String
        }
        if dict.keys.contains("QuantizationBits") {
            self.quantizationBits = dict["QuantizationBits"] as! Int32
        }
    }
}

public class KeyValuePair : Tea.TeaModel {
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

public class Label : Tea.TeaModel {
    public var centricScore: Double?

    public var labelConfidence: Double?

    public var labelLevel: Int64?

    public var labelName: String?

    public var language: String?

    public var parentLabelName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.centricScore != nil {
            map["CentricScore"] = self.centricScore!
        }
        if self.labelConfidence != nil {
            map["LabelConfidence"] = self.labelConfidence!
        }
        if self.labelLevel != nil {
            map["LabelLevel"] = self.labelLevel!
        }
        if self.labelName != nil {
            map["LabelName"] = self.labelName!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.parentLabelName != nil {
            map["ParentLabelName"] = self.parentLabelName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CentricScore") {
            self.centricScore = dict["CentricScore"] as! Double
        }
        if dict.keys.contains("LabelConfidence") {
            self.labelConfidence = dict["LabelConfidence"] as! Double
        }
        if dict.keys.contains("LabelLevel") {
            self.labelLevel = dict["LabelLevel"] as! Int64
        }
        if dict.keys.contains("LabelName") {
            self.labelName = dict["LabelName"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("ParentLabelName") {
            self.parentLabelName = dict["ParentLabelName"] as! String
        }
    }
}

public class LocationDateCluster : Tea.TeaModel {
    public var addresses: [Address]?

    public var createTime: String?

    public var customId: String?

    public var customLabels: [String: Any]?

    public var locationDateClusterEndTime: String?

    public var locationDateClusterLevel: String?

    public var locationDateClusterStartTime: String?

    public var objectId: String?

    public var title: String?

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
        if self.addresses != nil {
            var tmp : [Any] = []
            for k in self.addresses! {
                tmp.append(k.toMap())
            }
            map["Addresses"] = tmp
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.locationDateClusterEndTime != nil {
            map["LocationDateClusterEndTime"] = self.locationDateClusterEndTime!
        }
        if self.locationDateClusterLevel != nil {
            map["LocationDateClusterLevel"] = self.locationDateClusterLevel!
        }
        if self.locationDateClusterStartTime != nil {
            map["LocationDateClusterStartTime"] = self.locationDateClusterStartTime!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Addresses") {
            self.addresses = dict["Addresses"] as! [Address]
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! [String: Any]
        }
        if dict.keys.contains("LocationDateClusterEndTime") {
            self.locationDateClusterEndTime = dict["LocationDateClusterEndTime"] as! String
        }
        if dict.keys.contains("LocationDateClusterLevel") {
            self.locationDateClusterLevel = dict["LocationDateClusterLevel"] as! String
        }
        if dict.keys.contains("LocationDateClusterStartTime") {
            self.locationDateClusterStartTime = dict["LocationDateClusterStartTime"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class OCRContents : Tea.TeaModel {
    public var boundary: Boundary?

    public var confidence: Double?

    public var contents: String?

    public var language: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.boundary?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.boundary != nil {
            map["Boundary"] = self.boundary?.toMap()
        }
        if self.confidence != nil {
            map["Confidence"] = self.confidence!
        }
        if self.contents != nil {
            map["Contents"] = self.contents!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Boundary") {
            var model = Boundary()
            model.fromMap(dict["Boundary"] as! [String: Any])
            self.boundary = model
        }
        if dict.keys.contains("Confidence") {
            self.confidence = dict["Confidence"] as! Double
        }
        if dict.keys.contains("Contents") {
            self.contents = dict["Contents"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
    }
}

public class OctreeOption : Tea.TeaModel {
    public var doVoxelGridDownDownSampling: Bool?

    public var libraryName: String?

    public var octreeResolution: Double?

    public var pointResolution: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.doVoxelGridDownDownSampling != nil {
            map["DoVoxelGridDownDownSampling"] = self.doVoxelGridDownDownSampling!
        }
        if self.libraryName != nil {
            map["LibraryName"] = self.libraryName!
        }
        if self.octreeResolution != nil {
            map["OctreeResolution"] = self.octreeResolution!
        }
        if self.pointResolution != nil {
            map["PointResolution"] = self.pointResolution!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DoVoxelGridDownDownSampling") {
            self.doVoxelGridDownDownSampling = dict["DoVoxelGridDownDownSampling"] as! Bool
        }
        if dict.keys.contains("LibraryName") {
            self.libraryName = dict["LibraryName"] as! String
        }
        if dict.keys.contains("OctreeResolution") {
            self.octreeResolution = dict["OctreeResolution"] as! Double
        }
        if dict.keys.contains("PointResolution") {
            self.pointResolution = dict["PointResolution"] as! Double
        }
    }
}

public class PresetReference : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class Project : Tea.TeaModel {
    public var createTime: String?

    public var datasetCount: Int64?

    public var datasetMaxBindCount: Int64?

    public var datasetMaxEntityCount: Int64?

    public var datasetMaxFileCount: Int64?

    public var datasetMaxRelationCount: Int64?

    public var datasetMaxTotalFileSize: Int64?

    public var description_: String?

    public var engineConcurrency: Int64?

    public var fileCount: Int64?

    public var projectMaxDatasetCount: Int64?

    public var projectName: String?

    public var projectQueriesPerSecond: Int64?

    public var serviceRole: String?

    public var templateId: String?

    public var totalFileSize: Int64?

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
        if self.datasetCount != nil {
            map["DatasetCount"] = self.datasetCount!
        }
        if self.datasetMaxBindCount != nil {
            map["DatasetMaxBindCount"] = self.datasetMaxBindCount!
        }
        if self.datasetMaxEntityCount != nil {
            map["DatasetMaxEntityCount"] = self.datasetMaxEntityCount!
        }
        if self.datasetMaxFileCount != nil {
            map["DatasetMaxFileCount"] = self.datasetMaxFileCount!
        }
        if self.datasetMaxRelationCount != nil {
            map["DatasetMaxRelationCount"] = self.datasetMaxRelationCount!
        }
        if self.datasetMaxTotalFileSize != nil {
            map["DatasetMaxTotalFileSize"] = self.datasetMaxTotalFileSize!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.engineConcurrency != nil {
            map["EngineConcurrency"] = self.engineConcurrency!
        }
        if self.fileCount != nil {
            map["FileCount"] = self.fileCount!
        }
        if self.projectMaxDatasetCount != nil {
            map["ProjectMaxDatasetCount"] = self.projectMaxDatasetCount!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.projectQueriesPerSecond != nil {
            map["ProjectQueriesPerSecond"] = self.projectQueriesPerSecond!
        }
        if self.serviceRole != nil {
            map["ServiceRole"] = self.serviceRole!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.totalFileSize != nil {
            map["TotalFileSize"] = self.totalFileSize!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DatasetCount") {
            self.datasetCount = dict["DatasetCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxBindCount") {
            self.datasetMaxBindCount = dict["DatasetMaxBindCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxEntityCount") {
            self.datasetMaxEntityCount = dict["DatasetMaxEntityCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxFileCount") {
            self.datasetMaxFileCount = dict["DatasetMaxFileCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxRelationCount") {
            self.datasetMaxRelationCount = dict["DatasetMaxRelationCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxTotalFileSize") {
            self.datasetMaxTotalFileSize = dict["DatasetMaxTotalFileSize"] as! Int64
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EngineConcurrency") {
            self.engineConcurrency = dict["EngineConcurrency"] as! Int64
        }
        if dict.keys.contains("FileCount") {
            self.fileCount = dict["FileCount"] as! Int64
        }
        if dict.keys.contains("ProjectMaxDatasetCount") {
            self.projectMaxDatasetCount = dict["ProjectMaxDatasetCount"] as! Int64
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("ProjectQueriesPerSecond") {
            self.projectQueriesPerSecond = dict["ProjectQueriesPerSecond"] as! Int64
        }
        if dict.keys.contains("ServiceRole") {
            self.serviceRole = dict["ServiceRole"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("TotalFileSize") {
            self.totalFileSize = dict["TotalFileSize"] as! Int64
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class RegionType : Tea.TeaModel {
    public var localName: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LocalName") {
            self.localName = dict["LocalName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class Row : Tea.TeaModel {
    public var customLabels: [KeyValuePair]?

    public var URI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customLabels != nil {
            var tmp : [Any] = []
            for k in self.customLabels! {
                tmp.append(k.toMap())
            }
            map["CustomLabels"] = tmp
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! [KeyValuePair]
        }
        if dict.keys.contains("URI") {
            self.URI = dict["URI"] as! String
        }
    }
}

public class SimpleQuery : Tea.TeaModel {
    public var field: String?

    public var operation: String?

    public var subQueries: [SimpleQuery]?

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
        if self.field != nil {
            map["Field"] = self.field!
        }
        if self.operation != nil {
            map["Operation"] = self.operation!
        }
        if self.subQueries != nil {
            var tmp : [Any] = []
            for k in self.subQueries! {
                tmp.append(k.toMap())
            }
            map["SubQueries"] = tmp
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Field") {
            self.field = dict["Field"] as! String
        }
        if dict.keys.contains("Operation") {
            self.operation = dict["Operation"] as! String
        }
        if dict.keys.contains("SubQueries") {
            self.subQueries = dict["SubQueries"] as! [SimpleQuery]
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
    }
}

public class Story : Tea.TeaModel {
    public var addresses: [Address]?

    public var cover: File?

    public var createTime: String?

    public var customId: String?

    public var customLabels: [String: Any]?

    public var datasetName: String?

    public var figureClusterIds: [String]?

    public var files: [File]?

    public var objectId: String?

    public var objectType: String?

    public var ownerId: String?

    public var projectName: String?

    public var storyEndTime: String?

    public var storyName: String?

    public var storyStartTime: String?

    public var storySubType: String?

    public var storyType: String?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cover?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addresses != nil {
            var tmp : [Any] = []
            for k in self.addresses! {
                tmp.append(k.toMap())
            }
            map["Addresses"] = tmp
        }
        if self.cover != nil {
            map["Cover"] = self.cover?.toMap()
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.figureClusterIds != nil {
            map["FigureClusterIds"] = self.figureClusterIds!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.storyEndTime != nil {
            map["StoryEndTime"] = self.storyEndTime!
        }
        if self.storyName != nil {
            map["StoryName"] = self.storyName!
        }
        if self.storyStartTime != nil {
            map["StoryStartTime"] = self.storyStartTime!
        }
        if self.storySubType != nil {
            map["StorySubType"] = self.storySubType!
        }
        if self.storyType != nil {
            map["StoryType"] = self.storyType!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Addresses") {
            self.addresses = dict["Addresses"] as! [Address]
        }
        if dict.keys.contains("Cover") {
            var model = File()
            model.fromMap(dict["Cover"] as! [String: Any])
            self.cover = model
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! [String: Any]
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("FigureClusterIds") {
            self.figureClusterIds = dict["FigureClusterIds"] as! [String]
        }
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [File]
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ObjectType") {
            self.objectType = dict["ObjectType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("StoryEndTime") {
            self.storyEndTime = dict["StoryEndTime"] as! String
        }
        if dict.keys.contains("StoryName") {
            self.storyName = dict["StoryName"] as! String
        }
        if dict.keys.contains("StoryStartTime") {
            self.storyStartTime = dict["StoryStartTime"] as! String
        }
        if dict.keys.contains("StorySubType") {
            self.storySubType = dict["StorySubType"] as! String
        }
        if dict.keys.contains("StoryType") {
            self.storyType = dict["StoryType"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
    }
}

public class SubtitleStream : Tea.TeaModel {
    public var bitrate: Int64?

    public var codecLongName: String?

    public var codecName: String?

    public var codecTag: String?

    public var codecTagString: String?

    public var content: String?

    public var duration: Double?

    public var height: Int64?

    public var index: Int64?

    public var language: String?

    public var startTime: Double?

    public var width: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bitrate != nil {
            map["Bitrate"] = self.bitrate!
        }
        if self.codecLongName != nil {
            map["CodecLongName"] = self.codecLongName!
        }
        if self.codecName != nil {
            map["CodecName"] = self.codecName!
        }
        if self.codecTag != nil {
            map["CodecTag"] = self.codecTag!
        }
        if self.codecTagString != nil {
            map["CodecTagString"] = self.codecTagString!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.index != nil {
            map["Index"] = self.index!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bitrate") {
            self.bitrate = dict["Bitrate"] as! Int64
        }
        if dict.keys.contains("CodecLongName") {
            self.codecLongName = dict["CodecLongName"] as! String
        }
        if dict.keys.contains("CodecName") {
            self.codecName = dict["CodecName"] as! String
        }
        if dict.keys.contains("CodecTag") {
            self.codecTag = dict["CodecTag"] as! String
        }
        if dict.keys.contains("CodecTagString") {
            self.codecTagString = dict["CodecTagString"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Double
        }
        if dict.keys.contains("Height") {
            self.height = dict["Height"] as! Int64
        }
        if dict.keys.contains("Index") {
            self.index = dict["Index"] as! Int64
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Double
        }
        if dict.keys.contains("Width") {
            self.width = dict["Width"] as! Int64
        }
    }
}

public class TaskInfo : Tea.TeaModel {
    public var code: String?

    public var endTime: String?

    public var message: String?

    public var startTime: String?

    public var status: String?

    public var tags: [String: Any]?

    public var taskId: String?

    public var taskType: String?

    public var userData: String?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class TimeRange : Tea.TeaModel {
    public var end: String?

    public var start: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("End") {
            self.end = dict["End"] as! String
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! String
        }
    }
}

public class TrimPolicy : Tea.TeaModel {
    public var disableDeleteEmptyCell: Bool?

    public var disableDeleteRepeatedStyle: Bool?

    public var disableDeleteUnusedPicture: Bool?

    public var disableDeleteUnusedShape: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.disableDeleteEmptyCell != nil {
            map["DisableDeleteEmptyCell"] = self.disableDeleteEmptyCell!
        }
        if self.disableDeleteRepeatedStyle != nil {
            map["DisableDeleteRepeatedStyle"] = self.disableDeleteRepeatedStyle!
        }
        if self.disableDeleteUnusedPicture != nil {
            map["DisableDeleteUnusedPicture"] = self.disableDeleteUnusedPicture!
        }
        if self.disableDeleteUnusedShape != nil {
            map["DisableDeleteUnusedShape"] = self.disableDeleteUnusedShape!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DisableDeleteEmptyCell") {
            self.disableDeleteEmptyCell = dict["DisableDeleteEmptyCell"] as! Bool
        }
        if dict.keys.contains("DisableDeleteRepeatedStyle") {
            self.disableDeleteRepeatedStyle = dict["DisableDeleteRepeatedStyle"] as! Bool
        }
        if dict.keys.contains("DisableDeleteUnusedPicture") {
            self.disableDeleteUnusedPicture = dict["DisableDeleteUnusedPicture"] as! Bool
        }
        if dict.keys.contains("DisableDeleteUnusedShape") {
            self.disableDeleteUnusedShape = dict["DisableDeleteUnusedShape"] as! Bool
        }
    }
}

public class VideoStream : Tea.TeaModel {
    public var averageFrameRate: String?

    public var bitDepth: Int64?

    public var bitrate: Int64?

    public var codecLongName: String?

    public var codecName: String?

    public var codecTag: String?

    public var codecTagString: String?

    public var codecTimeBase: String?

    public var colorPrimaries: String?

    public var colorRange: String?

    public var colorSpace: String?

    public var colorTransfer: String?

    public var displayAspectRatio: String?

    public var duration: Double?

    public var frameCount: Int64?

    public var frameRate: String?

    public var hasBFrames: Int64?

    public var height: Int64?

    public var index: Int64?

    public var language: String?

    public var level: Int64?

    public var pixelFormat: String?

    public var profile: String?

    public var rotate: String?

    public var sampleAspectRatio: String?

    public var startTime: Double?

    public var timeBase: String?

    public var width: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.averageFrameRate != nil {
            map["AverageFrameRate"] = self.averageFrameRate!
        }
        if self.bitDepth != nil {
            map["BitDepth"] = self.bitDepth!
        }
        if self.bitrate != nil {
            map["Bitrate"] = self.bitrate!
        }
        if self.codecLongName != nil {
            map["CodecLongName"] = self.codecLongName!
        }
        if self.codecName != nil {
            map["CodecName"] = self.codecName!
        }
        if self.codecTag != nil {
            map["CodecTag"] = self.codecTag!
        }
        if self.codecTagString != nil {
            map["CodecTagString"] = self.codecTagString!
        }
        if self.codecTimeBase != nil {
            map["CodecTimeBase"] = self.codecTimeBase!
        }
        if self.colorPrimaries != nil {
            map["ColorPrimaries"] = self.colorPrimaries!
        }
        if self.colorRange != nil {
            map["ColorRange"] = self.colorRange!
        }
        if self.colorSpace != nil {
            map["ColorSpace"] = self.colorSpace!
        }
        if self.colorTransfer != nil {
            map["ColorTransfer"] = self.colorTransfer!
        }
        if self.displayAspectRatio != nil {
            map["DisplayAspectRatio"] = self.displayAspectRatio!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.frameCount != nil {
            map["FrameCount"] = self.frameCount!
        }
        if self.frameRate != nil {
            map["FrameRate"] = self.frameRate!
        }
        if self.hasBFrames != nil {
            map["HasBFrames"] = self.hasBFrames!
        }
        if self.height != nil {
            map["Height"] = self.height!
        }
        if self.index != nil {
            map["Index"] = self.index!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.level != nil {
            map["Level"] = self.level!
        }
        if self.pixelFormat != nil {
            map["PixelFormat"] = self.pixelFormat!
        }
        if self.profile != nil {
            map["Profile"] = self.profile!
        }
        if self.rotate != nil {
            map["Rotate"] = self.rotate!
        }
        if self.sampleAspectRatio != nil {
            map["SampleAspectRatio"] = self.sampleAspectRatio!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.timeBase != nil {
            map["TimeBase"] = self.timeBase!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AverageFrameRate") {
            self.averageFrameRate = dict["AverageFrameRate"] as! String
        }
        if dict.keys.contains("BitDepth") {
            self.bitDepth = dict["BitDepth"] as! Int64
        }
        if dict.keys.contains("Bitrate") {
            self.bitrate = dict["Bitrate"] as! Int64
        }
        if dict.keys.contains("CodecLongName") {
            self.codecLongName = dict["CodecLongName"] as! String
        }
        if dict.keys.contains("CodecName") {
            self.codecName = dict["CodecName"] as! String
        }
        if dict.keys.contains("CodecTag") {
            self.codecTag = dict["CodecTag"] as! String
        }
        if dict.keys.contains("CodecTagString") {
            self.codecTagString = dict["CodecTagString"] as! String
        }
        if dict.keys.contains("CodecTimeBase") {
            self.codecTimeBase = dict["CodecTimeBase"] as! String
        }
        if dict.keys.contains("ColorPrimaries") {
            self.colorPrimaries = dict["ColorPrimaries"] as! String
        }
        if dict.keys.contains("ColorRange") {
            self.colorRange = dict["ColorRange"] as! String
        }
        if dict.keys.contains("ColorSpace") {
            self.colorSpace = dict["ColorSpace"] as! String
        }
        if dict.keys.contains("ColorTransfer") {
            self.colorTransfer = dict["ColorTransfer"] as! String
        }
        if dict.keys.contains("DisplayAspectRatio") {
            self.displayAspectRatio = dict["DisplayAspectRatio"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Double
        }
        if dict.keys.contains("FrameCount") {
            self.frameCount = dict["FrameCount"] as! Int64
        }
        if dict.keys.contains("FrameRate") {
            self.frameRate = dict["FrameRate"] as! String
        }
        if dict.keys.contains("HasBFrames") {
            self.hasBFrames = dict["HasBFrames"] as! Int64
        }
        if dict.keys.contains("Height") {
            self.height = dict["Height"] as! Int64
        }
        if dict.keys.contains("Index") {
            self.index = dict["Index"] as! Int64
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("Level") {
            self.level = dict["Level"] as! Int64
        }
        if dict.keys.contains("PixelFormat") {
            self.pixelFormat = dict["PixelFormat"] as! String
        }
        if dict.keys.contains("Profile") {
            self.profile = dict["Profile"] as! String
        }
        if dict.keys.contains("Rotate") {
            self.rotate = dict["Rotate"] as! String
        }
        if dict.keys.contains("SampleAspectRatio") {
            self.sampleAspectRatio = dict["SampleAspectRatio"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Double
        }
        if dict.keys.contains("TimeBase") {
            self.timeBase = dict["TimeBase"] as! String
        }
        if dict.keys.contains("Width") {
            self.width = dict["Width"] as! Int64
        }
    }
}

public class WebofficePermission : Tea.TeaModel {
    public var copy: Bool?

    public var export: Bool?

    public var history: Bool?

    public var print: Bool?

    public var readonly: Bool?

    public var rename: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.copy != nil {
            map["Copy"] = self.copy!
        }
        if self.export != nil {
            map["Export"] = self.export!
        }
        if self.history != nil {
            map["History"] = self.history!
        }
        if self.print != nil {
            map["Print"] = self.print!
        }
        if self.readonly != nil {
            map["Readonly"] = self.readonly!
        }
        if self.rename != nil {
            map["Rename"] = self.rename!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Copy") {
            self.copy = dict["Copy"] as! Bool
        }
        if dict.keys.contains("Export") {
            self.export = dict["Export"] as! Bool
        }
        if dict.keys.contains("History") {
            self.history = dict["History"] as! Bool
        }
        if dict.keys.contains("Print") {
            self.print = dict["Print"] as! Bool
        }
        if dict.keys.contains("Readonly") {
            self.readonly = dict["Readonly"] as! Bool
        }
        if dict.keys.contains("Rename") {
            self.rename = dict["Rename"] as! Bool
        }
    }
}

public class WebofficeUser : Tea.TeaModel {
    public var avatar: String?

    public var id: String?

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
        if self.avatar != nil {
            map["Avatar"] = self.avatar!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Avatar") {
            self.avatar = dict["Avatar"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class WebofficeWatermark : Tea.TeaModel {
    public var fillStyle: String?

    public var font: String?

    public var horizontal: Int64?

    public var rotate: Double?

    public var type: Int64?

    public var value: String?

    public var vertical: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fillStyle != nil {
            map["FillStyle"] = self.fillStyle!
        }
        if self.font != nil {
            map["Font"] = self.font!
        }
        if self.horizontal != nil {
            map["Horizontal"] = self.horizontal!
        }
        if self.rotate != nil {
            map["Rotate"] = self.rotate!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.vertical != nil {
            map["Vertical"] = self.vertical!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FillStyle") {
            self.fillStyle = dict["FillStyle"] as! String
        }
        if dict.keys.contains("Font") {
            self.font = dict["Font"] as! String
        }
        if dict.keys.contains("Horizontal") {
            self.horizontal = dict["Horizontal"] as! Int64
        }
        if dict.keys.contains("Rotate") {
            self.rotate = dict["Rotate"] as! Double
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! Int64
        }
        if dict.keys.contains("Value") {
            self.value = dict["Value"] as! String
        }
        if dict.keys.contains("Vertical") {
            self.vertical = dict["Vertical"] as! Int64
        }
    }
}

public class AddImageMosaicRequest : Tea.TeaModel {
    public class Targets : Tea.TeaModel {
        public class Boundary : Tea.TeaModel {
            public var height: Double?

            public var referPos: String?

            public var width: Double?

            public var x: Double?

            public var y: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.referPos != nil {
                    map["ReferPos"] = self.referPos!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                if self.x != nil {
                    map["X"] = self.x!
                }
                if self.y != nil {
                    map["Y"] = self.y!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Double
                }
                if dict.keys.contains("ReferPos") {
                    self.referPos = dict["ReferPos"] as! String
                }
                if dict.keys.contains("Width") {
                    self.width = dict["Width"] as! Double
                }
                if dict.keys.contains("X") {
                    self.x = dict["X"] as! Double
                }
                if dict.keys.contains("Y") {
                    self.y = dict["Y"] as! Double
                }
            }
        }
        public var blurRadius: Int32?

        public var boundary: AddImageMosaicRequest.Targets.Boundary?

        public var color: String?

        public var mosaicRadius: Int32?

        public var sigma: Int32?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.boundary?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blurRadius != nil {
                map["BlurRadius"] = self.blurRadius!
            }
            if self.boundary != nil {
                map["Boundary"] = self.boundary?.toMap()
            }
            if self.color != nil {
                map["Color"] = self.color!
            }
            if self.mosaicRadius != nil {
                map["MosaicRadius"] = self.mosaicRadius!
            }
            if self.sigma != nil {
                map["Sigma"] = self.sigma!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BlurRadius") {
                self.blurRadius = dict["BlurRadius"] as! Int32
            }
            if dict.keys.contains("Boundary") {
                var model = AddImageMosaicRequest.Targets.Boundary()
                model.fromMap(dict["Boundary"] as! [String: Any])
                self.boundary = model
            }
            if dict.keys.contains("Color") {
                self.color = dict["Color"] as! String
            }
            if dict.keys.contains("MosaicRadius") {
                self.mosaicRadius = dict["MosaicRadius"] as! Int32
            }
            if dict.keys.contains("Sigma") {
                self.sigma = dict["Sigma"] as! Int32
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var credentialConfig: CredentialConfig?

    public var imageFormat: String?

    public var projectName: String?

    public var quality: Int32?

    public var sourceURI: String?

    public var targetURI: String?

    public var targets: [AddImageMosaicRequest.Targets]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.imageFormat != nil {
            map["ImageFormat"] = self.imageFormat!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.quality != nil {
            map["Quality"] = self.quality!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.targets != nil {
            var tmp : [Any] = []
            for k in self.targets! {
                tmp.append(k.toMap())
            }
            map["Targets"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("ImageFormat") {
            self.imageFormat = dict["ImageFormat"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Quality") {
            self.quality = dict["Quality"] as! Int32
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("Targets") {
            self.targets = dict["Targets"] as! [AddImageMosaicRequest.Targets]
        }
    }
}

public class AddImageMosaicShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var imageFormat: String?

    public var projectName: String?

    public var quality: Int32?

    public var sourceURI: String?

    public var targetURI: String?

    public var targetsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.imageFormat != nil {
            map["ImageFormat"] = self.imageFormat!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.quality != nil {
            map["Quality"] = self.quality!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.targetsShrink != nil {
            map["Targets"] = self.targetsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("ImageFormat") {
            self.imageFormat = dict["ImageFormat"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Quality") {
            self.quality = dict["Quality"] as! Int32
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("Targets") {
            self.targetsShrink = dict["Targets"] as! String
        }
    }
}

public class AddImageMosaicResponseBody : Tea.TeaModel {
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

public class AddImageMosaicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddImageMosaicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = AddImageMosaicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddStoryFilesRequest : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var URI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
        }
    }
    public var datasetName: String?

    public var files: [AddStoryFilesRequest.Files]?

    public var objectId: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [AddStoryFilesRequest.Files]
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class AddStoryFilesShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var filesShrink: String?

    public var objectId: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.filesShrink != nil {
            map["Files"] = self.filesShrink!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Files") {
            self.filesShrink = dict["Files"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class AddStoryFilesResponseBody : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var URI: String?

        public override init() {
            super.init()
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
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
        }
    }
    public var files: [AddStoryFilesResponseBody.Files]?

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
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [AddStoryFilesResponseBody.Files]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddStoryFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddStoryFilesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = AddStoryFilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachOSSBucketRequest : Tea.TeaModel {
    public var OSSBucket: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OSSBucket != nil {
            map["OSSBucket"] = self.OSSBucket!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OSSBucket") {
            self.OSSBucket = dict["OSSBucket"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class AttachOSSBucketResponseBody : Tea.TeaModel {
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

public class AttachOSSBucketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachOSSBucketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = AttachOSSBucketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchDeleteFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public var URIs: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.URIs != nil {
            map["URIs"] = self.URIs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("URIs") {
            self.URIs = dict["URIs"] as! [String]
        }
    }
}

public class BatchDeleteFileMetaShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public var URIsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.URIsShrink != nil {
            map["URIs"] = self.URIsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("URIs") {
            self.URIsShrink = dict["URIs"] as! String
        }
    }
}

public class BatchDeleteFileMetaResponseBody : Tea.TeaModel {
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

public class BatchDeleteFileMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteFileMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = BatchDeleteFileMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchGetFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public var URIs: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.URIs != nil {
            map["URIs"] = self.URIs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("URIs") {
            self.URIs = dict["URIs"] as! [String]
        }
    }
}

public class BatchGetFileMetaShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public var URIsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.URIsShrink != nil {
            map["URIs"] = self.URIsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("URIs") {
            self.URIsShrink = dict["URIs"] as! String
        }
    }
}

public class BatchGetFileMetaResponseBody : Tea.TeaModel {
    public var files: [File]?

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
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [File]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchGetFileMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetFileMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = BatchGetFileMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchIndexFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var files: [FileForReq]?

    public var notifyTopicName: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [FileForReq]
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class BatchIndexFileMetaShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var filesShrink: String?

    public var notifyTopicName: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.filesShrink != nil {
            map["Files"] = self.filesShrink!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Files") {
            self.filesShrink = dict["Files"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class BatchIndexFileMetaResponseBody : Tea.TeaModel {
    public var eventId: String?

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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchIndexFileMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchIndexFileMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = BatchIndexFileMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchUpdateFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var files: [FileForReq]?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [FileForReq]
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class BatchUpdateFileMetaShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var filesShrink: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.filesShrink != nil {
            map["Files"] = self.filesShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Files") {
            self.filesShrink = dict["Files"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class BatchUpdateFileMetaResponseBody : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var message: String?

        public var success: Bool?

        public var URI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Bool
            }
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
        }
    }
    public var files: [BatchUpdateFileMetaResponseBody.Files]?

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
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [BatchUpdateFileMetaResponseBody.Files]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchUpdateFileMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchUpdateFileMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = BatchUpdateFileMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CompareImageFacesRequest : Tea.TeaModel {
    public class Source : Tea.TeaModel {
        public var URI1: String?

        public var URI2: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URI1 != nil {
                map["URI1"] = self.URI1!
            }
            if self.URI2 != nil {
                map["URI2"] = self.URI2!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("URI1") {
                self.URI1 = dict["URI1"] as! String
            }
            if dict.keys.contains("URI2") {
                self.URI2 = dict["URI2"] as! String
            }
        }
    }
    public var credentialConfig: CredentialConfig?

    public var projectName: String?

    public var source: CompareImageFacesRequest.Source?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
        try self.source?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.source != nil {
            map["Source"] = self.source?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Source") {
            var model = CompareImageFacesRequest.Source()
            model.fromMap(dict["Source"] as! [String: Any])
            self.source = model
        }
    }
}

public class CompareImageFacesShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var projectName: String?

    public var sourceShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceShrink != nil {
            map["Source"] = self.sourceShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Source") {
            self.sourceShrink = dict["Source"] as! String
        }
    }
}

public class CompareImageFacesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var similarity: Double?

    public override init() {
        super.init()
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
        if self.similarity != nil {
            map["Similarity"] = self.similarity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Similarity") {
            self.similarity = dict["Similarity"] as! Double
        }
    }
}

public class CompareImageFacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompareImageFacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CompareImageFacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateArchiveFileInspectionTaskRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var notifyTopicName: String?

    public var password: String?

    public var projectName: String?

    public var sourceURI: String?

    public var targetURI: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateArchiveFileInspectionTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var notifyTopicName: String?

    public var password: String?

    public var projectName: String?

    public var sourceURI: String?

    public var targetURI: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateArchiveFileInspectionTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateArchiveFileInspectionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateArchiveFileInspectionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateArchiveFileInspectionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateBindingRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public var URI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("URI") {
            self.URI = dict["URI"] as! String
        }
    }
}

public class CreateBindingResponseBody : Tea.TeaModel {
    public var binding: Binding?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.binding?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.binding != nil {
            map["Binding"] = self.binding?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Binding") {
            var model = Binding()
            model.fromMap(dict["Binding"] as! [String: Any])
            self.binding = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateBindingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBindingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateBindingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCompressPointCloudTaskRequest : Tea.TeaModel {
    public var compressMethod: String?

    public var credentialConfig: CredentialConfig?

    public var kdtreeOption: KdtreeOption?

    public var notifyTopicName: String?

    public var octreeOption: OctreeOption?

    public var pointCloudFields: [String]?

    public var pointCloudFileFormat: String?

    public var projectName: String?

    public var sourceURI: String?

    public var tags: [String: Any]?

    public var targetURI: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
        try self.kdtreeOption?.validate()
        try self.octreeOption?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compressMethod != nil {
            map["CompressMethod"] = self.compressMethod!
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.kdtreeOption != nil {
            map["KdtreeOption"] = self.kdtreeOption?.toMap()
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.octreeOption != nil {
            map["OctreeOption"] = self.octreeOption?.toMap()
        }
        if self.pointCloudFields != nil {
            map["PointCloudFields"] = self.pointCloudFields!
        }
        if self.pointCloudFileFormat != nil {
            map["PointCloudFileFormat"] = self.pointCloudFileFormat!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompressMethod") {
            self.compressMethod = dict["CompressMethod"] as! String
        }
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("KdtreeOption") {
            var model = KdtreeOption()
            model.fromMap(dict["KdtreeOption"] as! [String: Any])
            self.kdtreeOption = model
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("OctreeOption") {
            var model = OctreeOption()
            model.fromMap(dict["OctreeOption"] as! [String: Any])
            self.octreeOption = model
        }
        if dict.keys.contains("PointCloudFields") {
            self.pointCloudFields = dict["PointCloudFields"] as! [String]
        }
        if dict.keys.contains("PointCloudFileFormat") {
            self.pointCloudFileFormat = dict["PointCloudFileFormat"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateCompressPointCloudTaskShrinkRequest : Tea.TeaModel {
    public var compressMethod: String?

    public var credentialConfigShrink: String?

    public var kdtreeOptionShrink: String?

    public var notifyTopicName: String?

    public var octreeOptionShrink: String?

    public var pointCloudFieldsShrink: String?

    public var pointCloudFileFormat: String?

    public var projectName: String?

    public var sourceURI: String?

    public var tagsShrink: String?

    public var targetURI: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compressMethod != nil {
            map["CompressMethod"] = self.compressMethod!
        }
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.kdtreeOptionShrink != nil {
            map["KdtreeOption"] = self.kdtreeOptionShrink!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.octreeOptionShrink != nil {
            map["OctreeOption"] = self.octreeOptionShrink!
        }
        if self.pointCloudFieldsShrink != nil {
            map["PointCloudFields"] = self.pointCloudFieldsShrink!
        }
        if self.pointCloudFileFormat != nil {
            map["PointCloudFileFormat"] = self.pointCloudFileFormat!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompressMethod") {
            self.compressMethod = dict["CompressMethod"] as! String
        }
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("KdtreeOption") {
            self.kdtreeOptionShrink = dict["KdtreeOption"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("OctreeOption") {
            self.octreeOptionShrink = dict["OctreeOption"] as! String
        }
        if dict.keys.contains("PointCloudFields") {
            self.pointCloudFieldsShrink = dict["PointCloudFields"] as! String
        }
        if dict.keys.contains("PointCloudFileFormat") {
            self.pointCloudFileFormat = dict["PointCloudFileFormat"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateCompressPointCloudTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateCompressPointCloudTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCompressPointCloudTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateCompressPointCloudTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomizedStoryRequest : Tea.TeaModel {
    public class Cover : Tea.TeaModel {
        public var URI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
        }
    }
    public class Files : Tea.TeaModel {
        public var URI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
        }
    }
    public var cover: CreateCustomizedStoryRequest.Cover?

    public var customLabels: [String: Any]?

    public var datasetName: String?

    public var files: [CreateCustomizedStoryRequest.Files]?

    public var projectName: String?

    public var storyName: String?

    public var storySubType: String?

    public var storyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cover?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cover != nil {
            map["Cover"] = self.cover?.toMap()
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.storyName != nil {
            map["StoryName"] = self.storyName!
        }
        if self.storySubType != nil {
            map["StorySubType"] = self.storySubType!
        }
        if self.storyType != nil {
            map["StoryType"] = self.storyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cover") {
            var model = CreateCustomizedStoryRequest.Cover()
            model.fromMap(dict["Cover"] as! [String: Any])
            self.cover = model
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! [String: Any]
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [CreateCustomizedStoryRequest.Files]
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("StoryName") {
            self.storyName = dict["StoryName"] as! String
        }
        if dict.keys.contains("StorySubType") {
            self.storySubType = dict["StorySubType"] as! String
        }
        if dict.keys.contains("StoryType") {
            self.storyType = dict["StoryType"] as! String
        }
    }
}

public class CreateCustomizedStoryShrinkRequest : Tea.TeaModel {
    public var coverShrink: String?

    public var customLabelsShrink: String?

    public var datasetName: String?

    public var filesShrink: String?

    public var projectName: String?

    public var storyName: String?

    public var storySubType: String?

    public var storyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coverShrink != nil {
            map["Cover"] = self.coverShrink!
        }
        if self.customLabelsShrink != nil {
            map["CustomLabels"] = self.customLabelsShrink!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.filesShrink != nil {
            map["Files"] = self.filesShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.storyName != nil {
            map["StoryName"] = self.storyName!
        }
        if self.storySubType != nil {
            map["StorySubType"] = self.storySubType!
        }
        if self.storyType != nil {
            map["StoryType"] = self.storyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cover") {
            self.coverShrink = dict["Cover"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabelsShrink = dict["CustomLabels"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Files") {
            self.filesShrink = dict["Files"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("StoryName") {
            self.storyName = dict["StoryName"] as! String
        }
        if dict.keys.contains("StorySubType") {
            self.storySubType = dict["StorySubType"] as! String
        }
        if dict.keys.contains("StoryType") {
            self.storyType = dict["StoryType"] as! String
        }
    }
}

public class CreateCustomizedStoryResponseBody : Tea.TeaModel {
    public var objectId: String?

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
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCustomizedStoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomizedStoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateCustomizedStoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDatasetRequest : Tea.TeaModel {
    public var datasetMaxBindCount: Int64?

    public var datasetMaxEntityCount: Int64?

    public var datasetMaxFileCount: Int64?

    public var datasetMaxRelationCount: Int64?

    public var datasetMaxTotalFileSize: Int64?

    public var datasetName: String?

    public var description_: String?

    public var projectName: String?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetMaxBindCount != nil {
            map["DatasetMaxBindCount"] = self.datasetMaxBindCount!
        }
        if self.datasetMaxEntityCount != nil {
            map["DatasetMaxEntityCount"] = self.datasetMaxEntityCount!
        }
        if self.datasetMaxFileCount != nil {
            map["DatasetMaxFileCount"] = self.datasetMaxFileCount!
        }
        if self.datasetMaxRelationCount != nil {
            map["DatasetMaxRelationCount"] = self.datasetMaxRelationCount!
        }
        if self.datasetMaxTotalFileSize != nil {
            map["DatasetMaxTotalFileSize"] = self.datasetMaxTotalFileSize!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetMaxBindCount") {
            self.datasetMaxBindCount = dict["DatasetMaxBindCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxEntityCount") {
            self.datasetMaxEntityCount = dict["DatasetMaxEntityCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxFileCount") {
            self.datasetMaxFileCount = dict["DatasetMaxFileCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxRelationCount") {
            self.datasetMaxRelationCount = dict["DatasetMaxRelationCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxTotalFileSize") {
            self.datasetMaxTotalFileSize = dict["DatasetMaxTotalFileSize"] as! Int64
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class CreateDatasetResponseBody : Tea.TeaModel {
    public var dataset: Dataset?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataset?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataset != nil {
            map["Dataset"] = self.dataset?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dataset") {
            var model = Dataset()
            model.fromMap(dict["Dataset"] as! [String: Any])
            self.dataset = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatasetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateDatasetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFacesSearchingTaskRequest : Tea.TeaModel {
    public class Sources : Tea.TeaModel {
        public var URI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
        }
    }
    public var datasetName: String?

    public var maxResult: String?

    public var notifyTopicName: String?

    public var projectName: String?

    public var sources: [CreateFacesSearchingTaskRequest.Sources]?

    public var topK: Int64?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.maxResult != nil {
            map["MaxResult"] = self.maxResult!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sources != nil {
            var tmp : [Any] = []
            for k in self.sources! {
                tmp.append(k.toMap())
            }
            map["Sources"] = tmp
        }
        if self.topK != nil {
            map["TopK"] = self.topK!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("MaxResult") {
            self.maxResult = dict["MaxResult"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sources = dict["Sources"] as! [CreateFacesSearchingTaskRequest.Sources]
        }
        if dict.keys.contains("TopK") {
            self.topK = dict["TopK"] as! Int64
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateFacesSearchingTaskShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var maxResult: String?

    public var notifyTopicName: String?

    public var projectName: String?

    public var sourcesShrink: String?

    public var topK: Int64?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.maxResult != nil {
            map["MaxResult"] = self.maxResult!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourcesShrink != nil {
            map["Sources"] = self.sourcesShrink!
        }
        if self.topK != nil {
            map["TopK"] = self.topK!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("MaxResult") {
            self.maxResult = dict["MaxResult"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sourcesShrink = dict["Sources"] as! String
        }
        if dict.keys.contains("TopK") {
            self.topK = dict["TopK"] as! Int64
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateFacesSearchingTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateFacesSearchingTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFacesSearchingTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateFacesSearchingTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFigureClusteringTaskRequest : Tea.TeaModel {
    public var datasetName: String?

    public var notifyTopicName: String?

    public var projectName: String?

    public var tags: [String: Any]?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateFigureClusteringTaskShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var notifyTopicName: String?

    public var projectName: String?

    public var tagsShrink: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateFigureClusteringTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateFigureClusteringTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFigureClusteringTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateFigureClusteringTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFigureClustersMergingTaskRequest : Tea.TeaModel {
    public var datasetName: String?

    public var from: String?

    public var notifyTopicName: String?

    public var projectName: String?

    public var tags: [String: Any]?

    public var to: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateFigureClustersMergingTaskShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var from: String?

    public var notifyTopicName: String?

    public var projectName: String?

    public var tagsShrink: String?

    public var to: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateFigureClustersMergingTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateFigureClustersMergingTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFigureClustersMergingTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateFigureClustersMergingTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFileCompressionTaskRequest : Tea.TeaModel {
    public class Sources : Tea.TeaModel {
        public var alias: String?

        public var URI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alias") {
                self.alias = dict["Alias"] as! String
            }
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
        }
    }
    public var compressedFormat: String?

    public var credentialConfig: CredentialConfig?

    public var notifyTopicName: String?

    public var password: String?

    public var projectName: String?

    public var sourceManifestURI: String?

    public var sources: [CreateFileCompressionTaskRequest.Sources]?

    public var targetURI: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compressedFormat != nil {
            map["CompressedFormat"] = self.compressedFormat!
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceManifestURI != nil {
            map["SourceManifestURI"] = self.sourceManifestURI!
        }
        if self.sources != nil {
            var tmp : [Any] = []
            for k in self.sources! {
                tmp.append(k.toMap())
            }
            map["Sources"] = tmp
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompressedFormat") {
            self.compressedFormat = dict["CompressedFormat"] as! String
        }
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceManifestURI") {
            self.sourceManifestURI = dict["SourceManifestURI"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sources = dict["Sources"] as! [CreateFileCompressionTaskRequest.Sources]
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateFileCompressionTaskShrinkRequest : Tea.TeaModel {
    public var compressedFormat: String?

    public var credentialConfigShrink: String?

    public var notifyTopicName: String?

    public var password: String?

    public var projectName: String?

    public var sourceManifestURI: String?

    public var sourcesShrink: String?

    public var targetURI: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compressedFormat != nil {
            map["CompressedFormat"] = self.compressedFormat!
        }
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceManifestURI != nil {
            map["SourceManifestURI"] = self.sourceManifestURI!
        }
        if self.sourcesShrink != nil {
            map["Sources"] = self.sourcesShrink!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompressedFormat") {
            self.compressedFormat = dict["CompressedFormat"] as! String
        }
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceManifestURI") {
            self.sourceManifestURI = dict["SourceManifestURI"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sourcesShrink = dict["Sources"] as! String
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateFileCompressionTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateFileCompressionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFileCompressionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateFileCompressionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFileUncompressionTaskRequest : Tea.TeaModel {
    public class Target : Tea.TeaModel {
        public var manifestURI: String?

        public var URI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.manifestURI != nil {
                map["ManifestURI"] = self.manifestURI!
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ManifestURI") {
                self.manifestURI = dict["ManifestURI"] as! String
            }
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
        }
    }
    public var credentialConfig: CredentialConfig?

    public var notifyTopicName: String?

    public var password: String?

    public var projectName: String?

    public var selectedFiles: [String]?

    public var sourceURI: String?

    public var target: CreateFileUncompressionTaskRequest.Target?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
        try self.target?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.selectedFiles != nil {
            map["SelectedFiles"] = self.selectedFiles!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.target != nil {
            map["Target"] = self.target?.toMap()
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SelectedFiles") {
            self.selectedFiles = dict["SelectedFiles"] as! [String]
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("Target") {
            var model = CreateFileUncompressionTaskRequest.Target()
            model.fromMap(dict["Target"] as! [String: Any])
            self.target = model
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateFileUncompressionTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var notifyTopicName: String?

    public var password: String?

    public var projectName: String?

    public var selectedFilesShrink: String?

    public var sourceURI: String?

    public var targetShrink: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.selectedFilesShrink != nil {
            map["SelectedFiles"] = self.selectedFilesShrink!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.targetShrink != nil {
            map["Target"] = self.targetShrink!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SelectedFiles") {
            self.selectedFilesShrink = dict["SelectedFiles"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("Target") {
            self.targetShrink = dict["Target"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateFileUncompressionTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateFileUncompressionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFileUncompressionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateFileUncompressionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateImageModerationTaskRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var interval: Int64?

    public var maxFrames: Int64?

    public var notifyTopicName: String?

    public var projectName: String?

    public var reviewer: String?

    public var scenes: [String]?

    public var sourceURI: String?

    public var tags: [String: Any]?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.maxFrames != nil {
            map["MaxFrames"] = self.maxFrames!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.reviewer != nil {
            map["Reviewer"] = self.reviewer!
        }
        if self.scenes != nil {
            map["Scenes"] = self.scenes!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("MaxFrames") {
            self.maxFrames = dict["MaxFrames"] as! Int64
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Reviewer") {
            self.reviewer = dict["Reviewer"] as! String
        }
        if dict.keys.contains("Scenes") {
            self.scenes = dict["Scenes"] as! [String]
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateImageModerationTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var interval: Int64?

    public var maxFrames: Int64?

    public var notifyTopicName: String?

    public var projectName: String?

    public var reviewer: String?

    public var scenesShrink: String?

    public var sourceURI: String?

    public var tagsShrink: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.maxFrames != nil {
            map["MaxFrames"] = self.maxFrames!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.reviewer != nil {
            map["Reviewer"] = self.reviewer!
        }
        if self.scenesShrink != nil {
            map["Scenes"] = self.scenesShrink!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("MaxFrames") {
            self.maxFrames = dict["MaxFrames"] as! Int64
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Reviewer") {
            self.reviewer = dict["Reviewer"] as! String
        }
        if dict.keys.contains("Scenes") {
            self.scenesShrink = dict["Scenes"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateImageModerationTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateImageModerationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageModerationTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateImageModerationTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateImageSplicingTaskRequest : Tea.TeaModel {
    public class Sources : Tea.TeaModel {
        public var rotate: Int64?

        public var URI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rotate != nil {
                map["Rotate"] = self.rotate!
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Rotate") {
                self.rotate = dict["Rotate"] as! Int64
            }
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
        }
    }
    public var align: Int64?

    public var backgroundColor: String?

    public var credentialConfig: CredentialConfig?

    public var direction: String?

    public var imageFormat: String?

    public var margin: Int64?

    public var notifyTopicName: String?

    public var padding: Int64?

    public var projectName: String?

    public var quality: Int64?

    public var scaleType: String?

    public var sources: [CreateImageSplicingTaskRequest.Sources]?

    public var tags: [String: Any]?

    public var targetURI: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.align != nil {
            map["Align"] = self.align!
        }
        if self.backgroundColor != nil {
            map["BackgroundColor"] = self.backgroundColor!
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.imageFormat != nil {
            map["ImageFormat"] = self.imageFormat!
        }
        if self.margin != nil {
            map["Margin"] = self.margin!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.padding != nil {
            map["Padding"] = self.padding!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.quality != nil {
            map["Quality"] = self.quality!
        }
        if self.scaleType != nil {
            map["ScaleType"] = self.scaleType!
        }
        if self.sources != nil {
            var tmp : [Any] = []
            for k in self.sources! {
                tmp.append(k.toMap())
            }
            map["Sources"] = tmp
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Align") {
            self.align = dict["Align"] as! Int64
        }
        if dict.keys.contains("BackgroundColor") {
            self.backgroundColor = dict["BackgroundColor"] as! String
        }
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("ImageFormat") {
            self.imageFormat = dict["ImageFormat"] as! String
        }
        if dict.keys.contains("Margin") {
            self.margin = dict["Margin"] as! Int64
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Padding") {
            self.padding = dict["Padding"] as! Int64
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Quality") {
            self.quality = dict["Quality"] as! Int64
        }
        if dict.keys.contains("ScaleType") {
            self.scaleType = dict["ScaleType"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sources = dict["Sources"] as! [CreateImageSplicingTaskRequest.Sources]
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateImageSplicingTaskShrinkRequest : Tea.TeaModel {
    public var align: Int64?

    public var backgroundColor: String?

    public var credentialConfigShrink: String?

    public var direction: String?

    public var imageFormat: String?

    public var margin: Int64?

    public var notifyTopicName: String?

    public var padding: Int64?

    public var projectName: String?

    public var quality: Int64?

    public var scaleType: String?

    public var sourcesShrink: String?

    public var tagsShrink: String?

    public var targetURI: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.align != nil {
            map["Align"] = self.align!
        }
        if self.backgroundColor != nil {
            map["BackgroundColor"] = self.backgroundColor!
        }
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.direction != nil {
            map["Direction"] = self.direction!
        }
        if self.imageFormat != nil {
            map["ImageFormat"] = self.imageFormat!
        }
        if self.margin != nil {
            map["Margin"] = self.margin!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.padding != nil {
            map["Padding"] = self.padding!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.quality != nil {
            map["Quality"] = self.quality!
        }
        if self.scaleType != nil {
            map["ScaleType"] = self.scaleType!
        }
        if self.sourcesShrink != nil {
            map["Sources"] = self.sourcesShrink!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Align") {
            self.align = dict["Align"] as! Int64
        }
        if dict.keys.contains("BackgroundColor") {
            self.backgroundColor = dict["BackgroundColor"] as! String
        }
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("Direction") {
            self.direction = dict["Direction"] as! String
        }
        if dict.keys.contains("ImageFormat") {
            self.imageFormat = dict["ImageFormat"] as! String
        }
        if dict.keys.contains("Margin") {
            self.margin = dict["Margin"] as! Int64
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Padding") {
            self.padding = dict["Padding"] as! Int64
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Quality") {
            self.quality = dict["Quality"] as! Int64
        }
        if dict.keys.contains("ScaleType") {
            self.scaleType = dict["ScaleType"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sourcesShrink = dict["Sources"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateImageSplicingTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateImageSplicingTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageSplicingTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateImageSplicingTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateImageToPDFTaskRequest : Tea.TeaModel {
    public class Sources : Tea.TeaModel {
        public var rotate: Int64?

        public var URI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rotate != nil {
                map["Rotate"] = self.rotate!
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Rotate") {
                self.rotate = dict["Rotate"] as! Int64
            }
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
        }
    }
    public var credentialConfig: CredentialConfig?

    public var notifyTopicName: String?

    public var projectName: String?

    public var sources: [CreateImageToPDFTaskRequest.Sources]?

    public var tags: [String: Any]?

    public var targetURI: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sources != nil {
            var tmp : [Any] = []
            for k in self.sources! {
                tmp.append(k.toMap())
            }
            map["Sources"] = tmp
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sources = dict["Sources"] as! [CreateImageToPDFTaskRequest.Sources]
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateImageToPDFTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var notifyTopicName: String?

    public var projectName: String?

    public var sourcesShrink: String?

    public var tagsShrink: String?

    public var targetURI: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourcesShrink != nil {
            map["Sources"] = self.sourcesShrink!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sourcesShrink = dict["Sources"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateImageToPDFTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateImageToPDFTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageToPDFTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateImageToPDFTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLocationDateClusteringTaskRequest : Tea.TeaModel {
    public class DateOptions : Tea.TeaModel {
        public var gapDays: Int64?

        public var maxDays: Int64?

        public var minDays: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gapDays != nil {
                map["GapDays"] = self.gapDays!
            }
            if self.maxDays != nil {
                map["MaxDays"] = self.maxDays!
            }
            if self.minDays != nil {
                map["MinDays"] = self.minDays!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GapDays") {
                self.gapDays = dict["GapDays"] as! Int64
            }
            if dict.keys.contains("MaxDays") {
                self.maxDays = dict["MaxDays"] as! Int64
            }
            if dict.keys.contains("MinDays") {
                self.minDays = dict["MinDays"] as! Int64
            }
        }
    }
    public class LocationOptions : Tea.TeaModel {
        public var locationDateClusterLevels: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.locationDateClusterLevels != nil {
                map["LocationDateClusterLevels"] = self.locationDateClusterLevels!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LocationDateClusterLevels") {
                self.locationDateClusterLevels = dict["LocationDateClusterLevels"] as! [String]
            }
        }
    }
    public var datasetName: String?

    public var dateOptions: CreateLocationDateClusteringTaskRequest.DateOptions?

    public var locationOptions: CreateLocationDateClusteringTaskRequest.LocationOptions?

    public var notifyTopicName: String?

    public var projectName: String?

    public var tags: [String: Any]?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dateOptions?.validate()
        try self.locationOptions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.dateOptions != nil {
            map["DateOptions"] = self.dateOptions?.toMap()
        }
        if self.locationOptions != nil {
            map["LocationOptions"] = self.locationOptions?.toMap()
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("DateOptions") {
            var model = CreateLocationDateClusteringTaskRequest.DateOptions()
            model.fromMap(dict["DateOptions"] as! [String: Any])
            self.dateOptions = model
        }
        if dict.keys.contains("LocationOptions") {
            var model = CreateLocationDateClusteringTaskRequest.LocationOptions()
            model.fromMap(dict["LocationOptions"] as! [String: Any])
            self.locationOptions = model
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateLocationDateClusteringTaskShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var dateOptionsShrink: String?

    public var locationOptionsShrink: String?

    public var notifyTopicName: String?

    public var projectName: String?

    public var tagsShrink: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.dateOptionsShrink != nil {
            map["DateOptions"] = self.dateOptionsShrink!
        }
        if self.locationOptionsShrink != nil {
            map["LocationOptions"] = self.locationOptionsShrink!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("DateOptions") {
            self.dateOptionsShrink = dict["DateOptions"] as! String
        }
        if dict.keys.contains("LocationOptions") {
            self.locationOptionsShrink = dict["LocationOptions"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateLocationDateClusteringTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateLocationDateClusteringTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLocationDateClusteringTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateLocationDateClusteringTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMediaConvertTaskRequest : Tea.TeaModel {
    public class Sources : Tea.TeaModel {
        public class Subtitles : Tea.TeaModel {
            public var language: String?

            public var timeOffset: Double?

            public var URI: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.language != nil {
                    map["Language"] = self.language!
                }
                if self.timeOffset != nil {
                    map["TimeOffset"] = self.timeOffset!
                }
                if self.URI != nil {
                    map["URI"] = self.URI!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Language") {
                    self.language = dict["Language"] as! String
                }
                if dict.keys.contains("TimeOffset") {
                    self.timeOffset = dict["TimeOffset"] as! Double
                }
                if dict.keys.contains("URI") {
                    self.URI = dict["URI"] as! String
                }
            }
        }
        public var duration: Double?

        public var startTime: Double?

        public var subtitles: [CreateMediaConvertTaskRequest.Sources.Subtitles]?

        public var URI: String?

        public override init() {
            super.init()
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
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.subtitles != nil {
                var tmp : [Any] = []
                for k in self.subtitles! {
                    tmp.append(k.toMap())
                }
                map["Subtitles"] = tmp
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Duration") {
                self.duration = dict["Duration"] as! Double
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Double
            }
            if dict.keys.contains("Subtitles") {
                self.subtitles = dict["Subtitles"] as! [CreateMediaConvertTaskRequest.Sources.Subtitles]
            }
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
        }
    }
    public class Targets : Tea.TeaModel {
        public class Audio : Tea.TeaModel {
            public class FilterAudio : Tea.TeaModel {
                public var mixing: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mixing != nil {
                        map["Mixing"] = self.mixing!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Mixing") {
                        self.mixing = dict["Mixing"] as! Bool
                    }
                }
            }
            public class TranscodeAudio : Tea.TeaModel {
                public var bitrate: Int32?

                public var bitrateOption: String?

                public var channel: Int32?

                public var codec: String?

                public var quality: Int32?

                public var sampleRate: Int32?

                public var sampleRateOption: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bitrate != nil {
                        map["Bitrate"] = self.bitrate!
                    }
                    if self.bitrateOption != nil {
                        map["BitrateOption"] = self.bitrateOption!
                    }
                    if self.channel != nil {
                        map["Channel"] = self.channel!
                    }
                    if self.codec != nil {
                        map["Codec"] = self.codec!
                    }
                    if self.quality != nil {
                        map["Quality"] = self.quality!
                    }
                    if self.sampleRate != nil {
                        map["SampleRate"] = self.sampleRate!
                    }
                    if self.sampleRateOption != nil {
                        map["SampleRateOption"] = self.sampleRateOption!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Bitrate") {
                        self.bitrate = dict["Bitrate"] as! Int32
                    }
                    if dict.keys.contains("BitrateOption") {
                        self.bitrateOption = dict["BitrateOption"] as! String
                    }
                    if dict.keys.contains("Channel") {
                        self.channel = dict["Channel"] as! Int32
                    }
                    if dict.keys.contains("Codec") {
                        self.codec = dict["Codec"] as! String
                    }
                    if dict.keys.contains("Quality") {
                        self.quality = dict["Quality"] as! Int32
                    }
                    if dict.keys.contains("SampleRate") {
                        self.sampleRate = dict["SampleRate"] as! Int32
                    }
                    if dict.keys.contains("SampleRateOption") {
                        self.sampleRateOption = dict["SampleRateOption"] as! String
                    }
                }
            }
            public var disableAudio: Bool?

            public var filterAudio: CreateMediaConvertTaskRequest.Targets.Audio.FilterAudio?

            public var transcodeAudio: CreateMediaConvertTaskRequest.Targets.Audio.TranscodeAudio?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.filterAudio?.validate()
                try self.transcodeAudio?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.disableAudio != nil {
                    map["DisableAudio"] = self.disableAudio!
                }
                if self.filterAudio != nil {
                    map["FilterAudio"] = self.filterAudio?.toMap()
                }
                if self.transcodeAudio != nil {
                    map["TranscodeAudio"] = self.transcodeAudio?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DisableAudio") {
                    self.disableAudio = dict["DisableAudio"] as! Bool
                }
                if dict.keys.contains("FilterAudio") {
                    var model = CreateMediaConvertTaskRequest.Targets.Audio.FilterAudio()
                    model.fromMap(dict["FilterAudio"] as! [String: Any])
                    self.filterAudio = model
                }
                if dict.keys.contains("TranscodeAudio") {
                    var model = CreateMediaConvertTaskRequest.Targets.Audio.TranscodeAudio()
                    model.fromMap(dict["TranscodeAudio"] as! [String: Any])
                    self.transcodeAudio = model
                }
            }
        }
        public class Image : Tea.TeaModel {
            public class Snapshots : Tea.TeaModel {
                public var format: String?

                public var height: Int32?

                public var interval: Double?

                public var number: Int32?

                public var scaleType: String?

                public var startTime: Double?

                public var URI: String?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.format != nil {
                        map["Format"] = self.format!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.interval != nil {
                        map["Interval"] = self.interval!
                    }
                    if self.number != nil {
                        map["Number"] = self.number!
                    }
                    if self.scaleType != nil {
                        map["ScaleType"] = self.scaleType!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.URI != nil {
                        map["URI"] = self.URI!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Format") {
                        self.format = dict["Format"] as! String
                    }
                    if dict.keys.contains("Height") {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Interval") {
                        self.interval = dict["Interval"] as! Double
                    }
                    if dict.keys.contains("Number") {
                        self.number = dict["Number"] as! Int32
                    }
                    if dict.keys.contains("ScaleType") {
                        self.scaleType = dict["ScaleType"] as! String
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! Double
                    }
                    if dict.keys.contains("URI") {
                        self.URI = dict["URI"] as! String
                    }
                    if dict.keys.contains("Width") {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public class Sprites : Tea.TeaModel {
                public var format: String?

                public var interval: Double?

                public var margin: Int32?

                public var number: Int32?

                public var pad: Int32?

                public var scaleHeight: Double?

                public var scaleType: String?

                public var scaleWidth: Double?

                public var startTime: Double?

                public var tileHeight: Int32?

                public var tileWidth: Int32?

                public var URI: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.format != nil {
                        map["Format"] = self.format!
                    }
                    if self.interval != nil {
                        map["Interval"] = self.interval!
                    }
                    if self.margin != nil {
                        map["Margin"] = self.margin!
                    }
                    if self.number != nil {
                        map["Number"] = self.number!
                    }
                    if self.pad != nil {
                        map["Pad"] = self.pad!
                    }
                    if self.scaleHeight != nil {
                        map["ScaleHeight"] = self.scaleHeight!
                    }
                    if self.scaleType != nil {
                        map["ScaleType"] = self.scaleType!
                    }
                    if self.scaleWidth != nil {
                        map["ScaleWidth"] = self.scaleWidth!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.tileHeight != nil {
                        map["TileHeight"] = self.tileHeight!
                    }
                    if self.tileWidth != nil {
                        map["TileWidth"] = self.tileWidth!
                    }
                    if self.URI != nil {
                        map["URI"] = self.URI!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Format") {
                        self.format = dict["Format"] as! String
                    }
                    if dict.keys.contains("Interval") {
                        self.interval = dict["Interval"] as! Double
                    }
                    if dict.keys.contains("Margin") {
                        self.margin = dict["Margin"] as! Int32
                    }
                    if dict.keys.contains("Number") {
                        self.number = dict["Number"] as! Int32
                    }
                    if dict.keys.contains("Pad") {
                        self.pad = dict["Pad"] as! Int32
                    }
                    if dict.keys.contains("ScaleHeight") {
                        self.scaleHeight = dict["ScaleHeight"] as! Double
                    }
                    if dict.keys.contains("ScaleType") {
                        self.scaleType = dict["ScaleType"] as! String
                    }
                    if dict.keys.contains("ScaleWidth") {
                        self.scaleWidth = dict["ScaleWidth"] as! Double
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! Double
                    }
                    if dict.keys.contains("TileHeight") {
                        self.tileHeight = dict["TileHeight"] as! Int32
                    }
                    if dict.keys.contains("TileWidth") {
                        self.tileWidth = dict["TileWidth"] as! Int32
                    }
                    if dict.keys.contains("URI") {
                        self.URI = dict["URI"] as! String
                    }
                }
            }
            public var snapshots: [CreateMediaConvertTaskRequest.Targets.Image.Snapshots]?

            public var sprites: [CreateMediaConvertTaskRequest.Targets.Image.Sprites]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.snapshots != nil {
                    var tmp : [Any] = []
                    for k in self.snapshots! {
                        tmp.append(k.toMap())
                    }
                    map["Snapshots"] = tmp
                }
                if self.sprites != nil {
                    var tmp : [Any] = []
                    for k in self.sprites! {
                        tmp.append(k.toMap())
                    }
                    map["Sprites"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Snapshots") {
                    self.snapshots = dict["Snapshots"] as! [CreateMediaConvertTaskRequest.Targets.Image.Snapshots]
                }
                if dict.keys.contains("Sprites") {
                    self.sprites = dict["Sprites"] as! [CreateMediaConvertTaskRequest.Targets.Image.Sprites]
                }
            }
        }
        public class Segment : Tea.TeaModel {
            public var duration: Double?

            public var format: String?

            public var startNumber: Int32?

            public override init() {
                super.init()
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
                if self.format != nil {
                    map["Format"] = self.format!
                }
                if self.startNumber != nil {
                    map["StartNumber"] = self.startNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! Double
                }
                if dict.keys.contains("Format") {
                    self.format = dict["Format"] as! String
                }
                if dict.keys.contains("StartNumber") {
                    self.startNumber = dict["StartNumber"] as! Int32
                }
            }
        }
        public class Subtitle : Tea.TeaModel {
            public class ExtractSubtitle : Tea.TeaModel {
                public var format: String?

                public var URI: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.format != nil {
                        map["Format"] = self.format!
                    }
                    if self.URI != nil {
                        map["URI"] = self.URI!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Format") {
                        self.format = dict["Format"] as! String
                    }
                    if dict.keys.contains("URI") {
                        self.URI = dict["URI"] as! String
                    }
                }
            }
            public var disableSubtitle: Bool?

            public var extractSubtitle: CreateMediaConvertTaskRequest.Targets.Subtitle.ExtractSubtitle?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.extractSubtitle?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.disableSubtitle != nil {
                    map["DisableSubtitle"] = self.disableSubtitle!
                }
                if self.extractSubtitle != nil {
                    map["ExtractSubtitle"] = self.extractSubtitle?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DisableSubtitle") {
                    self.disableSubtitle = dict["DisableSubtitle"] as! Bool
                }
                if dict.keys.contains("ExtractSubtitle") {
                    var model = CreateMediaConvertTaskRequest.Targets.Subtitle.ExtractSubtitle()
                    model.fromMap(dict["ExtractSubtitle"] as! [String: Any])
                    self.extractSubtitle = model
                }
            }
        }
        public class Video : Tea.TeaModel {
            public class FilterVideo : Tea.TeaModel {
                public class Delogos : Tea.TeaModel {
                    public var duration: Double?

                    public var dx: Double?

                    public var dy: Double?

                    public var height: Double?

                    public var referPos: String?

                    public var startTime: Double?

                    public var width: Double?

                    public override init() {
                        super.init()
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
                        if self.dx != nil {
                            map["Dx"] = self.dx!
                        }
                        if self.dy != nil {
                            map["Dy"] = self.dy!
                        }
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.referPos != nil {
                            map["ReferPos"] = self.referPos!
                        }
                        if self.startTime != nil {
                            map["StartTime"] = self.startTime!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Duration") {
                            self.duration = dict["Duration"] as! Double
                        }
                        if dict.keys.contains("Dx") {
                            self.dx = dict["Dx"] as! Double
                        }
                        if dict.keys.contains("Dy") {
                            self.dy = dict["Dy"] as! Double
                        }
                        if dict.keys.contains("Height") {
                            self.height = dict["Height"] as! Double
                        }
                        if dict.keys.contains("ReferPos") {
                            self.referPos = dict["ReferPos"] as! String
                        }
                        if dict.keys.contains("StartTime") {
                            self.startTime = dict["StartTime"] as! Double
                        }
                        if dict.keys.contains("Width") {
                            self.width = dict["Width"] as! Double
                        }
                    }
                }
                public class Watermarks : Tea.TeaModel {
                    public var borderColor: String?

                    public var borderWidth: Int32?

                    public var content: String?

                    public var duration: Double?

                    public var dx: Double?

                    public var dy: Double?

                    public var fontApha: Double?

                    public var fontColor: String?

                    public var fontName: String?

                    public var fontSize: Int32?

                    public var height: Double?

                    public var referPos: String?

                    public var startTime: Double?

                    public var type: String?

                    public var URI: String?

                    public var width: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.borderColor != nil {
                            map["BorderColor"] = self.borderColor!
                        }
                        if self.borderWidth != nil {
                            map["BorderWidth"] = self.borderWidth!
                        }
                        if self.content != nil {
                            map["Content"] = self.content!
                        }
                        if self.duration != nil {
                            map["Duration"] = self.duration!
                        }
                        if self.dx != nil {
                            map["Dx"] = self.dx!
                        }
                        if self.dy != nil {
                            map["Dy"] = self.dy!
                        }
                        if self.fontApha != nil {
                            map["FontApha"] = self.fontApha!
                        }
                        if self.fontColor != nil {
                            map["FontColor"] = self.fontColor!
                        }
                        if self.fontName != nil {
                            map["FontName"] = self.fontName!
                        }
                        if self.fontSize != nil {
                            map["FontSize"] = self.fontSize!
                        }
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.referPos != nil {
                            map["ReferPos"] = self.referPos!
                        }
                        if self.startTime != nil {
                            map["StartTime"] = self.startTime!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.URI != nil {
                            map["URI"] = self.URI!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("BorderColor") {
                            self.borderColor = dict["BorderColor"] as! String
                        }
                        if dict.keys.contains("BorderWidth") {
                            self.borderWidth = dict["BorderWidth"] as! Int32
                        }
                        if dict.keys.contains("Content") {
                            self.content = dict["Content"] as! String
                        }
                        if dict.keys.contains("Duration") {
                            self.duration = dict["Duration"] as! Double
                        }
                        if dict.keys.contains("Dx") {
                            self.dx = dict["Dx"] as! Double
                        }
                        if dict.keys.contains("Dy") {
                            self.dy = dict["Dy"] as! Double
                        }
                        if dict.keys.contains("FontApha") {
                            self.fontApha = dict["FontApha"] as! Double
                        }
                        if dict.keys.contains("FontColor") {
                            self.fontColor = dict["FontColor"] as! String
                        }
                        if dict.keys.contains("FontName") {
                            self.fontName = dict["FontName"] as! String
                        }
                        if dict.keys.contains("FontSize") {
                            self.fontSize = dict["FontSize"] as! Int32
                        }
                        if dict.keys.contains("Height") {
                            self.height = dict["Height"] as! Double
                        }
                        if dict.keys.contains("ReferPos") {
                            self.referPos = dict["ReferPos"] as! String
                        }
                        if dict.keys.contains("StartTime") {
                            self.startTime = dict["StartTime"] as! Double
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("URI") {
                            self.URI = dict["URI"] as! String
                        }
                        if dict.keys.contains("Width") {
                            self.width = dict["Width"] as! Double
                        }
                    }
                }
                public var delogos: [CreateMediaConvertTaskRequest.Targets.Video.FilterVideo.Delogos]?

                public var watermarks: [CreateMediaConvertTaskRequest.Targets.Video.FilterVideo.Watermarks]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.delogos != nil {
                        var tmp : [Any] = []
                        for k in self.delogos! {
                            tmp.append(k.toMap())
                        }
                        map["Delogos"] = tmp
                    }
                    if self.watermarks != nil {
                        var tmp : [Any] = []
                        for k in self.watermarks! {
                            tmp.append(k.toMap())
                        }
                        map["Watermarks"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Delogos") {
                        self.delogos = dict["Delogos"] as! [CreateMediaConvertTaskRequest.Targets.Video.FilterVideo.Delogos]
                    }
                    if dict.keys.contains("Watermarks") {
                        self.watermarks = dict["Watermarks"] as! [CreateMediaConvertTaskRequest.Targets.Video.FilterVideo.Watermarks]
                    }
                }
            }
            public class TranscodeVideo : Tea.TeaModel {
                public var adaptiveResolutionDirection: Bool?

                public var BFrames: Int32?

                public var bitrate: Int32?

                public var bitrateOption: String?

                public var bufferSize: Int32?

                public var CRF: Double?

                public var codec: String?

                public var frameRate: Double?

                public var frameRateOption: String?

                public var GOPSize: Int32?

                public var maxBitrate: Int32?

                public var pixelFormat: String?

                public var refs: Int32?

                public var resolution: String?

                public var resolutionOption: String?

                public var rotation: Int32?

                public var scaleType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.adaptiveResolutionDirection != nil {
                        map["AdaptiveResolutionDirection"] = self.adaptiveResolutionDirection!
                    }
                    if self.BFrames != nil {
                        map["BFrames"] = self.BFrames!
                    }
                    if self.bitrate != nil {
                        map["Bitrate"] = self.bitrate!
                    }
                    if self.bitrateOption != nil {
                        map["BitrateOption"] = self.bitrateOption!
                    }
                    if self.bufferSize != nil {
                        map["BufferSize"] = self.bufferSize!
                    }
                    if self.CRF != nil {
                        map["CRF"] = self.CRF!
                    }
                    if self.codec != nil {
                        map["Codec"] = self.codec!
                    }
                    if self.frameRate != nil {
                        map["FrameRate"] = self.frameRate!
                    }
                    if self.frameRateOption != nil {
                        map["FrameRateOption"] = self.frameRateOption!
                    }
                    if self.GOPSize != nil {
                        map["GOPSize"] = self.GOPSize!
                    }
                    if self.maxBitrate != nil {
                        map["MaxBitrate"] = self.maxBitrate!
                    }
                    if self.pixelFormat != nil {
                        map["PixelFormat"] = self.pixelFormat!
                    }
                    if self.refs != nil {
                        map["Refs"] = self.refs!
                    }
                    if self.resolution != nil {
                        map["Resolution"] = self.resolution!
                    }
                    if self.resolutionOption != nil {
                        map["ResolutionOption"] = self.resolutionOption!
                    }
                    if self.rotation != nil {
                        map["Rotation"] = self.rotation!
                    }
                    if self.scaleType != nil {
                        map["ScaleType"] = self.scaleType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AdaptiveResolutionDirection") {
                        self.adaptiveResolutionDirection = dict["AdaptiveResolutionDirection"] as! Bool
                    }
                    if dict.keys.contains("BFrames") {
                        self.BFrames = dict["BFrames"] as! Int32
                    }
                    if dict.keys.contains("Bitrate") {
                        self.bitrate = dict["Bitrate"] as! Int32
                    }
                    if dict.keys.contains("BitrateOption") {
                        self.bitrateOption = dict["BitrateOption"] as! String
                    }
                    if dict.keys.contains("BufferSize") {
                        self.bufferSize = dict["BufferSize"] as! Int32
                    }
                    if dict.keys.contains("CRF") {
                        self.CRF = dict["CRF"] as! Double
                    }
                    if dict.keys.contains("Codec") {
                        self.codec = dict["Codec"] as! String
                    }
                    if dict.keys.contains("FrameRate") {
                        self.frameRate = dict["FrameRate"] as! Double
                    }
                    if dict.keys.contains("FrameRateOption") {
                        self.frameRateOption = dict["FrameRateOption"] as! String
                    }
                    if dict.keys.contains("GOPSize") {
                        self.GOPSize = dict["GOPSize"] as! Int32
                    }
                    if dict.keys.contains("MaxBitrate") {
                        self.maxBitrate = dict["MaxBitrate"] as! Int32
                    }
                    if dict.keys.contains("PixelFormat") {
                        self.pixelFormat = dict["PixelFormat"] as! String
                    }
                    if dict.keys.contains("Refs") {
                        self.refs = dict["Refs"] as! Int32
                    }
                    if dict.keys.contains("Resolution") {
                        self.resolution = dict["Resolution"] as! String
                    }
                    if dict.keys.contains("ResolutionOption") {
                        self.resolutionOption = dict["ResolutionOption"] as! String
                    }
                    if dict.keys.contains("Rotation") {
                        self.rotation = dict["Rotation"] as! Int32
                    }
                    if dict.keys.contains("ScaleType") {
                        self.scaleType = dict["ScaleType"] as! String
                    }
                }
            }
            public var disableVideo: Bool?

            public var filterVideo: CreateMediaConvertTaskRequest.Targets.Video.FilterVideo?

            public var transcodeVideo: CreateMediaConvertTaskRequest.Targets.Video.TranscodeVideo?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.filterVideo?.validate()
                try self.transcodeVideo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.disableVideo != nil {
                    map["DisableVideo"] = self.disableVideo!
                }
                if self.filterVideo != nil {
                    map["FilterVideo"] = self.filterVideo?.toMap()
                }
                if self.transcodeVideo != nil {
                    map["TranscodeVideo"] = self.transcodeVideo?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DisableVideo") {
                    self.disableVideo = dict["DisableVideo"] as! Bool
                }
                if dict.keys.contains("FilterVideo") {
                    var model = CreateMediaConvertTaskRequest.Targets.Video.FilterVideo()
                    model.fromMap(dict["FilterVideo"] as! [String: Any])
                    self.filterVideo = model
                }
                if dict.keys.contains("TranscodeVideo") {
                    var model = CreateMediaConvertTaskRequest.Targets.Video.TranscodeVideo()
                    model.fromMap(dict["TranscodeVideo"] as! [String: Any])
                    self.transcodeVideo = model
                }
            }
        }
        public var audio: CreateMediaConvertTaskRequest.Targets.Audio?

        public var container: String?

        public var image: CreateMediaConvertTaskRequest.Targets.Image?

        public var preset: PresetReference?

        public var segment: CreateMediaConvertTaskRequest.Targets.Segment?

        public var speed: Double?

        public var subtitle: CreateMediaConvertTaskRequest.Targets.Subtitle?

        public var URI: String?

        public var video: CreateMediaConvertTaskRequest.Targets.Video?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.audio?.validate()
            try self.image?.validate()
            try self.preset?.validate()
            try self.segment?.validate()
            try self.subtitle?.validate()
            try self.video?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audio != nil {
                map["Audio"] = self.audio?.toMap()
            }
            if self.container != nil {
                map["Container"] = self.container!
            }
            if self.image != nil {
                map["Image"] = self.image?.toMap()
            }
            if self.preset != nil {
                map["Preset"] = self.preset?.toMap()
            }
            if self.segment != nil {
                map["Segment"] = self.segment?.toMap()
            }
            if self.speed != nil {
                map["Speed"] = self.speed!
            }
            if self.subtitle != nil {
                map["Subtitle"] = self.subtitle?.toMap()
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            if self.video != nil {
                map["Video"] = self.video?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Audio") {
                var model = CreateMediaConvertTaskRequest.Targets.Audio()
                model.fromMap(dict["Audio"] as! [String: Any])
                self.audio = model
            }
            if dict.keys.contains("Container") {
                self.container = dict["Container"] as! String
            }
            if dict.keys.contains("Image") {
                var model = CreateMediaConvertTaskRequest.Targets.Image()
                model.fromMap(dict["Image"] as! [String: Any])
                self.image = model
            }
            if dict.keys.contains("Preset") {
                var model = PresetReference()
                model.fromMap(dict["Preset"] as! [String: Any])
                self.preset = model
            }
            if dict.keys.contains("Segment") {
                var model = CreateMediaConvertTaskRequest.Targets.Segment()
                model.fromMap(dict["Segment"] as! [String: Any])
                self.segment = model
            }
            if dict.keys.contains("Speed") {
                self.speed = dict["Speed"] as! Double
            }
            if dict.keys.contains("Subtitle") {
                var model = CreateMediaConvertTaskRequest.Targets.Subtitle()
                model.fromMap(dict["Subtitle"] as! [String: Any])
                self.subtitle = model
            }
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
            if dict.keys.contains("Video") {
                var model = CreateMediaConvertTaskRequest.Targets.Video()
                model.fromMap(dict["Video"] as! [String: Any])
                self.video = model
            }
        }
    }
    public var credentialConfig: CredentialConfig?

    public var notifyTopicName: String?

    public var projectName: String?

    public var sources: [CreateMediaConvertTaskRequest.Sources]?

    public var tags: [String: Any]?

    public var targets: [CreateMediaConvertTaskRequest.Targets]?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sources != nil {
            var tmp : [Any] = []
            for k in self.sources! {
                tmp.append(k.toMap())
            }
            map["Sources"] = tmp
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.targets != nil {
            var tmp : [Any] = []
            for k in self.targets! {
                tmp.append(k.toMap())
            }
            map["Targets"] = tmp
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sources = dict["Sources"] as! [CreateMediaConvertTaskRequest.Sources]
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("Targets") {
            self.targets = dict["Targets"] as! [CreateMediaConvertTaskRequest.Targets]
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateMediaConvertTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var notifyTopicName: String?

    public var projectName: String?

    public var sourcesShrink: String?

    public var tagsShrink: String?

    public var targetsShrink: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourcesShrink != nil {
            map["Sources"] = self.sourcesShrink!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.targetsShrink != nil {
            map["Targets"] = self.targetsShrink!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sources") {
            self.sourcesShrink = dict["Sources"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("Targets") {
            self.targetsShrink = dict["Targets"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateMediaConvertTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateMediaConvertTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMediaConvertTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateMediaConvertTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOfficeConversionTaskRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var endPage: Int64?

    public var firstPage: Bool?

    public var fitToHeight: Bool?

    public var fitToWidth: Bool?

    public var holdLineFeed: Bool?

    public var imageDPI: Int64?

    public var longPicture: Bool?

    public var longText: Bool?

    public var maxSheetColumn: Int64?

    public var maxSheetRow: Int64?

    public var notifyTopicName: String?

    public var pages: String?

    public var paperHorizontal: Bool?

    public var paperSize: String?

    public var password: String?

    public var projectName: String?

    public var quality: Int64?

    public var scalePercentage: Int64?

    public var sheetCount: Int64?

    public var sheetIndex: Int64?

    public var showComments: Bool?

    public var sourceType: String?

    public var sourceURI: String?

    public var startPage: Int64?

    public var tags: [String: Any]?

    public var targetType: String?

    public var targetURI: String?

    public var targetURIPrefix: String?

    public var trimPolicy: TrimPolicy?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
        try self.trimPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.endPage != nil {
            map["EndPage"] = self.endPage!
        }
        if self.firstPage != nil {
            map["FirstPage"] = self.firstPage!
        }
        if self.fitToHeight != nil {
            map["FitToHeight"] = self.fitToHeight!
        }
        if self.fitToWidth != nil {
            map["FitToWidth"] = self.fitToWidth!
        }
        if self.holdLineFeed != nil {
            map["HoldLineFeed"] = self.holdLineFeed!
        }
        if self.imageDPI != nil {
            map["ImageDPI"] = self.imageDPI!
        }
        if self.longPicture != nil {
            map["LongPicture"] = self.longPicture!
        }
        if self.longText != nil {
            map["LongText"] = self.longText!
        }
        if self.maxSheetColumn != nil {
            map["MaxSheetColumn"] = self.maxSheetColumn!
        }
        if self.maxSheetRow != nil {
            map["MaxSheetRow"] = self.maxSheetRow!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.paperHorizontal != nil {
            map["PaperHorizontal"] = self.paperHorizontal!
        }
        if self.paperSize != nil {
            map["PaperSize"] = self.paperSize!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.quality != nil {
            map["Quality"] = self.quality!
        }
        if self.scalePercentage != nil {
            map["ScalePercentage"] = self.scalePercentage!
        }
        if self.sheetCount != nil {
            map["SheetCount"] = self.sheetCount!
        }
        if self.sheetIndex != nil {
            map["SheetIndex"] = self.sheetIndex!
        }
        if self.showComments != nil {
            map["ShowComments"] = self.showComments!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.startPage != nil {
            map["StartPage"] = self.startPage!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.targetURIPrefix != nil {
            map["TargetURIPrefix"] = self.targetURIPrefix!
        }
        if self.trimPolicy != nil {
            map["TrimPolicy"] = self.trimPolicy?.toMap()
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("EndPage") {
            self.endPage = dict["EndPage"] as! Int64
        }
        if dict.keys.contains("FirstPage") {
            self.firstPage = dict["FirstPage"] as! Bool
        }
        if dict.keys.contains("FitToHeight") {
            self.fitToHeight = dict["FitToHeight"] as! Bool
        }
        if dict.keys.contains("FitToWidth") {
            self.fitToWidth = dict["FitToWidth"] as! Bool
        }
        if dict.keys.contains("HoldLineFeed") {
            self.holdLineFeed = dict["HoldLineFeed"] as! Bool
        }
        if dict.keys.contains("ImageDPI") {
            self.imageDPI = dict["ImageDPI"] as! Int64
        }
        if dict.keys.contains("LongPicture") {
            self.longPicture = dict["LongPicture"] as! Bool
        }
        if dict.keys.contains("LongText") {
            self.longText = dict["LongText"] as! Bool
        }
        if dict.keys.contains("MaxSheetColumn") {
            self.maxSheetColumn = dict["MaxSheetColumn"] as! Int64
        }
        if dict.keys.contains("MaxSheetRow") {
            self.maxSheetRow = dict["MaxSheetRow"] as! Int64
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Pages") {
            self.pages = dict["Pages"] as! String
        }
        if dict.keys.contains("PaperHorizontal") {
            self.paperHorizontal = dict["PaperHorizontal"] as! Bool
        }
        if dict.keys.contains("PaperSize") {
            self.paperSize = dict["PaperSize"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Quality") {
            self.quality = dict["Quality"] as! Int64
        }
        if dict.keys.contains("ScalePercentage") {
            self.scalePercentage = dict["ScalePercentage"] as! Int64
        }
        if dict.keys.contains("SheetCount") {
            self.sheetCount = dict["SheetCount"] as! Int64
        }
        if dict.keys.contains("SheetIndex") {
            self.sheetIndex = dict["SheetIndex"] as! Int64
        }
        if dict.keys.contains("ShowComments") {
            self.showComments = dict["ShowComments"] as! Bool
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("StartPage") {
            self.startPage = dict["StartPage"] as! Int64
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("TargetURIPrefix") {
            self.targetURIPrefix = dict["TargetURIPrefix"] as! String
        }
        if dict.keys.contains("TrimPolicy") {
            var model = TrimPolicy()
            model.fromMap(dict["TrimPolicy"] as! [String: Any])
            self.trimPolicy = model
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateOfficeConversionTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var endPage: Int64?

    public var firstPage: Bool?

    public var fitToHeight: Bool?

    public var fitToWidth: Bool?

    public var holdLineFeed: Bool?

    public var imageDPI: Int64?

    public var longPicture: Bool?

    public var longText: Bool?

    public var maxSheetColumn: Int64?

    public var maxSheetRow: Int64?

    public var notifyTopicName: String?

    public var pages: String?

    public var paperHorizontal: Bool?

    public var paperSize: String?

    public var password: String?

    public var projectName: String?

    public var quality: Int64?

    public var scalePercentage: Int64?

    public var sheetCount: Int64?

    public var sheetIndex: Int64?

    public var showComments: Bool?

    public var sourceType: String?

    public var sourceURI: String?

    public var startPage: Int64?

    public var tagsShrink: String?

    public var targetType: String?

    public var targetURI: String?

    public var targetURIPrefix: String?

    public var trimPolicyShrink: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.endPage != nil {
            map["EndPage"] = self.endPage!
        }
        if self.firstPage != nil {
            map["FirstPage"] = self.firstPage!
        }
        if self.fitToHeight != nil {
            map["FitToHeight"] = self.fitToHeight!
        }
        if self.fitToWidth != nil {
            map["FitToWidth"] = self.fitToWidth!
        }
        if self.holdLineFeed != nil {
            map["HoldLineFeed"] = self.holdLineFeed!
        }
        if self.imageDPI != nil {
            map["ImageDPI"] = self.imageDPI!
        }
        if self.longPicture != nil {
            map["LongPicture"] = self.longPicture!
        }
        if self.longText != nil {
            map["LongText"] = self.longText!
        }
        if self.maxSheetColumn != nil {
            map["MaxSheetColumn"] = self.maxSheetColumn!
        }
        if self.maxSheetRow != nil {
            map["MaxSheetRow"] = self.maxSheetRow!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.paperHorizontal != nil {
            map["PaperHorizontal"] = self.paperHorizontal!
        }
        if self.paperSize != nil {
            map["PaperSize"] = self.paperSize!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.quality != nil {
            map["Quality"] = self.quality!
        }
        if self.scalePercentage != nil {
            map["ScalePercentage"] = self.scalePercentage!
        }
        if self.sheetCount != nil {
            map["SheetCount"] = self.sheetCount!
        }
        if self.sheetIndex != nil {
            map["SheetIndex"] = self.sheetIndex!
        }
        if self.showComments != nil {
            map["ShowComments"] = self.showComments!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.startPage != nil {
            map["StartPage"] = self.startPage!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.targetURIPrefix != nil {
            map["TargetURIPrefix"] = self.targetURIPrefix!
        }
        if self.trimPolicyShrink != nil {
            map["TrimPolicy"] = self.trimPolicyShrink!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("EndPage") {
            self.endPage = dict["EndPage"] as! Int64
        }
        if dict.keys.contains("FirstPage") {
            self.firstPage = dict["FirstPage"] as! Bool
        }
        if dict.keys.contains("FitToHeight") {
            self.fitToHeight = dict["FitToHeight"] as! Bool
        }
        if dict.keys.contains("FitToWidth") {
            self.fitToWidth = dict["FitToWidth"] as! Bool
        }
        if dict.keys.contains("HoldLineFeed") {
            self.holdLineFeed = dict["HoldLineFeed"] as! Bool
        }
        if dict.keys.contains("ImageDPI") {
            self.imageDPI = dict["ImageDPI"] as! Int64
        }
        if dict.keys.contains("LongPicture") {
            self.longPicture = dict["LongPicture"] as! Bool
        }
        if dict.keys.contains("LongText") {
            self.longText = dict["LongText"] as! Bool
        }
        if dict.keys.contains("MaxSheetColumn") {
            self.maxSheetColumn = dict["MaxSheetColumn"] as! Int64
        }
        if dict.keys.contains("MaxSheetRow") {
            self.maxSheetRow = dict["MaxSheetRow"] as! Int64
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Pages") {
            self.pages = dict["Pages"] as! String
        }
        if dict.keys.contains("PaperHorizontal") {
            self.paperHorizontal = dict["PaperHorizontal"] as! Bool
        }
        if dict.keys.contains("PaperSize") {
            self.paperSize = dict["PaperSize"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Quality") {
            self.quality = dict["Quality"] as! Int64
        }
        if dict.keys.contains("ScalePercentage") {
            self.scalePercentage = dict["ScalePercentage"] as! Int64
        }
        if dict.keys.contains("SheetCount") {
            self.sheetCount = dict["SheetCount"] as! Int64
        }
        if dict.keys.contains("SheetIndex") {
            self.sheetIndex = dict["SheetIndex"] as! Int64
        }
        if dict.keys.contains("ShowComments") {
            self.showComments = dict["ShowComments"] as! Bool
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("StartPage") {
            self.startPage = dict["StartPage"] as! Int64
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
        if dict.keys.contains("TargetURI") {
            self.targetURI = dict["TargetURI"] as! String
        }
        if dict.keys.contains("TargetURIPrefix") {
            self.targetURIPrefix = dict["TargetURIPrefix"] as! String
        }
        if dict.keys.contains("TrimPolicy") {
            self.trimPolicyShrink = dict["TrimPolicy"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateOfficeConversionTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateOfficeConversionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOfficeConversionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateOfficeConversionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
    public var datasetMaxBindCount: Int64?

    public var datasetMaxEntityCount: Int64?

    public var datasetMaxFileCount: Int64?

    public var datasetMaxRelationCount: Int64?

    public var datasetMaxTotalFileSize: Int64?

    public var description_: String?

    public var projectMaxDatasetCount: Int64?

    public var projectName: String?

    public var serviceRole: String?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetMaxBindCount != nil {
            map["DatasetMaxBindCount"] = self.datasetMaxBindCount!
        }
        if self.datasetMaxEntityCount != nil {
            map["DatasetMaxEntityCount"] = self.datasetMaxEntityCount!
        }
        if self.datasetMaxFileCount != nil {
            map["DatasetMaxFileCount"] = self.datasetMaxFileCount!
        }
        if self.datasetMaxRelationCount != nil {
            map["DatasetMaxRelationCount"] = self.datasetMaxRelationCount!
        }
        if self.datasetMaxTotalFileSize != nil {
            map["DatasetMaxTotalFileSize"] = self.datasetMaxTotalFileSize!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.projectMaxDatasetCount != nil {
            map["ProjectMaxDatasetCount"] = self.projectMaxDatasetCount!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.serviceRole != nil {
            map["ServiceRole"] = self.serviceRole!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetMaxBindCount") {
            self.datasetMaxBindCount = dict["DatasetMaxBindCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxEntityCount") {
            self.datasetMaxEntityCount = dict["DatasetMaxEntityCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxFileCount") {
            self.datasetMaxFileCount = dict["DatasetMaxFileCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxRelationCount") {
            self.datasetMaxRelationCount = dict["DatasetMaxRelationCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxTotalFileSize") {
            self.datasetMaxTotalFileSize = dict["DatasetMaxTotalFileSize"] as! Int64
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ProjectMaxDatasetCount") {
            self.projectMaxDatasetCount = dict["ProjectMaxDatasetCount"] as! Int64
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("ServiceRole") {
            self.serviceRole = dict["ServiceRole"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class CreateProjectResponseBody : Tea.TeaModel {
    public var project: Project?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.project?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            var model = Project()
            model.fromMap(dict["Project"] as! [String: Any])
            self.project = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateStoryRequest : Tea.TeaModel {
    public var address: AddressForStory?

    public var customId: String?

    public var customLabels: [String: Any]?

    public var datasetName: String?

    public var maxFileCount: Int64?

    public var minFileCount: Int64?

    public var notifyTopicName: String?

    public var objectId: String?

    public var projectName: String?

    public var storyEndTime: String?

    public var storyName: String?

    public var storyStartTime: String?

    public var storySubType: String?

    public var storyType: String?

    public var tags: [String: Any]?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.address?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address?.toMap()
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.maxFileCount != nil {
            map["MaxFileCount"] = self.maxFileCount!
        }
        if self.minFileCount != nil {
            map["MinFileCount"] = self.minFileCount!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.storyEndTime != nil {
            map["StoryEndTime"] = self.storyEndTime!
        }
        if self.storyName != nil {
            map["StoryName"] = self.storyName!
        }
        if self.storyStartTime != nil {
            map["StoryStartTime"] = self.storyStartTime!
        }
        if self.storySubType != nil {
            map["StorySubType"] = self.storySubType!
        }
        if self.storyType != nil {
            map["StoryType"] = self.storyType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            var model = AddressForStory()
            model.fromMap(dict["Address"] as! [String: Any])
            self.address = model
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! [String: Any]
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("MaxFileCount") {
            self.maxFileCount = dict["MaxFileCount"] as! Int64
        }
        if dict.keys.contains("MinFileCount") {
            self.minFileCount = dict["MinFileCount"] as! Int64
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("StoryEndTime") {
            self.storyEndTime = dict["StoryEndTime"] as! String
        }
        if dict.keys.contains("StoryName") {
            self.storyName = dict["StoryName"] as! String
        }
        if dict.keys.contains("StoryStartTime") {
            self.storyStartTime = dict["StoryStartTime"] as! String
        }
        if dict.keys.contains("StorySubType") {
            self.storySubType = dict["StorySubType"] as! String
        }
        if dict.keys.contains("StoryType") {
            self.storyType = dict["StoryType"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateStoryShrinkRequest : Tea.TeaModel {
    public var addressShrink: String?

    public var customId: String?

    public var customLabelsShrink: String?

    public var datasetName: String?

    public var maxFileCount: Int64?

    public var minFileCount: Int64?

    public var notifyTopicName: String?

    public var objectId: String?

    public var projectName: String?

    public var storyEndTime: String?

    public var storyName: String?

    public var storyStartTime: String?

    public var storySubType: String?

    public var storyType: String?

    public var tagsShrink: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressShrink != nil {
            map["Address"] = self.addressShrink!
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabelsShrink != nil {
            map["CustomLabels"] = self.customLabelsShrink!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.maxFileCount != nil {
            map["MaxFileCount"] = self.maxFileCount!
        }
        if self.minFileCount != nil {
            map["MinFileCount"] = self.minFileCount!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.storyEndTime != nil {
            map["StoryEndTime"] = self.storyEndTime!
        }
        if self.storyName != nil {
            map["StoryName"] = self.storyName!
        }
        if self.storyStartTime != nil {
            map["StoryStartTime"] = self.storyStartTime!
        }
        if self.storySubType != nil {
            map["StorySubType"] = self.storySubType!
        }
        if self.storyType != nil {
            map["StoryType"] = self.storyType!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.addressShrink = dict["Address"] as! String
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabelsShrink = dict["CustomLabels"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("MaxFileCount") {
            self.maxFileCount = dict["MaxFileCount"] as! Int64
        }
        if dict.keys.contains("MinFileCount") {
            self.minFileCount = dict["MinFileCount"] as! Int64
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("StoryEndTime") {
            self.storyEndTime = dict["StoryEndTime"] as! String
        }
        if dict.keys.contains("StoryName") {
            self.storyName = dict["StoryName"] as! String
        }
        if dict.keys.contains("StoryStartTime") {
            self.storyStartTime = dict["StoryStartTime"] as! String
        }
        if dict.keys.contains("StorySubType") {
            self.storySubType = dict["StorySubType"] as! String
        }
        if dict.keys.contains("StoryType") {
            self.storyType = dict["StoryType"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateStoryResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateStoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateStoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateStoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVideoLabelClassificationTaskRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var notifyTopicName: String?

    public var projectName: String?

    public var sourceURI: String?

    public var tags: [String: Any]?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateVideoLabelClassificationTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var notifyTopicName: String?

    public var projectName: String?

    public var sourceURI: String?

    public var tagsShrink: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateVideoLabelClassificationTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateVideoLabelClassificationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVideoLabelClassificationTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateVideoLabelClassificationTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVideoModerationTaskRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var interval: Int64?

    public var maxFrames: Int64?

    public var notifyTopicName: String?

    public var projectName: String?

    public var reviewer: String?

    public var scenes: [String]?

    public var sourceURI: String?

    public var tags: [String: Any]?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.maxFrames != nil {
            map["MaxFrames"] = self.maxFrames!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.reviewer != nil {
            map["Reviewer"] = self.reviewer!
        }
        if self.scenes != nil {
            map["Scenes"] = self.scenes!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("MaxFrames") {
            self.maxFrames = dict["MaxFrames"] as! Int64
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Reviewer") {
            self.reviewer = dict["Reviewer"] as! String
        }
        if dict.keys.contains("Scenes") {
            self.scenes = dict["Scenes"] as! [String]
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateVideoModerationTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var interval: Int64?

    public var maxFrames: Int64?

    public var notifyTopicName: String?

    public var projectName: String?

    public var reviewer: String?

    public var scenesShrink: String?

    public var sourceURI: String?

    public var tagsShrink: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.maxFrames != nil {
            map["MaxFrames"] = self.maxFrames!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.reviewer != nil {
            map["Reviewer"] = self.reviewer!
        }
        if self.scenesShrink != nil {
            map["Scenes"] = self.scenesShrink!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("MaxFrames") {
            self.maxFrames = dict["MaxFrames"] as! Int64
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Reviewer") {
            self.reviewer = dict["Reviewer"] as! String
        }
        if dict.keys.contains("Scenes") {
            self.scenesShrink = dict["Scenes"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateVideoModerationTaskResponseBody : Tea.TeaModel {
    public var eventId: String?

    public var requestId: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateVideoModerationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVideoModerationTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = CreateVideoModerationTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBatchRequest : Tea.TeaModel {
    public var id: String?

    public var projectName: String?

    public override init() {
        super.init()
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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class DeleteBatchResponseBody : Tea.TeaModel {
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

public class DeleteBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBatchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DeleteBatchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteBindingRequest : Tea.TeaModel {
    public var cleanup: Bool?

    public var datasetName: String?

    public var projectName: String?

    public var URI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cleanup != nil {
            map["Cleanup"] = self.cleanup!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cleanup") {
            self.cleanup = dict["Cleanup"] as! Bool
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("URI") {
            self.URI = dict["URI"] as! String
        }
    }
}

public class DeleteBindingResponseBody : Tea.TeaModel {
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

public class DeleteBindingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBindingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DeleteBindingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDatasetRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class DeleteDatasetResponseBody : Tea.TeaModel {
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

public class DeleteDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatasetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DeleteDatasetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public var URI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("URI") {
            self.URI = dict["URI"] as! String
        }
    }
}

public class DeleteFileMetaResponseBody : Tea.TeaModel {
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

public class DeleteFileMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFileMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DeleteFileMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLocationDateClusterRequest : Tea.TeaModel {
    public var datasetName: String?

    public var objectId: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class DeleteLocationDateClusterResponseBody : Tea.TeaModel {
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

public class DeleteLocationDateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLocationDateClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DeleteLocationDateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProjectRequest : Tea.TeaModel {
    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class DeleteProjectResponseBody : Tea.TeaModel {
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

public class DeleteProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DeleteProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteStoryRequest : Tea.TeaModel {
    public var datasetName: String?

    public var objectId: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class DeleteStoryResponseBody : Tea.TeaModel {
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

public class DeleteStoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteStoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DeleteStoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTriggerRequest : Tea.TeaModel {
    public var id: String?

    public var projectName: String?

    public override init() {
        super.init()
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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class DeleteTriggerResponseBody : Tea.TeaModel {
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

public class DeleteTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTriggerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DeleteTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachOSSBucketRequest : Tea.TeaModel {
    public var OSSBucket: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OSSBucket != nil {
            map["OSSBucket"] = self.OSSBucket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OSSBucket") {
            self.OSSBucket = dict["OSSBucket"] as! String
        }
    }
}

public class DetachOSSBucketResponseBody : Tea.TeaModel {
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

public class DetachOSSBucketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachOSSBucketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DetachOSSBucketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectImageBodiesRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var projectName: String?

    public var sensitivity: Double?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sensitivity != nil {
            map["Sensitivity"] = self.sensitivity!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sensitivity") {
            self.sensitivity = dict["Sensitivity"] as! Double
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class DetectImageBodiesShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var projectName: String?

    public var sensitivity: Double?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sensitivity != nil {
            map["Sensitivity"] = self.sensitivity!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sensitivity") {
            self.sensitivity = dict["Sensitivity"] as! Double
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class DetectImageBodiesResponseBody : Tea.TeaModel {
    public var bodies: [Body]?

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
        if self.bodies != nil {
            var tmp : [Any] = []
            for k in self.bodies! {
                tmp.append(k.toMap())
            }
            map["Bodies"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bodies") {
            self.bodies = dict["Bodies"] as! [Body]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetectImageBodiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectImageBodiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DetectImageBodiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectImageCodesRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var projectName: String?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class DetectImageCodesShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var projectName: String?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class DetectImageCodesResponseBody : Tea.TeaModel {
    public var codes: [Codes]?

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
        if self.codes != nil {
            var tmp : [Any] = []
            for k in self.codes! {
                tmp.append(k.toMap())
            }
            map["Codes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Codes") {
            self.codes = dict["Codes"] as! [Codes]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetectImageCodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectImageCodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DetectImageCodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectImageCroppingRequest : Tea.TeaModel {
    public var aspectRatios: String?

    public var credentialConfig: CredentialConfig?

    public var projectName: String?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aspectRatios != nil {
            map["AspectRatios"] = self.aspectRatios!
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AspectRatios") {
            self.aspectRatios = dict["AspectRatios"] as! String
        }
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class DetectImageCroppingShrinkRequest : Tea.TeaModel {
    public var aspectRatios: String?

    public var credentialConfigShrink: String?

    public var projectName: String?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aspectRatios != nil {
            map["AspectRatios"] = self.aspectRatios!
        }
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AspectRatios") {
            self.aspectRatios = dict["AspectRatios"] as! String
        }
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class DetectImageCroppingResponseBody : Tea.TeaModel {
    public var croppings: [CroppingSuggestion]?

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
        if self.croppings != nil {
            var tmp : [Any] = []
            for k in self.croppings! {
                tmp.append(k.toMap())
            }
            map["Croppings"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Croppings") {
            self.croppings = dict["Croppings"] as! [CroppingSuggestion]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetectImageCroppingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectImageCroppingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DetectImageCroppingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectImageFacesRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var projectName: String?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class DetectImageFacesShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var projectName: String?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class DetectImageFacesResponseBody : Tea.TeaModel {
    public var faces: [Figure]?

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
        if self.faces != nil {
            var tmp : [Any] = []
            for k in self.faces! {
                tmp.append(k.toMap())
            }
            map["Faces"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Faces") {
            self.faces = dict["Faces"] as! [Figure]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetectImageFacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectImageFacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DetectImageFacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectImageLabelsRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var projectName: String?

    public var sourceURI: String?

    public var threshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("Threshold") {
            self.threshold = dict["Threshold"] as! Double
        }
    }
}

public class DetectImageLabelsShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var projectName: String?

    public var sourceURI: String?

    public var threshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("Threshold") {
            self.threshold = dict["Threshold"] as! Double
        }
    }
}

public class DetectImageLabelsResponseBody : Tea.TeaModel {
    public var labels: [Label]?

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
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [Label]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetectImageLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectImageLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DetectImageLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectImageScoreRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var projectName: String?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class DetectImageScoreShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var projectName: String?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class DetectImageScoreResponseBody : Tea.TeaModel {
    public class ImageScore : Tea.TeaModel {
        public var overallQualityScore: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.overallQualityScore != nil {
                map["OverallQualityScore"] = self.overallQualityScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OverallQualityScore") {
                self.overallQualityScore = dict["OverallQualityScore"] as! Double
            }
        }
    }
    public var imageScore: DetectImageScoreResponseBody.ImageScore?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.imageScore?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageScore != nil {
            map["ImageScore"] = self.imageScore?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageScore") {
            var model = DetectImageScoreResponseBody.ImageScore()
            model.fromMap(dict["ImageScore"] as! [String: Any])
            self.imageScore = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetectImageScoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectImageScoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DetectImageScoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectMediaMetaRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var projectName: String?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class DetectMediaMetaShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var projectName: String?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class DetectMediaMetaResponseBody : Tea.TeaModel {
    public var addresses: [Address]?

    public var album: String?

    public var albumArtist: String?

    public var artist: String?

    public var audioStreams: [AudioStream]?

    public var bitrate: Int64?

    public var composer: String?

    public var duration: Double?

    public var formatLongName: String?

    public var formatName: String?

    public var language: String?

    public var latLong: String?

    public var performer: String?

    public var produceTime: String?

    public var programCount: Int64?

    public var requestId: String?

    public var size: Int64?

    public var startTime: Double?

    public var streamCount: Int64?

    public var subtitles: [SubtitleStream]?

    public var title: String?

    public var videoHeight: Int64?

    public var videoStreams: [VideoStream]?

    public var videoWidth: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addresses != nil {
            var tmp : [Any] = []
            for k in self.addresses! {
                tmp.append(k.toMap())
            }
            map["Addresses"] = tmp
        }
        if self.album != nil {
            map["Album"] = self.album!
        }
        if self.albumArtist != nil {
            map["AlbumArtist"] = self.albumArtist!
        }
        if self.artist != nil {
            map["Artist"] = self.artist!
        }
        if self.audioStreams != nil {
            var tmp : [Any] = []
            for k in self.audioStreams! {
                tmp.append(k.toMap())
            }
            map["AudioStreams"] = tmp
        }
        if self.bitrate != nil {
            map["Bitrate"] = self.bitrate!
        }
        if self.composer != nil {
            map["Composer"] = self.composer!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.formatLongName != nil {
            map["FormatLongName"] = self.formatLongName!
        }
        if self.formatName != nil {
            map["FormatName"] = self.formatName!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.latLong != nil {
            map["LatLong"] = self.latLong!
        }
        if self.performer != nil {
            map["Performer"] = self.performer!
        }
        if self.produceTime != nil {
            map["ProduceTime"] = self.produceTime!
        }
        if self.programCount != nil {
            map["ProgramCount"] = self.programCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.streamCount != nil {
            map["StreamCount"] = self.streamCount!
        }
        if self.subtitles != nil {
            var tmp : [Any] = []
            for k in self.subtitles! {
                tmp.append(k.toMap())
            }
            map["Subtitles"] = tmp
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoHeight != nil {
            map["VideoHeight"] = self.videoHeight!
        }
        if self.videoStreams != nil {
            var tmp : [Any] = []
            for k in self.videoStreams! {
                tmp.append(k.toMap())
            }
            map["VideoStreams"] = tmp
        }
        if self.videoWidth != nil {
            map["VideoWidth"] = self.videoWidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Addresses") {
            self.addresses = dict["Addresses"] as! [Address]
        }
        if dict.keys.contains("Album") {
            self.album = dict["Album"] as! String
        }
        if dict.keys.contains("AlbumArtist") {
            self.albumArtist = dict["AlbumArtist"] as! String
        }
        if dict.keys.contains("Artist") {
            self.artist = dict["Artist"] as! String
        }
        if dict.keys.contains("AudioStreams") {
            self.audioStreams = dict["AudioStreams"] as! [AudioStream]
        }
        if dict.keys.contains("Bitrate") {
            self.bitrate = dict["Bitrate"] as! Int64
        }
        if dict.keys.contains("Composer") {
            self.composer = dict["Composer"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Double
        }
        if dict.keys.contains("FormatLongName") {
            self.formatLongName = dict["FormatLongName"] as! String
        }
        if dict.keys.contains("FormatName") {
            self.formatName = dict["FormatName"] as! String
        }
        if dict.keys.contains("Language") {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("LatLong") {
            self.latLong = dict["LatLong"] as! String
        }
        if dict.keys.contains("Performer") {
            self.performer = dict["Performer"] as! String
        }
        if dict.keys.contains("ProduceTime") {
            self.produceTime = dict["ProduceTime"] as! String
        }
        if dict.keys.contains("ProgramCount") {
            self.programCount = dict["ProgramCount"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Size") {
            self.size = dict["Size"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Double
        }
        if dict.keys.contains("StreamCount") {
            self.streamCount = dict["StreamCount"] as! Int64
        }
        if dict.keys.contains("Subtitles") {
            self.subtitles = dict["Subtitles"] as! [SubtitleStream]
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoHeight") {
            self.videoHeight = dict["VideoHeight"] as! Int64
        }
        if dict.keys.contains("VideoStreams") {
            self.videoStreams = dict["VideoStreams"] as! [VideoStream]
        }
        if dict.keys.contains("VideoWidth") {
            self.videoWidth = dict["VideoWidth"] as! Int64
        }
    }
}

public class DetectMediaMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectMediaMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DetectMediaMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectTextAnomalyRequest : Tea.TeaModel {
    public var content: String?

    public var projectName: String?

    public override init() {
        super.init()
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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class DetectTextAnomalyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var suggestion: String?

    public override init() {
        super.init()
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
        if self.suggestion != nil {
            map["Suggestion"] = self.suggestion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Suggestion") {
            self.suggestion = dict["Suggestion"] as! String
        }
    }
}

public class DetectTextAnomalyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectTextAnomalyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = DetectTextAnomalyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FuzzyQueryRequest : Tea.TeaModel {
    public var datasetName: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var order: String?

    public var projectName: String?

    public var query: String?

    public var sort: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
    }
}

public class FuzzyQueryResponseBody : Tea.TeaModel {
    public var files: [File]?

    public var nextToken: String?

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
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [File]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FuzzyQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FuzzyQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = FuzzyQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateWebofficeTokenRequest : Tea.TeaModel {
    public var cachePreview: Bool?

    public var credentialConfig: CredentialConfig?

    public var externalUploaded: Bool?

    public var filename: String?

    public var hidecmb: Bool?

    public var notifyTopicName: String?

    public var password: String?

    public var permission: WebofficePermission?

    public var previewPages: Int64?

    public var projectName: String?

    public var referer: String?

    public var sourceURI: String?

    public var user: WebofficeUser?

    public var userData: String?

    public var watermark: WebofficeWatermark?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
        try self.permission?.validate()
        try self.user?.validate()
        try self.watermark?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cachePreview != nil {
            map["CachePreview"] = self.cachePreview!
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.externalUploaded != nil {
            map["ExternalUploaded"] = self.externalUploaded!
        }
        if self.filename != nil {
            map["Filename"] = self.filename!
        }
        if self.hidecmb != nil {
            map["Hidecmb"] = self.hidecmb!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.permission != nil {
            map["Permission"] = self.permission?.toMap()
        }
        if self.previewPages != nil {
            map["PreviewPages"] = self.previewPages!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.referer != nil {
            map["Referer"] = self.referer!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        if self.watermark != nil {
            map["Watermark"] = self.watermark?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CachePreview") {
            self.cachePreview = dict["CachePreview"] as! Bool
        }
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("ExternalUploaded") {
            self.externalUploaded = dict["ExternalUploaded"] as! Bool
        }
        if dict.keys.contains("Filename") {
            self.filename = dict["Filename"] as! String
        }
        if dict.keys.contains("Hidecmb") {
            self.hidecmb = dict["Hidecmb"] as! Bool
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Permission") {
            var model = WebofficePermission()
            model.fromMap(dict["Permission"] as! [String: Any])
            self.permission = model
        }
        if dict.keys.contains("PreviewPages") {
            self.previewPages = dict["PreviewPages"] as! Int64
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Referer") {
            self.referer = dict["Referer"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("User") {
            var model = WebofficeUser()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
        if dict.keys.contains("Watermark") {
            var model = WebofficeWatermark()
            model.fromMap(dict["Watermark"] as! [String: Any])
            self.watermark = model
        }
    }
}

public class GenerateWebofficeTokenShrinkRequest : Tea.TeaModel {
    public var cachePreview: Bool?

    public var credentialConfigShrink: String?

    public var externalUploaded: Bool?

    public var filename: String?

    public var hidecmb: Bool?

    public var notifyTopicName: String?

    public var password: String?

    public var permissionShrink: String?

    public var previewPages: Int64?

    public var projectName: String?

    public var referer: String?

    public var sourceURI: String?

    public var userShrink: String?

    public var userData: String?

    public var watermarkShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cachePreview != nil {
            map["CachePreview"] = self.cachePreview!
        }
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.externalUploaded != nil {
            map["ExternalUploaded"] = self.externalUploaded!
        }
        if self.filename != nil {
            map["Filename"] = self.filename!
        }
        if self.hidecmb != nil {
            map["Hidecmb"] = self.hidecmb!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.permissionShrink != nil {
            map["Permission"] = self.permissionShrink!
        }
        if self.previewPages != nil {
            map["PreviewPages"] = self.previewPages!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.referer != nil {
            map["Referer"] = self.referer!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.userShrink != nil {
            map["User"] = self.userShrink!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        if self.watermarkShrink != nil {
            map["Watermark"] = self.watermarkShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CachePreview") {
            self.cachePreview = dict["CachePreview"] as! Bool
        }
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("ExternalUploaded") {
            self.externalUploaded = dict["ExternalUploaded"] as! Bool
        }
        if dict.keys.contains("Filename") {
            self.filename = dict["Filename"] as! String
        }
        if dict.keys.contains("Hidecmb") {
            self.hidecmb = dict["Hidecmb"] as! Bool
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Permission") {
            self.permissionShrink = dict["Permission"] as! String
        }
        if dict.keys.contains("PreviewPages") {
            self.previewPages = dict["PreviewPages"] as! Int64
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Referer") {
            self.referer = dict["Referer"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
        if dict.keys.contains("User") {
            self.userShrink = dict["User"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
        if dict.keys.contains("Watermark") {
            self.watermarkShrink = dict["Watermark"] as! String
        }
    }
}

public class GenerateWebofficeTokenResponseBody : Tea.TeaModel {
    public var accessToken: String?

    public var accessTokenExpiredTime: String?

    public var refreshToken: String?

    public var refreshTokenExpiredTime: String?

    public var requestId: String?

    public var webofficeURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.accessTokenExpiredTime != nil {
            map["AccessTokenExpiredTime"] = self.accessTokenExpiredTime!
        }
        if self.refreshToken != nil {
            map["RefreshToken"] = self.refreshToken!
        }
        if self.refreshTokenExpiredTime != nil {
            map["RefreshTokenExpiredTime"] = self.refreshTokenExpiredTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.webofficeURL != nil {
            map["WebofficeURL"] = self.webofficeURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("AccessTokenExpiredTime") {
            self.accessTokenExpiredTime = dict["AccessTokenExpiredTime"] as! String
        }
        if dict.keys.contains("RefreshToken") {
            self.refreshToken = dict["RefreshToken"] as! String
        }
        if dict.keys.contains("RefreshTokenExpiredTime") {
            self.refreshTokenExpiredTime = dict["RefreshTokenExpiredTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WebofficeURL") {
            self.webofficeURL = dict["WebofficeURL"] as! String
        }
    }
}

public class GenerateWebofficeTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateWebofficeTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = GenerateWebofficeTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetBindingRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public var URI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("URI") {
            self.URI = dict["URI"] as! String
        }
    }
}

public class GetBindingResponseBody : Tea.TeaModel {
    public var binding: Binding?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.binding?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.binding != nil {
            map["Binding"] = self.binding?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Binding") {
            var model = Binding()
            model.fromMap(dict["Binding"] as! [String: Any])
            self.binding = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetBindingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBindingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = GetBindingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDatasetRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public var withStatistics: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.withStatistics != nil {
            map["WithStatistics"] = self.withStatistics!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("WithStatistics") {
            self.withStatistics = dict["WithStatistics"] as! Bool
        }
    }
}

public class GetDatasetResponseBody : Tea.TeaModel {
    public var dataset: Dataset?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataset?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataset != nil {
            map["Dataset"] = self.dataset?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dataset") {
            var model = Dataset()
            model.fromMap(dict["Dataset"] as! [String: Any])
            self.dataset = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDatasetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = GetDatasetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFigureClusterRequest : Tea.TeaModel {
    public var datasetName: String?

    public var objectId: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class GetFigureClusterResponseBody : Tea.TeaModel {
    public var figureCluster: FigureCluster?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.figureCluster?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.figureCluster != nil {
            map["FigureCluster"] = self.figureCluster?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FigureCluster") {
            var model = FigureCluster()
            model.fromMap(dict["FigureCluster"] as! [String: Any])
            self.figureCluster = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetFigureClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFigureClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = GetFigureClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public var URI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("URI") {
            self.URI = dict["URI"] as! String
        }
    }
}

public class GetFileMetaResponseBody : Tea.TeaModel {
    public var files: [File]?

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
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [File]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetFileMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFileMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = GetFileMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOSSBucketAttachmentRequest : Tea.TeaModel {
    public var OSSBucket: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OSSBucket != nil {
            map["OSSBucket"] = self.OSSBucket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OSSBucket") {
            self.OSSBucket = dict["OSSBucket"] as! String
        }
    }
}

public class GetOSSBucketAttachmentResponseBody : Tea.TeaModel {
    public var projectName: String?

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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetOSSBucketAttachmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOSSBucketAttachmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = GetOSSBucketAttachmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectRequest : Tea.TeaModel {
    public var projectName: String?

    public var withStatistics: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.withStatistics != nil {
            map["WithStatistics"] = self.withStatistics!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("WithStatistics") {
            self.withStatistics = dict["WithStatistics"] as! Bool
        }
    }
}

public class GetProjectResponseBody : Tea.TeaModel {
    public var project: Project?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.project?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            var model = Project()
            model.fromMap(dict["Project"] as! [String: Any])
            self.project = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = GetProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStoryRequest : Tea.TeaModel {
    public var datasetName: String?

    public var objectId: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class GetStoryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var story: Story?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.story?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.story != nil {
            map["Story"] = self.story?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Story") {
            var model = Story()
            model.fromMap(dict["Story"] as! [String: Any])
            self.story = model
        }
    }
}

public class GetStoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = GetStoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskRequest : Tea.TeaModel {
    public var projectName: String?

    public var taskId: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class GetTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var endTime: String?

    public var eventId: String?

    public var message: String?

    public var projectName: String?

    public var requestId: String?

    public var startTime: String?

    public var status: String?

    public var tags: [String: Any]?

    public var taskId: String?

    public var taskType: String?

    public var userData: String?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class GetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = GetTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVideoLabelClassificationResultRequest : Tea.TeaModel {
    public var projectName: String?

    public var taskId: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class GetVideoLabelClassificationResultResponseBody : Tea.TeaModel {
    public var code: String?

    public var endTime: String?

    public var eventId: String?

    public var labels: [Label]?

    public var message: String?

    public var projectName: String?

    public var requestId: String?

    public var startTime: String?

    public var status: String?

    public var taskId: String?

    public var taskType: String?

    public var userData: String?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [Label]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class GetVideoLabelClassificationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoLabelClassificationResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = GetVideoLabelClassificationResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IndexFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var file: FileForReq?

    public var notifyTopicName: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.file?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.file != nil {
            map["File"] = self.file?.toMap()
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("File") {
            var model = FileForReq()
            model.fromMap(dict["File"] as! [String: Any])
            self.file = model
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class IndexFileMetaShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var fileShrink: String?

    public var notifyTopicName: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.fileShrink != nil {
            map["File"] = self.fileShrink!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("File") {
            self.fileShrink = dict["File"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class IndexFileMetaResponseBody : Tea.TeaModel {
    public var eventId: String?

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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class IndexFileMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IndexFileMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = IndexFileMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBindingsRequest : Tea.TeaModel {
    public var datasetName: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class ListBindingsResponseBody : Tea.TeaModel {
    public var bindings: [Binding]?

    public var nextToken: String?

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
        if self.bindings != nil {
            var tmp : [Any] = []
            for k in self.bindings! {
                tmp.append(k.toMap())
            }
            map["Bindings"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bindings") {
            self.bindings = dict["Bindings"] as! [Binding]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListBindingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBindingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ListBindingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDatasetsRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var prefix_: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Prefix") {
            self.prefix_ = dict["Prefix"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class ListDatasetsResponseBody : Tea.TeaModel {
    public var datasets: [Dataset]?

    public var nextToken: String?

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
        if self.datasets != nil {
            var tmp : [Any] = []
            for k in self.datasets! {
                tmp.append(k.toMap())
            }
            map["Datasets"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Datasets") {
            self.datasets = dict["Datasets"] as! [Dataset]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDatasetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatasetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ListDatasetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectsRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var prefix_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Prefix") {
            self.prefix_ = dict["Prefix"] as! String
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var projects: [Project]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.projects != nil {
            var tmp : [Any] = []
            for k in self.projects! {
                tmp.append(k.toMap())
            }
            map["Projects"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Projects") {
            self.projects = dict["Projects"] as! [Project]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ListProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public var regions: [RegionType]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            self.regions = dict["Regions"] as! [RegionType]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ListRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTasksRequest : Tea.TeaModel {
    public var endTimeRange: TimeRange?

    public var maxResults: Int64?

    public var nextToken: String?

    public var order: String?

    public var projectName: String?

    public var sort: String?

    public var startTimeRange: TimeRange?

    public var status: String?

    public var tagSelector: String?

    public var taskTypes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.endTimeRange?.validate()
        try self.startTimeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimeRange != nil {
            map["EndTimeRange"] = self.endTimeRange?.toMap()
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startTimeRange != nil {
            map["StartTimeRange"] = self.startTimeRange?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagSelector != nil {
            map["TagSelector"] = self.tagSelector!
        }
        if self.taskTypes != nil {
            map["TaskTypes"] = self.taskTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimeRange") {
            var model = TimeRange()
            model.fromMap(dict["EndTimeRange"] as! [String: Any])
            self.endTimeRange = model
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("StartTimeRange") {
            var model = TimeRange()
            model.fromMap(dict["StartTimeRange"] as! [String: Any])
            self.startTimeRange = model
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagSelector") {
            self.tagSelector = dict["TagSelector"] as! String
        }
        if dict.keys.contains("TaskTypes") {
            self.taskTypes = dict["TaskTypes"] as! [String]
        }
    }
}

public class ListTasksShrinkRequest : Tea.TeaModel {
    public var endTimeRangeShrink: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var order: String?

    public var projectName: String?

    public var sort: String?

    public var startTimeRangeShrink: String?

    public var status: String?

    public var tagSelector: String?

    public var taskTypesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTimeRangeShrink != nil {
            map["EndTimeRange"] = self.endTimeRangeShrink!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.startTimeRangeShrink != nil {
            map["StartTimeRange"] = self.startTimeRangeShrink!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagSelector != nil {
            map["TagSelector"] = self.tagSelector!
        }
        if self.taskTypesShrink != nil {
            map["TaskTypes"] = self.taskTypesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTimeRange") {
            self.endTimeRangeShrink = dict["EndTimeRange"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("StartTimeRange") {
            self.startTimeRangeShrink = dict["StartTimeRange"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TagSelector") {
            self.tagSelector = dict["TagSelector"] as! String
        }
        if dict.keys.contains("TaskTypes") {
            self.taskTypesShrink = dict["TaskTypes"] as! String
        }
    }
}

public class ListTasksResponseBody : Tea.TeaModel {
    public var maxResults: String?

    public var nextToken: String?

    public var projectName: String?

    public var requestId: String?

    public var tasks: [TaskInfo]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
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
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            self.tasks = dict["Tasks"] as! [TaskInfo]
        }
    }
}

public class ListTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ListTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryFigureClustersRequest : Tea.TeaModel {
    public var createTimeRange: TimeRange?

    public var customLabels: String?

    public var datasetName: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var order: String?

    public var projectName: String?

    public var sort: String?

    public var updateTimeRange: TimeRange?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createTimeRange?.validate()
        try self.updateTimeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimeRange != nil {
            map["CreateTimeRange"] = self.createTimeRange?.toMap()
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.updateTimeRange != nil {
            map["UpdateTimeRange"] = self.updateTimeRange?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTimeRange") {
            var model = TimeRange()
            model.fromMap(dict["CreateTimeRange"] as! [String: Any])
            self.createTimeRange = model
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("UpdateTimeRange") {
            var model = TimeRange()
            model.fromMap(dict["UpdateTimeRange"] as! [String: Any])
            self.updateTimeRange = model
        }
    }
}

public class QueryFigureClustersShrinkRequest : Tea.TeaModel {
    public var createTimeRangeShrink: String?

    public var customLabels: String?

    public var datasetName: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var order: String?

    public var projectName: String?

    public var sort: String?

    public var updateTimeRangeShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimeRangeShrink != nil {
            map["CreateTimeRange"] = self.createTimeRangeShrink!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.updateTimeRangeShrink != nil {
            map["UpdateTimeRange"] = self.updateTimeRangeShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTimeRange") {
            self.createTimeRangeShrink = dict["CreateTimeRange"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("UpdateTimeRange") {
            self.updateTimeRangeShrink = dict["UpdateTimeRange"] as! String
        }
    }
}

public class QueryFigureClustersResponseBody : Tea.TeaModel {
    public var figureClusters: [FigureCluster]?

    public var nextToken: String?

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
        if self.figureClusters != nil {
            var tmp : [Any] = []
            for k in self.figureClusters! {
                tmp.append(k.toMap())
            }
            map["FigureClusters"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FigureClusters") {
            self.figureClusters = dict["FigureClusters"] as! [FigureCluster]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryFigureClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFigureClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryFigureClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryLocationDateClustersRequest : Tea.TeaModel {
    public var address: Address?

    public var createTimeRange: TimeRange?

    public var customLabels: String?

    public var datasetName: String?

    public var locationDateClusterEndTimeRange: TimeRange?

    public var locationDateClusterLevels: [String]?

    public var locationDateClusterStartTimeRange: TimeRange?

    public var maxResults: Int32?

    public var nextToken: String?

    public var objectId: String?

    public var order: String?

    public var projectName: String?

    public var sort: String?

    public var title: String?

    public var updateTimeRange: TimeRange?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.address?.validate()
        try self.createTimeRange?.validate()
        try self.locationDateClusterEndTimeRange?.validate()
        try self.locationDateClusterStartTimeRange?.validate()
        try self.updateTimeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address?.toMap()
        }
        if self.createTimeRange != nil {
            map["CreateTimeRange"] = self.createTimeRange?.toMap()
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.locationDateClusterEndTimeRange != nil {
            map["LocationDateClusterEndTimeRange"] = self.locationDateClusterEndTimeRange?.toMap()
        }
        if self.locationDateClusterLevels != nil {
            map["LocationDateClusterLevels"] = self.locationDateClusterLevels!
        }
        if self.locationDateClusterStartTimeRange != nil {
            map["LocationDateClusterStartTimeRange"] = self.locationDateClusterStartTimeRange?.toMap()
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.updateTimeRange != nil {
            map["UpdateTimeRange"] = self.updateTimeRange?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            var model = Address()
            model.fromMap(dict["Address"] as! [String: Any])
            self.address = model
        }
        if dict.keys.contains("CreateTimeRange") {
            var model = TimeRange()
            model.fromMap(dict["CreateTimeRange"] as! [String: Any])
            self.createTimeRange = model
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("LocationDateClusterEndTimeRange") {
            var model = TimeRange()
            model.fromMap(dict["LocationDateClusterEndTimeRange"] as! [String: Any])
            self.locationDateClusterEndTimeRange = model
        }
        if dict.keys.contains("LocationDateClusterLevels") {
            self.locationDateClusterLevels = dict["LocationDateClusterLevels"] as! [String]
        }
        if dict.keys.contains("LocationDateClusterStartTimeRange") {
            var model = TimeRange()
            model.fromMap(dict["LocationDateClusterStartTimeRange"] as! [String: Any])
            self.locationDateClusterStartTimeRange = model
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UpdateTimeRange") {
            var model = TimeRange()
            model.fromMap(dict["UpdateTimeRange"] as! [String: Any])
            self.updateTimeRange = model
        }
    }
}

public class QueryLocationDateClustersShrinkRequest : Tea.TeaModel {
    public var addressShrink: String?

    public var createTimeRangeShrink: String?

    public var customLabels: String?

    public var datasetName: String?

    public var locationDateClusterEndTimeRangeShrink: String?

    public var locationDateClusterLevelsShrink: String?

    public var locationDateClusterStartTimeRangeShrink: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var objectId: String?

    public var order: String?

    public var projectName: String?

    public var sort: String?

    public var title: String?

    public var updateTimeRangeShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressShrink != nil {
            map["Address"] = self.addressShrink!
        }
        if self.createTimeRangeShrink != nil {
            map["CreateTimeRange"] = self.createTimeRangeShrink!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.locationDateClusterEndTimeRangeShrink != nil {
            map["LocationDateClusterEndTimeRange"] = self.locationDateClusterEndTimeRangeShrink!
        }
        if self.locationDateClusterLevelsShrink != nil {
            map["LocationDateClusterLevels"] = self.locationDateClusterLevelsShrink!
        }
        if self.locationDateClusterStartTimeRangeShrink != nil {
            map["LocationDateClusterStartTimeRange"] = self.locationDateClusterStartTimeRangeShrink!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.updateTimeRangeShrink != nil {
            map["UpdateTimeRange"] = self.updateTimeRangeShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.addressShrink = dict["Address"] as! String
        }
        if dict.keys.contains("CreateTimeRange") {
            self.createTimeRangeShrink = dict["CreateTimeRange"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("LocationDateClusterEndTimeRange") {
            self.locationDateClusterEndTimeRangeShrink = dict["LocationDateClusterEndTimeRange"] as! String
        }
        if dict.keys.contains("LocationDateClusterLevels") {
            self.locationDateClusterLevelsShrink = dict["LocationDateClusterLevels"] as! String
        }
        if dict.keys.contains("LocationDateClusterStartTimeRange") {
            self.locationDateClusterStartTimeRangeShrink = dict["LocationDateClusterStartTimeRange"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("UpdateTimeRange") {
            self.updateTimeRangeShrink = dict["UpdateTimeRange"] as! String
        }
    }
}

public class QueryLocationDateClustersResponseBody : Tea.TeaModel {
    public var locationDateClusters: [LocationDateCluster]?

    public var nextToken: String?

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
        if self.locationDateClusters != nil {
            var tmp : [Any] = []
            for k in self.locationDateClusters! {
                tmp.append(k.toMap())
            }
            map["LocationDateClusters"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LocationDateClusters") {
            self.locationDateClusters = dict["LocationDateClusters"] as! [LocationDateCluster]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryLocationDateClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryLocationDateClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryLocationDateClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryStoriesRequest : Tea.TeaModel {
    public var createTimeRange: TimeRange?

    public var customLabels: String?

    public var datasetName: String?

    public var figureClusterIds: [String]?

    public var maxResults: Int64?

    public var nextToken: String?

    public var objectId: String?

    public var order: String?

    public var projectName: String?

    public var sort: String?

    public var storyEndTimeRange: TimeRange?

    public var storyName: String?

    public var storyStartTimeRange: TimeRange?

    public var storySubType: String?

    public var storyType: String?

    public var withEmptyStories: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createTimeRange?.validate()
        try self.storyEndTimeRange?.validate()
        try self.storyStartTimeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimeRange != nil {
            map["CreateTimeRange"] = self.createTimeRange?.toMap()
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.figureClusterIds != nil {
            map["FigureClusterIds"] = self.figureClusterIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.storyEndTimeRange != nil {
            map["StoryEndTimeRange"] = self.storyEndTimeRange?.toMap()
        }
        if self.storyName != nil {
            map["StoryName"] = self.storyName!
        }
        if self.storyStartTimeRange != nil {
            map["StoryStartTimeRange"] = self.storyStartTimeRange?.toMap()
        }
        if self.storySubType != nil {
            map["StorySubType"] = self.storySubType!
        }
        if self.storyType != nil {
            map["StoryType"] = self.storyType!
        }
        if self.withEmptyStories != nil {
            map["WithEmptyStories"] = self.withEmptyStories!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTimeRange") {
            var model = TimeRange()
            model.fromMap(dict["CreateTimeRange"] as! [String: Any])
            self.createTimeRange = model
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("FigureClusterIds") {
            self.figureClusterIds = dict["FigureClusterIds"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("StoryEndTimeRange") {
            var model = TimeRange()
            model.fromMap(dict["StoryEndTimeRange"] as! [String: Any])
            self.storyEndTimeRange = model
        }
        if dict.keys.contains("StoryName") {
            self.storyName = dict["StoryName"] as! String
        }
        if dict.keys.contains("StoryStartTimeRange") {
            var model = TimeRange()
            model.fromMap(dict["StoryStartTimeRange"] as! [String: Any])
            self.storyStartTimeRange = model
        }
        if dict.keys.contains("StorySubType") {
            self.storySubType = dict["StorySubType"] as! String
        }
        if dict.keys.contains("StoryType") {
            self.storyType = dict["StoryType"] as! String
        }
        if dict.keys.contains("WithEmptyStories") {
            self.withEmptyStories = dict["WithEmptyStories"] as! Bool
        }
    }
}

public class QueryStoriesShrinkRequest : Tea.TeaModel {
    public var createTimeRangeShrink: String?

    public var customLabels: String?

    public var datasetName: String?

    public var figureClusterIdsShrink: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var objectId: String?

    public var order: String?

    public var projectName: String?

    public var sort: String?

    public var storyEndTimeRangeShrink: String?

    public var storyName: String?

    public var storyStartTimeRangeShrink: String?

    public var storySubType: String?

    public var storyType: String?

    public var withEmptyStories: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimeRangeShrink != nil {
            map["CreateTimeRange"] = self.createTimeRangeShrink!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.figureClusterIdsShrink != nil {
            map["FigureClusterIds"] = self.figureClusterIdsShrink!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.storyEndTimeRangeShrink != nil {
            map["StoryEndTimeRange"] = self.storyEndTimeRangeShrink!
        }
        if self.storyName != nil {
            map["StoryName"] = self.storyName!
        }
        if self.storyStartTimeRangeShrink != nil {
            map["StoryStartTimeRange"] = self.storyStartTimeRangeShrink!
        }
        if self.storySubType != nil {
            map["StorySubType"] = self.storySubType!
        }
        if self.storyType != nil {
            map["StoryType"] = self.storyType!
        }
        if self.withEmptyStories != nil {
            map["WithEmptyStories"] = self.withEmptyStories!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTimeRange") {
            self.createTimeRangeShrink = dict["CreateTimeRange"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("FigureClusterIds") {
            self.figureClusterIdsShrink = dict["FigureClusterIds"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("StoryEndTimeRange") {
            self.storyEndTimeRangeShrink = dict["StoryEndTimeRange"] as! String
        }
        if dict.keys.contains("StoryName") {
            self.storyName = dict["StoryName"] as! String
        }
        if dict.keys.contains("StoryStartTimeRange") {
            self.storyStartTimeRangeShrink = dict["StoryStartTimeRange"] as! String
        }
        if dict.keys.contains("StorySubType") {
            self.storySubType = dict["StorySubType"] as! String
        }
        if dict.keys.contains("StoryType") {
            self.storyType = dict["StoryType"] as! String
        }
        if dict.keys.contains("WithEmptyStories") {
            self.withEmptyStories = dict["WithEmptyStories"] as! Bool
        }
    }
}

public class QueryStoriesResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

    public var stories: [Story]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stories != nil {
            var tmp : [Any] = []
            for k in self.stories! {
                tmp.append(k.toMap())
            }
            map["Stories"] = tmp
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
        if dict.keys.contains("Stories") {
            self.stories = dict["Stories"] as! [Story]
        }
    }
}

public class QueryStoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryStoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = QueryStoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshWebofficeTokenRequest : Tea.TeaModel {
    public var accessToken: String?

    public var credentialConfig: CredentialConfig?

    public var projectName: String?

    public var refreshToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.refreshToken != nil {
            map["RefreshToken"] = self.refreshToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RefreshToken") {
            self.refreshToken = dict["RefreshToken"] as! String
        }
    }
}

public class RefreshWebofficeTokenShrinkRequest : Tea.TeaModel {
    public var accessToken: String?

    public var credentialConfigShrink: String?

    public var projectName: String?

    public var refreshToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.refreshToken != nil {
            map["RefreshToken"] = self.refreshToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RefreshToken") {
            self.refreshToken = dict["RefreshToken"] as! String
        }
    }
}

public class RefreshWebofficeTokenResponseBody : Tea.TeaModel {
    public var accessToken: String?

    public var accessTokenExpiredTime: String?

    public var refreshToken: String?

    public var refreshTokenExpiredTime: String?

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
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.accessTokenExpiredTime != nil {
            map["AccessTokenExpiredTime"] = self.accessTokenExpiredTime!
        }
        if self.refreshToken != nil {
            map["RefreshToken"] = self.refreshToken!
        }
        if self.refreshTokenExpiredTime != nil {
            map["RefreshTokenExpiredTime"] = self.refreshTokenExpiredTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("AccessTokenExpiredTime") {
            self.accessTokenExpiredTime = dict["AccessTokenExpiredTime"] as! String
        }
        if dict.keys.contains("RefreshToken") {
            self.refreshToken = dict["RefreshToken"] as! String
        }
        if dict.keys.contains("RefreshTokenExpiredTime") {
            self.refreshTokenExpiredTime = dict["RefreshTokenExpiredTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefreshWebofficeTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshWebofficeTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = RefreshWebofficeTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveStoryFilesRequest : Tea.TeaModel {
    public class Files : Tea.TeaModel {
        public var URI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
        }
    }
    public var datasetName: String?

    public var files: [RemoveStoryFilesRequest.Files]?

    public var objectId: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [RemoveStoryFilesRequest.Files]
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class RemoveStoryFilesShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var filesShrink: String?

    public var objectId: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.filesShrink != nil {
            map["Files"] = self.filesShrink!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Files") {
            self.filesShrink = dict["Files"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class RemoveStoryFilesResponseBody : Tea.TeaModel {
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

public class RemoveStoryFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveStoryFilesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = RemoveStoryFilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeBatchRequest : Tea.TeaModel {
    public var id: String?

    public var projectName: String?

    public override init() {
        super.init()
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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class ResumeBatchResponseBody : Tea.TeaModel {
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

public class ResumeBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeBatchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ResumeBatchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeTriggerRequest : Tea.TeaModel {
    public var id: String?

    public var projectName: String?

    public override init() {
        super.init()
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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class ResumeTriggerResponseBody : Tea.TeaModel {
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

public class ResumeTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResumeTriggerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = ResumeTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchImageFigureClusterRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var datasetName: String?

    public var projectName: String?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.credentialConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            var model = CredentialConfig()
            model.fromMap(dict["CredentialConfig"] as! [String: Any])
            self.credentialConfig = model
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class SearchImageFigureClusterShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var datasetName: String?

    public var projectName: String?

    public var sourceURI: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialConfig") {
            self.credentialConfigShrink = dict["CredentialConfig"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("SourceURI") {
            self.sourceURI = dict["SourceURI"] as! String
        }
    }
}

public class SearchImageFigureClusterResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public var boundary: Boundary?

        public var clusterId: String?

        public var similarity: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.boundary?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.boundary != nil {
                map["Boundary"] = self.boundary?.toMap()
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.similarity != nil {
                map["Similarity"] = self.similarity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Boundary") {
                var model = Boundary()
                model.fromMap(dict["Boundary"] as! [String: Any])
                self.boundary = model
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("Similarity") {
                self.similarity = dict["Similarity"] as! Double
            }
        }
    }
    public var clusters: [SearchImageFigureClusterResponseBody.Clusters]?

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
        if self.clusters != nil {
            var tmp : [Any] = []
            for k in self.clusters! {
                tmp.append(k.toMap())
            }
            map["Clusters"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clusters") {
            self.clusters = dict["Clusters"] as! [SearchImageFigureClusterResponseBody.Clusters]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SearchImageFigureClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchImageFigureClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = SearchImageFigureClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SemanticQueryRequest : Tea.TeaModel {
    public var datasetName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var projectName: String?

    public var query: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Query") {
            self.query = dict["Query"] as! String
        }
    }
}

public class SemanticQueryResponseBody : Tea.TeaModel {
    public var files: [File]?

    public var nextToken: String?

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
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [File]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SemanticQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SemanticQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = SemanticQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SimpleQueryRequest : Tea.TeaModel {
    public class Aggregations : Tea.TeaModel {
        public var field: String?

        public var operation: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.operation != nil {
                map["Operation"] = self.operation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Operation") {
                self.operation = dict["Operation"] as! String
            }
        }
    }
    public var aggregations: [SimpleQueryRequest.Aggregations]?

    public var datasetName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var order: String?

    public var projectName: String?

    public var query: SimpleQuery?

    public var sort: String?

    public var withFields: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.query?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregations != nil {
            var tmp : [Any] = []
            for k in self.aggregations! {
                tmp.append(k.toMap())
            }
            map["Aggregations"] = tmp
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.query != nil {
            map["Query"] = self.query?.toMap()
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.withFields != nil {
            map["WithFields"] = self.withFields!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Aggregations") {
            self.aggregations = dict["Aggregations"] as! [SimpleQueryRequest.Aggregations]
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Query") {
            var model = SimpleQuery()
            model.fromMap(dict["Query"] as! [String: Any])
            self.query = model
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("WithFields") {
            self.withFields = dict["WithFields"] as! [String]
        }
    }
}

public class SimpleQueryShrinkRequest : Tea.TeaModel {
    public var aggregationsShrink: String?

    public var datasetName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var order: String?

    public var projectName: String?

    public var queryShrink: String?

    public var sort: String?

    public var withFieldsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregationsShrink != nil {
            map["Aggregations"] = self.aggregationsShrink!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.queryShrink != nil {
            map["Query"] = self.queryShrink!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.withFieldsShrink != nil {
            map["WithFields"] = self.withFieldsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Aggregations") {
            self.aggregationsShrink = dict["Aggregations"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Query") {
            self.queryShrink = dict["Query"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("WithFields") {
            self.withFieldsShrink = dict["WithFields"] as! String
        }
    }
}

public class SimpleQueryResponseBody : Tea.TeaModel {
    public class Aggregations : Tea.TeaModel {
        public class Groups : Tea.TeaModel {
            public var count: Int64?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int64
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var field: String?

        public var groups: [SimpleQueryResponseBody.Aggregations.Groups]?

        public var operation: String?

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
            if self.field != nil {
                map["Field"] = self.field!
            }
            if self.groups != nil {
                var tmp : [Any] = []
                for k in self.groups! {
                    tmp.append(k.toMap())
                }
                map["Groups"] = tmp
            }
            if self.operation != nil {
                map["Operation"] = self.operation!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Field") {
                self.field = dict["Field"] as! String
            }
            if dict.keys.contains("Groups") {
                self.groups = dict["Groups"] as! [SimpleQueryResponseBody.Aggregations.Groups]
            }
            if dict.keys.contains("Operation") {
                self.operation = dict["Operation"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! Double
            }
        }
    }
    public var aggregations: [SimpleQueryResponseBody.Aggregations]?

    public var files: [File]?

    public var nextToken: String?

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
        if self.aggregations != nil {
            var tmp : [Any] = []
            for k in self.aggregations! {
                tmp.append(k.toMap())
            }
            map["Aggregations"] = tmp
        }
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Aggregations") {
            self.aggregations = dict["Aggregations"] as! [SimpleQueryResponseBody.Aggregations]
        }
        if dict.keys.contains("Files") {
            self.files = dict["Files"] as! [File]
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SimpleQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SimpleQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = SimpleQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SuspendBatchRequest : Tea.TeaModel {
    public var id: String?

    public var projectName: String?

    public override init() {
        super.init()
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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class SuspendBatchResponseBody : Tea.TeaModel {
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

public class SuspendBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SuspendBatchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = SuspendBatchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SuspendTriggerRequest : Tea.TeaModel {
    public var id: String?

    public var projectName: String?

    public override init() {
        super.init()
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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class SuspendTriggerResponseBody : Tea.TeaModel {
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

public class SuspendTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SuspendTriggerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = SuspendTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateBatchRequest : Tea.TeaModel {
    public class Actions : Tea.TeaModel {
        public var name: String?

        public var parameters: [String]?

        public override init() {
            super.init()
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
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! [String]
            }
        }
    }
    public class Notification : Tea.TeaModel {
        public var endpoint: String?

        public var topic: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("Topic") {
                self.topic = dict["Topic"] as! String
            }
        }
    }
    public var actions: [UpdateBatchRequest.Actions]?

    public var id: String?

    public var input: Input?

    public var notification: UpdateBatchRequest.Notification?

    public var projectName: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.input?.validate()
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            var tmp : [Any] = []
            for k in self.actions! {
                tmp.append(k.toMap())
            }
            map["Actions"] = tmp
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.input != nil {
            map["Input"] = self.input?.toMap()
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Actions") {
            self.actions = dict["Actions"] as! [UpdateBatchRequest.Actions]
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Input") {
            var model = Input()
            model.fromMap(dict["Input"] as! [String: Any])
            self.input = model
        }
        if dict.keys.contains("Notification") {
            var model = UpdateBatchRequest.Notification()
            model.fromMap(dict["Notification"] as! [String: Any])
            self.notification = model
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
    }
}

public class UpdateBatchShrinkRequest : Tea.TeaModel {
    public var actionsShrink: String?

    public var id: String?

    public var inputShrink: String?

    public var notificationShrink: String?

    public var projectName: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionsShrink != nil {
            map["Actions"] = self.actionsShrink!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.inputShrink != nil {
            map["Input"] = self.inputShrink!
        }
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Actions") {
            self.actionsShrink = dict["Actions"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Input") {
            self.inputShrink = dict["Input"] as! String
        }
        if dict.keys.contains("Notification") {
            self.notificationShrink = dict["Notification"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class UpdateBatchResponseBody : Tea.TeaModel {
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

public class UpdateBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBatchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = UpdateBatchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDatasetRequest : Tea.TeaModel {
    public var datasetMaxBindCount: Int64?

    public var datasetMaxEntityCount: Int64?

    public var datasetMaxFileCount: Int64?

    public var datasetMaxRelationCount: Int64?

    public var datasetMaxTotalFileSize: Int64?

    public var datasetName: String?

    public var description_: String?

    public var projectName: String?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetMaxBindCount != nil {
            map["DatasetMaxBindCount"] = self.datasetMaxBindCount!
        }
        if self.datasetMaxEntityCount != nil {
            map["DatasetMaxEntityCount"] = self.datasetMaxEntityCount!
        }
        if self.datasetMaxFileCount != nil {
            map["DatasetMaxFileCount"] = self.datasetMaxFileCount!
        }
        if self.datasetMaxRelationCount != nil {
            map["DatasetMaxRelationCount"] = self.datasetMaxRelationCount!
        }
        if self.datasetMaxTotalFileSize != nil {
            map["DatasetMaxTotalFileSize"] = self.datasetMaxTotalFileSize!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetMaxBindCount") {
            self.datasetMaxBindCount = dict["DatasetMaxBindCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxEntityCount") {
            self.datasetMaxEntityCount = dict["DatasetMaxEntityCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxFileCount") {
            self.datasetMaxFileCount = dict["DatasetMaxFileCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxRelationCount") {
            self.datasetMaxRelationCount = dict["DatasetMaxRelationCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxTotalFileSize") {
            self.datasetMaxTotalFileSize = dict["DatasetMaxTotalFileSize"] as! Int64
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class UpdateDatasetResponseBody : Tea.TeaModel {
    public var dataset: Dataset?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataset?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataset != nil {
            map["Dataset"] = self.dataset?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Dataset") {
            var model = Dataset()
            model.fromMap(dict["Dataset"] as! [String: Any])
            self.dataset = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDatasetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = UpdateDatasetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFigureClusterRequest : Tea.TeaModel {
    public var datasetName: String?

    public var figureCluster: FigureClusterForReq?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.figureCluster?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.figureCluster != nil {
            map["FigureCluster"] = self.figureCluster?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("FigureCluster") {
            var model = FigureClusterForReq()
            model.fromMap(dict["FigureCluster"] as! [String: Any])
            self.figureCluster = model
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class UpdateFigureClusterShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var figureClusterShrink: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.figureClusterShrink != nil {
            map["FigureCluster"] = self.figureClusterShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("FigureCluster") {
            self.figureClusterShrink = dict["FigureCluster"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class UpdateFigureClusterResponseBody : Tea.TeaModel {
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

public class UpdateFigureClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFigureClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = UpdateFigureClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var file: FileForReq?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.file?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.file != nil {
            map["File"] = self.file?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("File") {
            var model = FileForReq()
            model.fromMap(dict["File"] as! [String: Any])
            self.file = model
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class UpdateFileMetaShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var fileShrink: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.fileShrink != nil {
            map["File"] = self.fileShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("File") {
            self.fileShrink = dict["File"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
    }
}

public class UpdateFileMetaResponseBody : Tea.TeaModel {
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

public class UpdateFileMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFileMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = UpdateFileMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLocationDateClusterRequest : Tea.TeaModel {
    public var customId: String?

    public var customLabels: [String: Any]?

    public var datasetName: String?

    public var objectId: String?

    public var projectName: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! [String: Any]
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateLocationDateClusterShrinkRequest : Tea.TeaModel {
    public var customId: String?

    public var customLabelsShrink: String?

    public var datasetName: String?

    public var objectId: String?

    public var projectName: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabelsShrink != nil {
            map["CustomLabels"] = self.customLabelsShrink!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabelsShrink = dict["CustomLabels"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Title") {
            self.title = dict["Title"] as! String
        }
    }
}

public class UpdateLocationDateClusterResponseBody : Tea.TeaModel {
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

public class UpdateLocationDateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLocationDateClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = UpdateLocationDateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
    public var datasetMaxBindCount: Int64?

    public var datasetMaxEntityCount: Int64?

    public var datasetMaxFileCount: Int64?

    public var datasetMaxRelationCount: Int64?

    public var datasetMaxTotalFileSize: Int64?

    public var description_: String?

    public var projectMaxDatasetCount: Int64?

    public var projectName: String?

    public var serviceRole: String?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetMaxBindCount != nil {
            map["DatasetMaxBindCount"] = self.datasetMaxBindCount!
        }
        if self.datasetMaxEntityCount != nil {
            map["DatasetMaxEntityCount"] = self.datasetMaxEntityCount!
        }
        if self.datasetMaxFileCount != nil {
            map["DatasetMaxFileCount"] = self.datasetMaxFileCount!
        }
        if self.datasetMaxRelationCount != nil {
            map["DatasetMaxRelationCount"] = self.datasetMaxRelationCount!
        }
        if self.datasetMaxTotalFileSize != nil {
            map["DatasetMaxTotalFileSize"] = self.datasetMaxTotalFileSize!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.projectMaxDatasetCount != nil {
            map["ProjectMaxDatasetCount"] = self.projectMaxDatasetCount!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.serviceRole != nil {
            map["ServiceRole"] = self.serviceRole!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetMaxBindCount") {
            self.datasetMaxBindCount = dict["DatasetMaxBindCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxEntityCount") {
            self.datasetMaxEntityCount = dict["DatasetMaxEntityCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxFileCount") {
            self.datasetMaxFileCount = dict["DatasetMaxFileCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxRelationCount") {
            self.datasetMaxRelationCount = dict["DatasetMaxRelationCount"] as! Int64
        }
        if dict.keys.contains("DatasetMaxTotalFileSize") {
            self.datasetMaxTotalFileSize = dict["DatasetMaxTotalFileSize"] as! Int64
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ProjectMaxDatasetCount") {
            self.projectMaxDatasetCount = dict["ProjectMaxDatasetCount"] as! Int64
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("ServiceRole") {
            self.serviceRole = dict["ServiceRole"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class UpdateProjectResponseBody : Tea.TeaModel {
    public var project: Project?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.project?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            var model = Project()
            model.fromMap(dict["Project"] as! [String: Any])
            self.project = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = UpdateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateStoryRequest : Tea.TeaModel {
    public class Cover : Tea.TeaModel {
        public var URI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("URI") {
                self.URI = dict["URI"] as! String
            }
        }
    }
    public var cover: UpdateStoryRequest.Cover?

    public var customId: String?

    public var customLabels: [String: Any]?

    public var datasetName: String?

    public var objectId: String?

    public var projectName: String?

    public var storyName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cover?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cover != nil {
            map["Cover"] = self.cover?.toMap()
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.storyName != nil {
            map["StoryName"] = self.storyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cover") {
            var model = UpdateStoryRequest.Cover()
            model.fromMap(dict["Cover"] as! [String: Any])
            self.cover = model
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabels = dict["CustomLabels"] as! [String: Any]
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("StoryName") {
            self.storyName = dict["StoryName"] as! String
        }
    }
}

public class UpdateStoryShrinkRequest : Tea.TeaModel {
    public var coverShrink: String?

    public var customId: String?

    public var customLabelsShrink: String?

    public var datasetName: String?

    public var objectId: String?

    public var projectName: String?

    public var storyName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coverShrink != nil {
            map["Cover"] = self.coverShrink!
        }
        if self.customId != nil {
            map["CustomId"] = self.customId!
        }
        if self.customLabelsShrink != nil {
            map["CustomLabels"] = self.customLabelsShrink!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.storyName != nil {
            map["StoryName"] = self.storyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cover") {
            self.coverShrink = dict["Cover"] as! String
        }
        if dict.keys.contains("CustomId") {
            self.customId = dict["CustomId"] as! String
        }
        if dict.keys.contains("CustomLabels") {
            self.customLabelsShrink = dict["CustomLabels"] as! String
        }
        if dict.keys.contains("DatasetName") {
            self.datasetName = dict["DatasetName"] as! String
        }
        if dict.keys.contains("ObjectId") {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("StoryName") {
            self.storyName = dict["StoryName"] as! String
        }
    }
}

public class UpdateStoryResponseBody : Tea.TeaModel {
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

public class UpdateStoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateStoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = UpdateStoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateTriggerRequest : Tea.TeaModel {
    public class Actions : Tea.TeaModel {
        public var name: String?

        public var parameters: [String]?

        public override init() {
            super.init()
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
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! [String]
            }
        }
    }
    public class Notification : Tea.TeaModel {
        public var endpoint: String?

        public var topic: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("Topic") {
                self.topic = dict["Topic"] as! String
            }
        }
    }
    public var actions: [UpdateTriggerRequest.Actions]?

    public var id: String?

    public var input: Input?

    public var notification: UpdateTriggerRequest.Notification?

    public var projectName: String?

    public var tags: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.input?.validate()
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actions != nil {
            var tmp : [Any] = []
            for k in self.actions! {
                tmp.append(k.toMap())
            }
            map["Actions"] = tmp
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.input != nil {
            map["Input"] = self.input?.toMap()
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Actions") {
            self.actions = dict["Actions"] as! [UpdateTriggerRequest.Actions]
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Input") {
            var model = Input()
            model.fromMap(dict["Input"] as! [String: Any])
            self.input = model
        }
        if dict.keys.contains("Notification") {
            var model = UpdateTriggerRequest.Notification()
            model.fromMap(dict["Notification"] as! [String: Any])
            self.notification = model
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [String: Any]
        }
    }
}

public class UpdateTriggerShrinkRequest : Tea.TeaModel {
    public var actionsShrink: String?

    public var id: String?

    public var inputShrink: String?

    public var notificationShrink: String?

    public var projectName: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionsShrink != nil {
            map["Actions"] = self.actionsShrink!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.inputShrink != nil {
            map["Input"] = self.inputShrink!
        }
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Actions") {
            self.actionsShrink = dict["Actions"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("Input") {
            self.inputShrink = dict["Input"] as! String
        }
        if dict.keys.contains("Notification") {
            self.notificationShrink = dict["Notification"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
        }
    }
}

public class UpdateTriggerResponseBody : Tea.TeaModel {
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

public class UpdateTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTriggerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
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
            var model = UpdateTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
