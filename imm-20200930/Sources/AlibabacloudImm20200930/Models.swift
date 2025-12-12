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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressLine"] as? String {
            self.addressLine = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["District"] as? String {
            self.district = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["Township"] as? String {
            self.township = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["District"] as? String {
            self.district = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["Township"] as? String {
            self.township = value
        }
    }
}

public class AlgorithmDefinition : Tea.TeaModel {
    public var algorithmDefinitionId: String?

    public var createTime: String?

    public var customLabels: [[String: String]]?

    public var description_: String?

    public var name: String?

    public var ownerId: String?

    public var projectName: String?

    public var trainingSpecification: TrainingSpecification?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trainingSpecification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithmDefinitionId != nil {
            map["AlgorithmDefinitionId"] = self.algorithmDefinitionId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.trainingSpecification != nil {
            map["TrainingSpecification"] = self.trainingSpecification?.toMap()
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlgorithmDefinitionId"] as? String {
            self.algorithmDefinitionId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CustomLabels"] as? [[String: String]] {
            self.customLabels = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["TrainingSpecification"] as? [String: Any?] {
            var model = TrainingSpecification()
            model.fromMap(value)
            self.trainingSpecification = model
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class Answer : Tea.TeaModel {
    public var content: String?

    public var references: [ReferenceFile]?

    public override init() {
        super.init()
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
        if self.references != nil {
            var tmp : [Any] = []
            for k in self.references! {
                tmp.append(k.toMap())
            }
            map["References"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["References"] as? [Any?] {
            var tmp : [ReferenceFile] = []
            for v in value {
                if v != nil {
                    var model = ReferenceFile()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.references = tmp
        }
    }
}

public class App : Tea.TeaModel {
    public var appDescription: String?

    public var appId: String?

    public var appKey: String?

    public var appName: String?

    public var appRegion: Int64?

    public var appType: Int64?

    public var englishName: String?

    public var ownerId: String?

    public var packageName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appDescription != nil {
            map["AppDescription"] = self.appDescription!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appRegion != nil {
            map["AppRegion"] = self.appRegion!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.englishName != nil {
            map["EnglishName"] = self.englishName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.packageName != nil {
            map["PackageName"] = self.packageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppDescription"] as? String {
            self.appDescription = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["AppKey"] as? String {
            self.appKey = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AppRegion"] as? Int64 {
            self.appRegion = value
        }
        if let value = dict["AppType"] as? Int64 {
            self.appType = value
        }
        if let value = dict["EnglishName"] as? String {
            self.englishName = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PackageName"] as? String {
            self.packageName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Chain"] as? [Any?] {
            var tmp : [AssumeRoleChainNode] = []
            for v in value {
                if v != nil {
                    var model = AssumeRoleChainNode()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.chain = tmp
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bitrate"] as? Int64 {
            self.bitrate = value
        }
        if let value = dict["ChannelLayout"] as? String {
            self.channelLayout = value
        }
        if let value = dict["Channels"] as? Int64 {
            self.channels = value
        }
        if let value = dict["CodecLongName"] as? String {
            self.codecLongName = value
        }
        if let value = dict["CodecName"] as? String {
            self.codecName = value
        }
        if let value = dict["CodecTag"] as? String {
            self.codecTag = value
        }
        if let value = dict["CodecTagString"] as? String {
            self.codecTagString = value
        }
        if let value = dict["CodecTimeBase"] as? String {
            self.codecTimeBase = value
        }
        if let value = dict["Duration"] as? Double {
            self.duration = value
        }
        if let value = dict["FrameCount"] as? Int64 {
            self.frameCount = value
        }
        if let value = dict["Index"] as? Int64 {
            self.index = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["Lyric"] as? String {
            self.lyric = value
        }
        if let value = dict["SampleFormat"] as? String {
            self.sampleFormat = value
        }
        if let value = dict["SampleRate"] as? Int64 {
            self.sampleRate = value
        }
        if let value = dict["StartTime"] as? Double {
            self.startTime = value
        }
        if let value = dict["TimeBase"] as? String {
            self.timeBase = value
        }
    }
}

public class Binding : Tea.TeaModel {
    public var createTime: String?

    public var datasetName: String?

    public var phase: String?

    public var projectName: String?

    public var reason: String?

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
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Phase"] as? String {
            self.phase = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Boundary"] as? [String: Any?] {
            var model = Boundary()
            model.fromMap(value)
            self.boundary = model
        }
        if let value = dict["Confidence"] as? Double {
            self.confidence = value
        }
    }
}

public class Boundary : Tea.TeaModel {
    public var height: Int64?

    public var left_: Int64?

    public var polygon: [PointInt64]?

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
        if self.polygon != nil {
            var tmp : [Any] = []
            for k in self.polygon! {
                tmp.append(k.toMap())
            }
            map["Polygon"] = tmp
        }
        if self.top != nil {
            map["Top"] = self.top!
        }
        if self.width != nil {
            map["Width"] = self.width!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Height"] as? Int64 {
            self.height = value
        }
        if let value = dict["Left"] as? Int64 {
            self.left_ = value
        }
        if let value = dict["Polygon"] as? [Any?] {
            var tmp : [PointInt64] = []
            for v in value {
                if v != nil {
                    var model = PointInt64()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.polygon = tmp
        }
        if let value = dict["Top"] as? Int64 {
            self.top = value
        }
        if let value = dict["Width"] as? Int64 {
            self.width = value
        }
    }
}

public class Car : Tea.TeaModel {
    public var boundary: Boundary?

    public var carColor: String?

    public var carColorConfidence: Double?

    public var carType: String?

    public var carTypeConfidence: Double?

    public var confidence: Double?

    public var licensePlates: [LicensePlate]?

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
        if self.carColor != nil {
            map["CarColor"] = self.carColor!
        }
        if self.carColorConfidence != nil {
            map["CarColorConfidence"] = self.carColorConfidence!
        }
        if self.carType != nil {
            map["CarType"] = self.carType!
        }
        if self.carTypeConfidence != nil {
            map["CarTypeConfidence"] = self.carTypeConfidence!
        }
        if self.confidence != nil {
            map["Confidence"] = self.confidence!
        }
        if self.licensePlates != nil {
            var tmp : [Any] = []
            for k in self.licensePlates! {
                tmp.append(k.toMap())
            }
            map["LicensePlates"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Boundary"] as? [String: Any?] {
            var model = Boundary()
            model.fromMap(value)
            self.boundary = model
        }
        if let value = dict["CarColor"] as? String {
            self.carColor = value
        }
        if let value = dict["CarColorConfidence"] as? Double {
            self.carColorConfidence = value
        }
        if let value = dict["CarType"] as? String {
            self.carType = value
        }
        if let value = dict["CarTypeConfidence"] as? Double {
            self.carTypeConfidence = value
        }
        if let value = dict["Confidence"] as? Double {
            self.confidence = value
        }
        if let value = dict["LicensePlates"] as? [Any?] {
            var tmp : [LicensePlate] = []
            for v in value {
                if v != nil {
                    var model = LicensePlate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.licensePlates = tmp
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FigureId"] as? String {
                    self.figureId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Figures"] as? [Any?] {
                var tmp : [ClusterForReq.Cover.Figures] = []
                for v in value {
                    if v != nil {
                        var model = ClusterForReq.Cover.Figures()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.figures = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cover"] as? [String: Any?] {
            var model = ClusterForReq.Cover()
            model.fromMap(value)
            self.cover = model
        }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["CustomLabels"] as? [String: Any] {
            self.customLabels = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Boundary"] as? [String: Any?] {
            var model = Boundary()
            model.fromMap(value)
            self.boundary = model
        }
        if let value = dict["Confidence"] as? Double {
            self.confidence = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ContextualFile : Tea.TeaModel {
    public var contentType: String?

    public var datasetName: String?

    public var elements: [Element]?

    public var mediaType: String?

    public var OSSURI: String?

    public var objectId: String?

    public var ownerId: String?

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
        if self.contentType != nil {
            map["ContentType"] = self.contentType!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.elements != nil {
            var tmp : [Any] = []
            for k in self.elements! {
                tmp.append(k.toMap())
            }
            map["Elements"] = tmp
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.OSSURI != nil {
            map["OSSURI"] = self.OSSURI!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContentType"] as? String {
            self.contentType = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Elements"] as? [Any?] {
            var tmp : [Element] = []
            for v in value {
                if v != nil {
                    var model = Element()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.elements = tmp
        }
        if let value = dict["MediaType"] as? String {
            self.mediaType = value
        }
        if let value = dict["OSSURI"] as? String {
            self.OSSURI = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
        }
    }
}

public class ContextualMessage : Tea.TeaModel {
    public var content: String?

    public var files: [ContextualFile]?

    public var role: String?

    public override init() {
        super.init()
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
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [ContextualFile] = []
            for v in value {
                if v != nil {
                    var model = ContextualFile()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["Role"] as? String {
            self.role = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssumeRoleFor"] as? String {
                self.assumeRoleFor = value
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
            if let value = dict["RoleType"] as? String {
                self.roleType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Chain"] as? [Any?] {
            var tmp : [CredentialConfig.Chain] = []
            for v in value {
                if v != nil {
                    var model = CredentialConfig.Chain()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.chain = tmp
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["ServiceRole"] as? String {
            self.serviceRole = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AspectRatio"] as? String {
            self.aspectRatio = value
        }
        if let value = dict["Boundary"] as? [String: Any?] {
            var model = Boundary()
            model.fromMap(value)
            self.boundary = model
        }
        if let value = dict["Confidence"] as? Double {
            self.confidence = value
        }
    }
}

public class CustomParams : Tea.TeaModel {
    public var name: String?

    public var properties: [Property]?

    public override init() {
        super.init()
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
        if self.properties != nil {
            var tmp : [Any] = []
            for k in self.properties! {
                tmp.append(k.toMap())
            }
            map["Properties"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Properties"] as? [Any?] {
            var tmp : [Property] = []
            for v in value {
                if v != nil {
                    var model = Property()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.properties = tmp
        }
    }
}

public class CustomPrompt : Tea.TeaModel {
    public var roleDefinition: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleDefinition != nil {
            map["RoleDefinition"] = self.roleDefinition!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleDefinition"] as? String {
            self.roleDefinition = value
        }
    }
}

public class DataIngestion : Tea.TeaModel {
    public class Actions : Tea.TeaModel {
        public var fastFailPolicy: FastFailPolicy?

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
            try self.fastFailPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fastFailPolicy != nil {
                map["FastFailPolicy"] = self.fastFailPolicy?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FastFailPolicy"] as? [String: Any?] {
                var model = FastFailPolicy()
                model.fromMap(value)
                self.fastFailPolicy = model
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Parameters"] as? [String] {
                self.parameters = value
            }
        }
    }
    public class Notification : Tea.TeaModel {
        public var endpoint: String?

        public var MNS: MNS?

        public var rocketMQ: RocketMQ?

        public var topic: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.MNS?.validate()
            try self.rocketMQ?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.MNS != nil {
                map["MNS"] = self.MNS?.toMap()
            }
            if self.rocketMQ != nil {
                map["RocketMQ"] = self.rocketMQ?.toMap()
            }
            if self.topic != nil {
                map["Topic"] = self.topic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["MNS"] as? [String: Any?] {
                var model = MNS()
                model.fromMap(value)
                self.MNS = model
            }
            if let value = dict["RocketMQ"] as? [String: Any?] {
                var model = RocketMQ()
                model.fromMap(value)
                self.rocketMQ = model
            }
            if let value = dict["Topic"] as? String {
                self.topic = value
            }
        }
    }
    public class Statistic : Tea.TeaModel {
        public var skipFiles: Int64?

        public var submitFailure: Int64?

        public var submitSuccess: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.skipFiles != nil {
                map["SkipFiles"] = self.skipFiles!
            }
            if self.submitFailure != nil {
                map["SubmitFailure"] = self.submitFailure!
            }
            if self.submitSuccess != nil {
                map["SubmitSuccess"] = self.submitSuccess!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SkipFiles"] as? Int64 {
                self.skipFiles = value
            }
            if let value = dict["SubmitFailure"] as? Int64 {
                self.submitFailure = value
            }
            if let value = dict["SubmitSuccess"] as? Int64 {
                self.submitSuccess = value
            }
        }
    }
    public var actions: [DataIngestion.Actions]?

    public var createTime: String?

    public var error: String?

    public var id: String?

    public var input: Input?

    public var marker: String?

    public var notification: DataIngestion.Notification?

    public var phase: String?

    public var serviceRole: String?

    public var state: String?

    public var statistic: DataIngestion.Statistic?

    public var tags: [String: Any]?

    public var updateTime: String?

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
        try self.statistic?.validate()
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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.error != nil {
            map["Error"] = self.error!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.input != nil {
            map["Input"] = self.input?.toMap()
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
        }
        if self.phase != nil {
            map["Phase"] = self.phase!
        }
        if self.serviceRole != nil {
            map["ServiceRole"] = self.serviceRole!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.statistic != nil {
            map["Statistic"] = self.statistic?.toMap()
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Actions"] as? [Any?] {
            var tmp : [DataIngestion.Actions] = []
            for v in value {
                if v != nil {
                    var model = DataIngestion.Actions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.actions = tmp
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["Error"] as? String {
            self.error = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Input"] as? [String: Any?] {
            var model = Input()
            model.fromMap(value)
            self.input = model
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = DataIngestion.Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["Phase"] as? String {
            self.phase = value
        }
        if let value = dict["ServiceRole"] as? String {
            self.serviceRole = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["Statistic"] as? [String: Any?] {
            var model = DataIngestion.Statistic()
            model.fromMap(value)
            self.statistic = model
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
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

    public var workflowParameters: [WorkflowParameter]?

    public override init() {
        super.init()
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
        if self.workflowParameters != nil {
            var tmp : [Any] = []
            for k in self.workflowParameters! {
                tmp.append(k.toMap())
            }
            map["WorkflowParameters"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindCount"] as? Int64 {
            self.bindCount = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DatasetMaxBindCount"] as? Int64 {
            self.datasetMaxBindCount = value
        }
        if let value = dict["DatasetMaxEntityCount"] as? Int64 {
            self.datasetMaxEntityCount = value
        }
        if let value = dict["DatasetMaxFileCount"] as? Int64 {
            self.datasetMaxFileCount = value
        }
        if let value = dict["DatasetMaxRelationCount"] as? Int64 {
            self.datasetMaxRelationCount = value
        }
        if let value = dict["DatasetMaxTotalFileSize"] as? Int64 {
            self.datasetMaxTotalFileSize = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileCount"] as? Int64 {
            self.fileCount = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TotalFileSize"] as? Int64 {
            self.totalFileSize = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["WorkflowParameters"] as? [Any?] {
            var tmp : [WorkflowParameter] = []
            for v in value {
                if v != nil {
                    var model = WorkflowParameter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workflowParameters = tmp
        }
    }
}

public class DatasetTaskStatus : Tea.TeaModel {
    public var lastSucceededTime: String?

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
        if self.lastSucceededTime != nil {
            map["LastSucceededTime"] = self.lastSucceededTime!
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
        if let value = dict["LastSucceededTime"] as? String {
            self.lastSucceededTime = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class Element : Tea.TeaModel {
    public var elementContents: [ElementContent]?

    public var elementRelations: [ElementRelation]?

    public var elementType: String?

    public var objectId: String?

    public var semanticSimilarity: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.elementContents != nil {
            var tmp : [Any] = []
            for k in self.elementContents! {
                tmp.append(k.toMap())
            }
            map["ElementContents"] = tmp
        }
        if self.elementRelations != nil {
            var tmp : [Any] = []
            for k in self.elementRelations! {
                tmp.append(k.toMap())
            }
            map["ElementRelations"] = tmp
        }
        if self.elementType != nil {
            map["ElementType"] = self.elementType!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.semanticSimilarity != nil {
            map["SemanticSimilarity"] = self.semanticSimilarity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ElementContents"] as? [Any?] {
            var tmp : [ElementContent] = []
            for v in value {
                if v != nil {
                    var model = ElementContent()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.elementContents = tmp
        }
        if let value = dict["ElementRelations"] as? [Any?] {
            var tmp : [ElementRelation] = []
            for v in value {
                if v != nil {
                    var model = ElementRelation()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.elementRelations = tmp
        }
        if let value = dict["ElementType"] as? String {
            self.elementType = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["SemanticSimilarity"] as? Double {
            self.semanticSimilarity = value
        }
    }
}

public class ElementContent : Tea.TeaModel {
    public var content: String?

    public var timeRange: [Int64]?

    public var type: String?

    public var URL: String?

    public override init() {
        super.init()
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
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.URL != nil {
            map["URL"] = self.URL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["TimeRange"] as? [Int64] {
            self.timeRange = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["URL"] as? String {
            self.URL = value
        }
    }
}

public class ElementRelation : Tea.TeaModel {
    public var objectId: String?

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
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class FastFailPolicy : Tea.TeaModel {
    public var action: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Action"] as? String {
            self.action = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Age"] as? Int64 {
            self.age = value
        }
        if let value = dict["AgeSD"] as? Double {
            self.ageSD = value
        }
        if let value = dict["Attractive"] as? Double {
            self.attractive = value
        }
        if let value = dict["Beard"] as? String {
            self.beard = value
        }
        if let value = dict["BeardConfidence"] as? Double {
            self.beardConfidence = value
        }
        if let value = dict["Boundary"] as? [String: Any?] {
            var model = Boundary()
            model.fromMap(value)
            self.boundary = model
        }
        if let value = dict["Emotion"] as? String {
            self.emotion = value
        }
        if let value = dict["EmotionConfidence"] as? Double {
            self.emotionConfidence = value
        }
        if let value = dict["FaceQuality"] as? Double {
            self.faceQuality = value
        }
        if let value = dict["FigureClusterConfidence"] as? Double {
            self.figureClusterConfidence = value
        }
        if let value = dict["FigureClusterId"] as? String {
            self.figureClusterId = value
        }
        if let value = dict["FigureConfidence"] as? Double {
            self.figureConfidence = value
        }
        if let value = dict["FigureId"] as? String {
            self.figureId = value
        }
        if let value = dict["FigureType"] as? String {
            self.figureType = value
        }
        if let value = dict["Gender"] as? String {
            self.gender = value
        }
        if let value = dict["GenderConfidence"] as? Double {
            self.genderConfidence = value
        }
        if let value = dict["Glasses"] as? String {
            self.glasses = value
        }
        if let value = dict["GlassesConfidence"] as? Double {
            self.glassesConfidence = value
        }
        if let value = dict["Hat"] as? String {
            self.hat = value
        }
        if let value = dict["HatConfidence"] as? Double {
            self.hatConfidence = value
        }
        if let value = dict["HeadPose"] as? [String: Any?] {
            var model = HeadPose()
            model.fromMap(value)
            self.headPose = model
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["MaskConfidence"] as? Double {
            self.maskConfidence = value
        }
        if let value = dict["Mouth"] as? String {
            self.mouth = value
        }
        if let value = dict["MouthConfidence"] as? Double {
            self.mouthConfidence = value
        }
        if let value = dict["Sharpness"] as? Double {
            self.sharpness = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AverageAge"] as? Double {
            self.averageAge = value
        }
        if let value = dict["Cover"] as? [String: Any?] {
            var model = File()
            model.fromMap(value)
            self.cover = model
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["CustomLabels"] as? [String: Any] {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["FaceCount"] as? Int64 {
            self.faceCount = value
        }
        if let value = dict["Gender"] as? String {
            self.gender = value
        }
        if let value = dict["ImageCount"] as? Int64 {
            self.imageCount = value
        }
        if let value = dict["MaxAge"] as? Double {
            self.maxAge = value
        }
        if let value = dict["MetaLockVersion"] as? Int64 {
            self.metaLockVersion = value
        }
        if let value = dict["MinAge"] as? Double {
            self.minAge = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["VideoCount"] as? Int64 {
            self.videoCount = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FigureId"] as? String {
                    self.figureId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Figures"] as? [Any?] {
                var tmp : [FigureClusterForReq.Cover.Figures] = []
                for v in value {
                    if v != nil {
                        var model = FigureClusterForReq.Cover.Figures()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.figures = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cover"] as? [String: Any?] {
            var model = FigureClusterForReq.Cover()
            model.fromMap(value)
            self.cover = model
        }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["CustomLabels"] as? [String: Any] {
            self.customLabels = value
        }
        if let value = dict["MetaLockVersion"] as? Int64 {
            self.metaLockVersion = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
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

    public var duration: Double?

    public var ETag: String?

    public var EXIF: String?

    public var elements: [Element]?

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

    public var insights: Insights?

    public var labels: [Label]?

    public var language: String?

    public var latLong: String?

    public var mediaType: String?

    public var OCRContents: [OCRContents]?

    public var OCRTexts: String?

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

    public var objectStatus: String?

    public var objectType: String?

    public var orientation: Int64?

    public var ownerId: String?

    public var pageCount: Int64?

    public var performer: String?

    public var produceTime: String?

    public var programCount: Int64?

    public var projectName: String?

    public var reason: String?

    public var sceneElements: [SceneElement]?

    public var semanticTypes: [String]?

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
        try self.insights?.validate()
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
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.ETag != nil {
            map["ETag"] = self.ETag!
        }
        if self.EXIF != nil {
            map["EXIF"] = self.EXIF!
        }
        if self.elements != nil {
            var tmp : [Any] = []
            for k in self.elements! {
                tmp.append(k.toMap())
            }
            map["Elements"] = tmp
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
        if self.insights != nil {
            map["Insights"] = self.insights?.toMap()
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
        if self.OCRTexts != nil {
            map["OCRTexts"] = self.OCRTexts!
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
        if self.objectStatus != nil {
            map["ObjectStatus"] = self.objectStatus!
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
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.sceneElements != nil {
            var tmp : [Any] = []
            for k in self.sceneElements! {
                tmp.append(k.toMap())
            }
            map["SceneElements"] = tmp
        }
        if self.semanticTypes != nil {
            map["SemanticTypes"] = self.semanticTypes!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessControlAllowOrigin"] as? String {
            self.accessControlAllowOrigin = value
        }
        if let value = dict["AccessControlRequestMethod"] as? String {
            self.accessControlRequestMethod = value
        }
        if let value = dict["Addresses"] as? [Any?] {
            var tmp : [Address] = []
            for v in value {
                if v != nil {
                    var model = Address()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addresses = tmp
        }
        if let value = dict["Album"] as? String {
            self.album = value
        }
        if let value = dict["AlbumArtist"] as? String {
            self.albumArtist = value
        }
        if let value = dict["Artist"] as? String {
            self.artist = value
        }
        if let value = dict["AudioCovers"] as? [Any?] {
            var tmp : [Image] = []
            for v in value {
                if v != nil {
                    var model = Image()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.audioCovers = tmp
        }
        if let value = dict["AudioStreams"] as? [Any?] {
            var tmp : [AudioStream] = []
            for v in value {
                if v != nil {
                    var model = AudioStream()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.audioStreams = tmp
        }
        if let value = dict["Bitrate"] as? Int64 {
            self.bitrate = value
        }
        if let value = dict["CacheControl"] as? String {
            self.cacheControl = value
        }
        if let value = dict["Composer"] as? String {
            self.composer = value
        }
        if let value = dict["ContentDisposition"] as? String {
            self.contentDisposition = value
        }
        if let value = dict["ContentEncoding"] as? String {
            self.contentEncoding = value
        }
        if let value = dict["ContentLanguage"] as? String {
            self.contentLanguage = value
        }
        if let value = dict["ContentMd5"] as? String {
            self.contentMd5 = value
        }
        if let value = dict["ContentType"] as? String {
            self.contentType = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CroppingSuggestions"] as? [Any?] {
            var tmp : [CroppingSuggestion] = []
            for v in value {
                if v != nil {
                    var model = CroppingSuggestion()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.croppingSuggestions = tmp
        }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["CustomLabels"] as? [String: Any] {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Duration"] as? Double {
            self.duration = value
        }
        if let value = dict["ETag"] as? String {
            self.ETag = value
        }
        if let value = dict["EXIF"] as? String {
            self.EXIF = value
        }
        if let value = dict["Elements"] as? [Any?] {
            var tmp : [Element] = []
            for v in value {
                if v != nil {
                    var model = Element()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.elements = tmp
        }
        if let value = dict["FigureCount"] as? Int64 {
            self.figureCount = value
        }
        if let value = dict["Figures"] as? [Any?] {
            var tmp : [Figure] = []
            for v in value {
                if v != nil {
                    var model = Figure()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.figures = tmp
        }
        if let value = dict["FileAccessTime"] as? String {
            self.fileAccessTime = value
        }
        if let value = dict["FileCreateTime"] as? String {
            self.fileCreateTime = value
        }
        if let value = dict["FileHash"] as? String {
            self.fileHash = value
        }
        if let value = dict["FileModifiedTime"] as? String {
            self.fileModifiedTime = value
        }
        if let value = dict["Filename"] as? String {
            self.filename = value
        }
        if let value = dict["FormatLongName"] as? String {
            self.formatLongName = value
        }
        if let value = dict["FormatName"] as? String {
            self.formatName = value
        }
        if let value = dict["ImageHeight"] as? Int64 {
            self.imageHeight = value
        }
        if let value = dict["ImageScore"] as? [String: Any?] {
            var model = ImageScore()
            model.fromMap(value)
            self.imageScore = model
        }
        if let value = dict["ImageWidth"] as? Int64 {
            self.imageWidth = value
        }
        if let value = dict["Insights"] as? [String: Any?] {
            var model = Insights()
            model.fromMap(value)
            self.insights = model
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["LatLong"] as? String {
            self.latLong = value
        }
        if let value = dict["MediaType"] as? String {
            self.mediaType = value
        }
        if let value = dict["OCRContents"] as? [Any?] {
            var tmp : [OCRContents] = []
            for v in value {
                if v != nil {
                    var model = OCRContents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.OCRContents = tmp
        }
        if let value = dict["OCRTexts"] as? String {
            self.OCRTexts = value
        }
        if let value = dict["OSSCRC64"] as? String {
            self.OSSCRC64 = value
        }
        if let value = dict["OSSDeleteMarker"] as? String {
            self.OSSDeleteMarker = value
        }
        if let value = dict["OSSExpiration"] as? String {
            self.OSSExpiration = value
        }
        if let value = dict["OSSObjectType"] as? String {
            self.OSSObjectType = value
        }
        if let value = dict["OSSStorageClass"] as? String {
            self.OSSStorageClass = value
        }
        if let value = dict["OSSTagging"] as? [String: Any] {
            self.OSSTagging = value
        }
        if let value = dict["OSSTaggingCount"] as? Int64 {
            self.OSSTaggingCount = value
        }
        if let value = dict["OSSURI"] as? String {
            self.OSSURI = value
        }
        if let value = dict["OSSUserMeta"] as? [String: Any] {
            self.OSSUserMeta = value
        }
        if let value = dict["OSSVersionId"] as? String {
            self.OSSVersionId = value
        }
        if let value = dict["ObjectACL"] as? String {
            self.objectACL = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ObjectStatus"] as? String {
            self.objectStatus = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["Orientation"] as? Int64 {
            self.orientation = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["PageCount"] as? Int64 {
            self.pageCount = value
        }
        if let value = dict["Performer"] as? String {
            self.performer = value
        }
        if let value = dict["ProduceTime"] as? String {
            self.produceTime = value
        }
        if let value = dict["ProgramCount"] as? Int64 {
            self.programCount = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["SceneElements"] as? [Any?] {
            var tmp : [SceneElement] = []
            for v in value {
                if v != nil {
                    var model = SceneElement()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sceneElements = tmp
        }
        if let value = dict["SemanticTypes"] as? [String] {
            self.semanticTypes = value
        }
        if let value = dict["ServerSideDataEncryption"] as? String {
            self.serverSideDataEncryption = value
        }
        if let value = dict["ServerSideEncryption"] as? String {
            self.serverSideEncryption = value
        }
        if let value = dict["ServerSideEncryptionCustomerAlgorithm"] as? String {
            self.serverSideEncryptionCustomerAlgorithm = value
        }
        if let value = dict["ServerSideEncryptionKeyId"] as? String {
            self.serverSideEncryptionKeyId = value
        }
        if let value = dict["Size"] as? Int64 {
            self.size = value
        }
        if let value = dict["StartTime"] as? Double {
            self.startTime = value
        }
        if let value = dict["StreamCount"] as? Int64 {
            self.streamCount = value
        }
        if let value = dict["Subtitles"] as? [Any?] {
            var tmp : [SubtitleStream] = []
            for v in value {
                if v != nil {
                    var model = SubtitleStream()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subtitles = tmp
        }
        if let value = dict["Timezone"] as? String {
            self.timezone = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["TravelClusterId"] as? String {
            self.travelClusterId = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["VideoHeight"] as? Int64 {
            self.videoHeight = value
        }
        if let value = dict["VideoStreams"] as? [Any?] {
            var tmp : [VideoStream] = []
            for v in value {
                if v != nil {
                    var model = VideoStream()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.videoStreams = tmp
        }
        if let value = dict["VideoWidth"] as? Int64 {
            self.videoWidth = value
        }
    }
}

public class FileSmartCluster : Tea.TeaModel {
    public var similarity: Double?

    public var smartClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.similarity != nil {
            map["Similarity"] = self.similarity!
        }
        if self.smartClusterId != nil {
            map["SmartClusterId"] = self.smartClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Similarity"] as? Double {
            self.similarity = value
        }
        if let value = dict["SmartClusterId"] as? String {
            self.smartClusterId = value
        }
    }
}

public class FunctionCall : Tea.TeaModel {
    public var arguments: String?

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
        if self.arguments != nil {
            map["Arguments"] = self.arguments!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arguments"] as? String {
            self.arguments = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Pitch"] as? Double {
            self.pitch = value
        }
        if let value = dict["Roll"] as? Double {
            self.roll = value
        }
        if let value = dict["Yaw"] as? Double {
            self.yaw = value
        }
    }
}

public class Hyperparameters : Tea.TeaModel {
    public var backupInterval: Int64?

    public var batchSize: Int64?

    public var dataLoaderWorkers: Int64?

    public var evaluator: CustomParams?

    public var inputSize: [Int64]?

    public var maxEpoch: Int64?

    public var optimization: Optimization?

    public var schedule: Schedule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.evaluator?.validate()
        try self.optimization?.validate()
        try self.schedule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupInterval != nil {
            map["BackupInterval"] = self.backupInterval!
        }
        if self.batchSize != nil {
            map["BatchSize"] = self.batchSize!
        }
        if self.dataLoaderWorkers != nil {
            map["DataLoaderWorkers"] = self.dataLoaderWorkers!
        }
        if self.evaluator != nil {
            map["Evaluator"] = self.evaluator?.toMap()
        }
        if self.inputSize != nil {
            map["InputSize"] = self.inputSize!
        }
        if self.maxEpoch != nil {
            map["MaxEpoch"] = self.maxEpoch!
        }
        if self.optimization != nil {
            map["Optimization"] = self.optimization?.toMap()
        }
        if self.schedule != nil {
            map["Schedule"] = self.schedule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupInterval"] as? Int64 {
            self.backupInterval = value
        }
        if let value = dict["BatchSize"] as? Int64 {
            self.batchSize = value
        }
        if let value = dict["DataLoaderWorkers"] as? Int64 {
            self.dataLoaderWorkers = value
        }
        if let value = dict["Evaluator"] as? [String: Any?] {
            var model = CustomParams()
            model.fromMap(value)
            self.evaluator = model
        }
        if let value = dict["InputSize"] as? [Int64] {
            self.inputSize = value
        }
        if let value = dict["MaxEpoch"] as? Int64 {
            self.maxEpoch = value
        }
        if let value = dict["Optimization"] as? [String: Any?] {
            var model = Optimization()
            model.fromMap(value)
            self.optimization = model
        }
        if let value = dict["Schedule"] as? [String: Any?] {
            var model = Schedule()
            model.fromMap(value)
            self.schedule = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CroppingSuggestions"] as? [Any?] {
            var tmp : [CroppingSuggestion] = []
            for v in value {
                if v != nil {
                    var model = CroppingSuggestion()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.croppingSuggestions = tmp
        }
        if let value = dict["EXIF"] as? String {
            self.EXIF = value
        }
        if let value = dict["ImageHeight"] as? Int64 {
            self.imageHeight = value
        }
        if let value = dict["ImageScore"] as? [String: Any?] {
            var model = ImageScore()
            model.fromMap(value)
            self.imageScore = model
        }
        if let value = dict["ImageWidth"] as? Int64 {
            self.imageWidth = value
        }
        if let value = dict["OCRContents"] as? [Any?] {
            var tmp : [OCRContents] = []
            for v in value {
                if v != nil {
                    var model = OCRContents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.OCRContents = tmp
        }
    }
}

public class ImageInsight : Tea.TeaModel {
    public var caption: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caption != nil {
            map["Caption"] = self.caption!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Caption"] as? String {
            self.caption = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OverallQualityScore"] as? Double {
            self.overallQualityScore = value
        }
    }
}

public class ImageURL : Tea.TeaModel {
    public var thumbnail: String?

    public var URL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.thumbnail != nil {
            map["Thumbnail"] = self.thumbnail!
        }
        if self.URL != nil {
            map["URL"] = self.URL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Thumbnail"] as? String {
            self.thumbnail = value
        }
        if let value = dict["URL"] as? String {
            self.URL = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OSS"] as? [String: Any?] {
            var model = InputOSS()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FigureClusterId"] as? String {
                self.figureClusterId = value
            }
            if let value = dict["FigureId"] as? String {
                self.figureId = value
            }
            if let value = dict["FigureType"] as? String {
                self.figureType = value
            }
        }
    }
    public var addresses: [Address]?

    public var album: String?

    public var albumArtist: String?

    public var artist: String?

    public var composer: String?

    public var contentType: String?

    public var customId: String?

    public var customLabels: [String: Any]?

    public var figures: [InputFile.Figures]?

    public var fileHash: String?

    public var labels: [Label]?

    public var latLong: String?

    public var mediaType: String?

    public var OSSURI: String?

    public var performer: String?

    public var produceTime: String?

    public var title: String?

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
        if self.composer != nil {
            map["Composer"] = self.composer!
        }
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
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.latLong != nil {
            map["LatLong"] = self.latLong!
        }
        if self.mediaType != nil {
            map["MediaType"] = self.mediaType!
        }
        if self.OSSURI != nil {
            map["OSSURI"] = self.OSSURI!
        }
        if self.performer != nil {
            map["Performer"] = self.performer!
        }
        if self.produceTime != nil {
            map["ProduceTime"] = self.produceTime!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Addresses"] as? [Any?] {
            var tmp : [Address] = []
            for v in value {
                if v != nil {
                    var model = Address()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addresses = tmp
        }
        if let value = dict["Album"] as? String {
            self.album = value
        }
        if let value = dict["AlbumArtist"] as? String {
            self.albumArtist = value
        }
        if let value = dict["Artist"] as? String {
            self.artist = value
        }
        if let value = dict["Composer"] as? String {
            self.composer = value
        }
        if let value = dict["ContentType"] as? String {
            self.contentType = value
        }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["CustomLabels"] as? [String: Any] {
            self.customLabels = value
        }
        if let value = dict["Figures"] as? [Any?] {
            var tmp : [InputFile.Figures] = []
            for v in value {
                if v != nil {
                    var model = InputFile.Figures()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.figures = tmp
        }
        if let value = dict["FileHash"] as? String {
            self.fileHash = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["LatLong"] as? String {
            self.latLong = value
        }
        if let value = dict["MediaType"] as? String {
            self.mediaType = value
        }
        if let value = dict["OSSURI"] as? String {
            self.OSSURI = value
        }
        if let value = dict["Performer"] as? String {
            self.performer = value
        }
        if let value = dict["ProduceTime"] as? String {
            self.produceTime = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bucket"] as? String {
            self.bucket = value
        }
        if let value = dict["MatchExpressions"] as? [String] {
            self.matchExpressions = value
        }
        if let value = dict["Prefix"] as? String {
            self.prefix_ = value
        }
    }
}

public class Insights : Tea.TeaModel {
    public var image: ImageInsight?

    public var video: VideoInsight?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.image?.validate()
        try self.video?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.image != nil {
            map["Image"] = self.image?.toMap()
        }
        if self.video != nil {
            map["Video"] = self.video?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Image"] as? [String: Any?] {
            var model = ImageInsight()
            model.fromMap(value)
            self.image = model
        }
        if let value = dict["Video"] as? [String: Any?] {
            var model = VideoInsight()
            model.fromMap(value)
            self.video = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompressionLevel"] as? Int32 {
            self.compressionLevel = value
        }
        if let value = dict["LibraryName"] as? String {
            self.libraryName = value
        }
        if let value = dict["QuantizationBits"] as? Int32 {
            self.quantizationBits = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CentricScore"] as? Double {
            self.centricScore = value
        }
        if let value = dict["LabelConfidence"] as? Double {
            self.labelConfidence = value
        }
        if let value = dict["LabelLevel"] as? Int64 {
            self.labelLevel = value
        }
        if let value = dict["LabelName"] as? String {
            self.labelName = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["ParentLabelName"] as? String {
            self.parentLabelName = value
        }
    }
}

public class LicensePlate : Tea.TeaModel {
    public var boundary: Boundary?

    public var confidence: Double?

    public var content: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Boundary"] as? [String: Any?] {
            var model = Boundary()
            model.fromMap(value)
            self.boundary = model
        }
        if let value = dict["Confidence"] as? Double {
            self.confidence = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Addresses"] as? [Any?] {
            var tmp : [Address] = []
            for v in value {
                if v != nil {
                    var model = Address()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addresses = tmp
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["CustomLabels"] as? [String: Any] {
            self.customLabels = value
        }
        if let value = dict["LocationDateClusterEndTime"] as? String {
            self.locationDateClusterEndTime = value
        }
        if let value = dict["LocationDateClusterLevel"] as? String {
            self.locationDateClusterLevel = value
        }
        if let value = dict["LocationDateClusterStartTime"] as? String {
            self.locationDateClusterStartTime = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class MNS : Tea.TeaModel {
    public var topicName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
        }
    }
}

public class Message : Tea.TeaModel {
    public var assistantType: String?

    public var content: String?

    public var createTime: String?

    public var datasetName: String?

    public var language: String?

    public var regenerate: Bool?

    public var reply: String?

    public var score: Double?

    public var sourceURI: String?

    public var suggestion: String?

    public var tone: String?

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
        if self.assistantType != nil {
            map["AssistantType"] = self.assistantType!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.regenerate != nil {
            map["Regenerate"] = self.regenerate!
        }
        if self.reply != nil {
            map["Reply"] = self.reply!
        }
        if self.score != nil {
            map["Score"] = self.score!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.suggestion != nil {
            map["Suggestion"] = self.suggestion!
        }
        if self.tone != nil {
            map["Tone"] = self.tone!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssistantType"] as? String {
            self.assistantType = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["Regenerate"] as? Bool {
            self.regenerate = value
        }
        if let value = dict["Reply"] as? String {
            self.reply = value
        }
        if let value = dict["Score"] as? Double {
            self.score = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Suggestion"] as? String {
            self.suggestion = value
        }
        if let value = dict["Tone"] as? String {
            self.tone = value
        }
        if let value = dict["Topic"] as? String {
            self.topic = value
        }
    }
}

public class MetaData : Tea.TeaModel {
    public var identifier: String?

    public var provider: String?

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
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.provider != nil {
            map["Provider"] = self.provider!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["Provider"] as? String {
            self.provider = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class ModelSpecification : Tea.TeaModel {
    public var metaData: MetaData?

    public var spec: Spec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metaData?.validate()
        try self.spec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metaData != nil {
            map["MetaData"] = self.metaData?.toMap()
        }
        if self.spec != nil {
            map["Spec"] = self.spec?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MetaData"] as? [String: Any?] {
            var model = MetaData()
            model.fromMap(value)
            self.metaData = model
        }
        if let value = dict["Spec"] as? [String: Any?] {
            var model = Spec()
            model.fromMap(value)
            self.spec = model
        }
    }
}

public class Notification : Tea.TeaModel {
    public var extendedMessageURI: String?

    public var MNS: MNS?

    public var rocketMQ: RocketMQ?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.MNS?.validate()
        try self.rocketMQ?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extendedMessageURI != nil {
            map["ExtendedMessageURI"] = self.extendedMessageURI!
        }
        if self.MNS != nil {
            map["MNS"] = self.MNS?.toMap()
        }
        if self.rocketMQ != nil {
            map["RocketMQ"] = self.rocketMQ?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExtendedMessageURI"] as? String {
            self.extendedMessageURI = value
        }
        if let value = dict["MNS"] as? [String: Any?] {
            var model = MNS()
            model.fromMap(value)
            self.MNS = model
        }
        if let value = dict["RocketMQ"] as? [String: Any?] {
            var model = RocketMQ()
            model.fromMap(value)
            self.rocketMQ = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Boundary"] as? [String: Any?] {
            var model = Boundary()
            model.fromMap(value)
            self.boundary = model
        }
        if let value = dict["Confidence"] as? Double {
            self.confidence = value
        }
        if let value = dict["Contents"] as? String {
            self.contents = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DoVoxelGridDownDownSampling"] as? Bool {
            self.doVoxelGridDownDownSampling = value
        }
        if let value = dict["LibraryName"] as? String {
            self.libraryName = value
        }
        if let value = dict["OctreeResolution"] as? Double {
            self.octreeResolution = value
        }
        if let value = dict["PointResolution"] as? Double {
            self.pointResolution = value
        }
    }
}

public class Optimization : Tea.TeaModel {
    public var learningRate: Double?

    public var optimizer: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.learningRate != nil {
            map["LearningRate"] = self.learningRate!
        }
        if self.optimizer != nil {
            map["Optimizer"] = self.optimizer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LearningRate"] as? Double {
            self.learningRate = value
        }
        if let value = dict["Optimizer"] as? String {
            self.optimizer = value
        }
    }
}

public class PointInt64 : Tea.TeaModel {
    public var x: Int64?

    public var y: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.x != nil {
            map["X"] = self.x!
        }
        if self.y != nil {
            map["Y"] = self.y!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["X"] as? Int64 {
            self.x = value
        }
        if let value = dict["Y"] as? Int64 {
            self.y = value
        }
    }
}

public class Project : Tea.TeaModel {
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

    public var tags: [Project.Tags]?

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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DatasetCount"] as? Int64 {
            self.datasetCount = value
        }
        if let value = dict["DatasetMaxBindCount"] as? Int64 {
            self.datasetMaxBindCount = value
        }
        if let value = dict["DatasetMaxEntityCount"] as? Int64 {
            self.datasetMaxEntityCount = value
        }
        if let value = dict["DatasetMaxFileCount"] as? Int64 {
            self.datasetMaxFileCount = value
        }
        if let value = dict["DatasetMaxRelationCount"] as? Int64 {
            self.datasetMaxRelationCount = value
        }
        if let value = dict["DatasetMaxTotalFileSize"] as? Int64 {
            self.datasetMaxTotalFileSize = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EngineConcurrency"] as? Int64 {
            self.engineConcurrency = value
        }
        if let value = dict["FileCount"] as? Int64 {
            self.fileCount = value
        }
        if let value = dict["ProjectMaxDatasetCount"] as? Int64 {
            self.projectMaxDatasetCount = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["ProjectQueriesPerSecond"] as? Int64 {
            self.projectQueriesPerSecond = value
        }
        if let value = dict["ServiceRole"] as? String {
            self.serviceRole = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [Project.Tags] = []
            for v in value {
                if v != nil {
                    var model = Project.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["TotalFileSize"] as? Int64 {
            self.totalFileSize = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class Property : Tea.TeaModel {
    public var itemsType: String?

    public var name: String?

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
        if self.itemsType != nil {
            map["ItemsType"] = self.itemsType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.valueType != nil {
            map["ValueType"] = self.valueType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ItemsType"] as? String {
            self.itemsType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
        if let value = dict["ValueType"] as? String {
            self.valueType = value
        }
    }
}

public class ReferenceFile : Tea.TeaModel {
    public var datasetName: String?

    public var objectId: String?

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
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LocalName"] as? String {
            self.localName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class Resource : Tea.TeaModel {
    public var CPU: Int64?

    public var ECSInstance: String?

    public var GPUModel: String?

    public var GPUNum: Int64?

    public var name: String?

    public var RAM: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CPU != nil {
            map["CPU"] = self.CPU!
        }
        if self.ECSInstance != nil {
            map["ECSInstance"] = self.ECSInstance!
        }
        if self.GPUModel != nil {
            map["GPUModel"] = self.GPUModel!
        }
        if self.GPUNum != nil {
            map["GPUNum"] = self.GPUNum!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.RAM != nil {
            map["RAM"] = self.RAM!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CPU"] as? Int64 {
            self.CPU = value
        }
        if let value = dict["ECSInstance"] as? String {
            self.ECSInstance = value
        }
        if let value = dict["GPUModel"] as? String {
            self.GPUModel = value
        }
        if let value = dict["GPUNum"] as? Int64 {
            self.GPUNum = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RAM"] as? Int64 {
            self.RAM = value
        }
    }
}

public class RocketMQ : Tea.TeaModel {
    public var instanceId: String?

    public var topicName: String?

    public override init() {
        super.init()
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
        if self.topicName != nil {
            map["TopicName"] = self.topicName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["TopicName"] as? String {
            self.topicName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomLabels"] as? [Any?] {
            var tmp : [KeyValuePair] = []
            for v in value {
                if v != nil {
                    var model = KeyValuePair()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.customLabels = tmp
        }
        if let value = dict["URI"] as? String {
            self.URI = value
        }
    }
}

public class Runtime : Tea.TeaModel {
    public var hyperparameters: Hyperparameters?

    public var resource: Resource?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.hyperparameters?.validate()
        try self.resource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hyperparameters != nil {
            map["Hyperparameters"] = self.hyperparameters?.toMap()
        }
        if self.resource != nil {
            map["Resource"] = self.resource?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Hyperparameters"] as? [String: Any?] {
            var model = Hyperparameters()
            model.fromMap(value)
            self.hyperparameters = model
        }
        if let value = dict["Resource"] as? [String: Any?] {
            var model = Resource()
            model.fromMap(value)
            self.resource = model
        }
    }
}

public class SceneElement : Tea.TeaModel {
    public var frameTimes: [Int64]?

    public var timeRange: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.frameTimes != nil {
            map["FrameTimes"] = self.frameTimes!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FrameTimes"] as? [Int64] {
            self.frameTimes = value
        }
        if let value = dict["TimeRange"] as? [Int64] {
            self.timeRange = value
        }
    }
}

public class Schedule : Tea.TeaModel {
    public var gamma: Double?

    public var LRScheduler: String?

    public var stepSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gamma != nil {
            map["Gamma"] = self.gamma!
        }
        if self.LRScheduler != nil {
            map["LRScheduler"] = self.LRScheduler!
        }
        if self.stepSize != nil {
            map["StepSize"] = self.stepSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Gamma"] as? Double {
            self.gamma = value
        }
        if let value = dict["LRScheduler"] as? String {
            self.LRScheduler = value
        }
        if let value = dict["StepSize"] as? Int64 {
            self.stepSize = value
        }
    }
}

public class SimilarImage : Tea.TeaModel {
    public var imageScore: Double?

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
        if self.imageScore != nil {
            map["ImageScore"] = self.imageScore!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageScore"] as? Double {
            self.imageScore = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
        }
    }
}

public class SimilarImageCluster : Tea.TeaModel {
    public var createTime: String?

    public var customLabels: [String: Any]?

    public var files: [SimilarImage]?

    public var objectId: String?

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
        if self.customLabels != nil {
            map["CustomLabels"] = self.customLabels!
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
        if let value = dict["CustomLabels"] as? [String: Any] {
            self.customLabels = value
        }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [SimilarImage] = []
            for v in value {
                if v != nil {
                    var model = SimilarImage()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Field"] as? String {
            self.field = value
        }
        if let value = dict["Operation"] as? String {
            self.operation = value
        }
        if let value = dict["SubQueries"] as? [Any?] {
            var tmp : [SimpleQuery] = []
            for v in value {
                if v != nil {
                    var model = SimpleQuery()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subQueries = tmp
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class SmartCluster : Tea.TeaModel {
    public var createTime: String?

    public var datasetName: String?

    public var description_: String?

    public var name: String?

    public var objectId: String?

    public var objectStatus: String?

    public var objectType: String?

    public var ownerId: String?

    public var projectName: String?

    public var rule: SmartClusterRule?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.objectStatus != nil {
            map["ObjectStatus"] = self.objectStatus!
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
        if self.rule != nil {
            map["Rule"] = self.rule?.toMap()
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
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ObjectStatus"] as? String {
            self.objectStatus = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Rule"] as? [String: Any?] {
            var model = SmartClusterRule()
            model.fromMap(value)
            self.rule = model
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class SmartClusterRule : Tea.TeaModel {
    public var keywords: [String]?

    public var sensitivity: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.sensitivity != nil {
            map["Sensitivity"] = self.sensitivity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keywords"] as? [String] {
            self.keywords = value
        }
        if let value = dict["Sensitivity"] as? Double {
            self.sensitivity = value
        }
    }
}

public class Spec : Tea.TeaModel {
    public var backbone: CustomParams?

    public var classNum: Int64?

    public var head: CustomParams?

    public var inputChannel: Int64?

    public var loss: CustomParams?

    public var name: String?

    public var neck: CustomParams?

    public var numLandmarks: Int64?

    public var pretrainedPath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backbone?.validate()
        try self.head?.validate()
        try self.loss?.validate()
        try self.neck?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backbone != nil {
            map["Backbone"] = self.backbone?.toMap()
        }
        if self.classNum != nil {
            map["ClassNum"] = self.classNum!
        }
        if self.head != nil {
            map["Head"] = self.head?.toMap()
        }
        if self.inputChannel != nil {
            map["InputChannel"] = self.inputChannel!
        }
        if self.loss != nil {
            map["Loss"] = self.loss?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.neck != nil {
            map["Neck"] = self.neck?.toMap()
        }
        if self.numLandmarks != nil {
            map["NumLandmarks"] = self.numLandmarks!
        }
        if self.pretrainedPath != nil {
            map["PretrainedPath"] = self.pretrainedPath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Backbone"] as? [String: Any?] {
            var model = CustomParams()
            model.fromMap(value)
            self.backbone = model
        }
        if let value = dict["ClassNum"] as? Int64 {
            self.classNum = value
        }
        if let value = dict["Head"] as? [String: Any?] {
            var model = CustomParams()
            model.fromMap(value)
            self.head = model
        }
        if let value = dict["InputChannel"] as? Int64 {
            self.inputChannel = value
        }
        if let value = dict["Loss"] as? [String: Any?] {
            var model = CustomParams()
            model.fromMap(value)
            self.loss = model
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Neck"] as? [String: Any?] {
            var model = CustomParams()
            model.fromMap(value)
            self.neck = model
        }
        if let value = dict["NumLandmarks"] as? Int64 {
            self.numLandmarks = value
        }
        if let value = dict["PretrainedPath"] as? String {
            self.pretrainedPath = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Addresses"] as? [Any?] {
            var tmp : [Address] = []
            for v in value {
                if v != nil {
                    var model = Address()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addresses = tmp
        }
        if let value = dict["Cover"] as? [String: Any?] {
            var model = File()
            model.fromMap(value)
            self.cover = model
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["CustomLabels"] as? [String: Any] {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["FigureClusterIds"] as? [String] {
            self.figureClusterIds = value
        }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [File] = []
            for v in value {
                if v != nil {
                    var model = File()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ObjectType"] as? String {
            self.objectType = value
        }
        if let value = dict["OwnerId"] as? String {
            self.ownerId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["StoryEndTime"] as? String {
            self.storyEndTime = value
        }
        if let value = dict["StoryName"] as? String {
            self.storyName = value
        }
        if let value = dict["StoryStartTime"] as? String {
            self.storyStartTime = value
        }
        if let value = dict["StorySubType"] as? String {
            self.storySubType = value
        }
        if let value = dict["StoryType"] as? String {
            self.storyType = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class StreamOptions : Tea.TeaModel {
    public var incrementalOutput: Bool?

    public var needReturnFinalResult: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.incrementalOutput != nil {
            map["IncrementalOutput"] = self.incrementalOutput!
        }
        if self.needReturnFinalResult != nil {
            map["NeedReturnFinalResult"] = self.needReturnFinalResult!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IncrementalOutput"] as? Bool {
            self.incrementalOutput = value
        }
        if let value = dict["NeedReturnFinalResult"] as? Bool {
            self.needReturnFinalResult = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bitrate"] as? Int64 {
            self.bitrate = value
        }
        if let value = dict["CodecLongName"] as? String {
            self.codecLongName = value
        }
        if let value = dict["CodecName"] as? String {
            self.codecName = value
        }
        if let value = dict["CodecTag"] as? String {
            self.codecTag = value
        }
        if let value = dict["CodecTagString"] as? String {
            self.codecTagString = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Duration"] as? Double {
            self.duration = value
        }
        if let value = dict["Height"] as? Int64 {
            self.height = value
        }
        if let value = dict["Index"] as? Int64 {
            self.index = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["StartTime"] as? Double {
            self.startTime = value
        }
        if let value = dict["Width"] as? Int64 {
            self.width = value
        }
    }
}

public class TargetAudio : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Mixing"] as? Bool {
                self.mixing = value
            }
        }
    }
    public class TranscodeAudio : Tea.TeaModel {
        public var bitrate: Int32?

        public var bitrateOption: String?

        public var bitsPerSample: Int32?

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
            if self.bitsPerSample != nil {
                map["BitsPerSample"] = self.bitsPerSample!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bitrate"] as? Int32 {
                self.bitrate = value
            }
            if let value = dict["BitrateOption"] as? String {
                self.bitrateOption = value
            }
            if let value = dict["BitsPerSample"] as? Int32 {
                self.bitsPerSample = value
            }
            if let value = dict["Channel"] as? Int32 {
                self.channel = value
            }
            if let value = dict["Codec"] as? String {
                self.codec = value
            }
            if let value = dict["Quality"] as? Int32 {
                self.quality = value
            }
            if let value = dict["SampleRate"] as? Int32 {
                self.sampleRate = value
            }
            if let value = dict["SampleRateOption"] as? String {
                self.sampleRateOption = value
            }
        }
    }
    public var disableAudio: Bool?

    public var filterAudio: TargetAudio.FilterAudio?

    public var stream: [Int64]?

    public var transcodeAudio: TargetAudio.TranscodeAudio?

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
        if self.stream != nil {
            map["Stream"] = self.stream!
        }
        if self.transcodeAudio != nil {
            map["TranscodeAudio"] = self.transcodeAudio?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DisableAudio"] as? Bool {
            self.disableAudio = value
        }
        if let value = dict["FilterAudio"] as? [String: Any?] {
            var model = TargetAudio.FilterAudio()
            model.fromMap(value)
            self.filterAudio = model
        }
        if let value = dict["Stream"] as? [Int64] {
            self.stream = value
        }
        if let value = dict["TranscodeAudio"] as? [String: Any?] {
            var model = TargetAudio.TranscodeAudio()
            model.fromMap(value)
            self.transcodeAudio = model
        }
    }
}

public class TargetImage : Tea.TeaModel {
    public class Animations : Tea.TeaModel {
        public var format: String?

        public var frameRate: Double?

        public var height: Double?

        public var interval: Double?

        public var number: Int32?

        public var scaleType: String?

        public var startTime: Double?

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
            if self.format != nil {
                map["Format"] = self.format!
            }
            if self.frameRate != nil {
                map["FrameRate"] = self.frameRate!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Format"] as? String {
                self.format = value
            }
            if let value = dict["FrameRate"] as? Double {
                self.frameRate = value
            }
            if let value = dict["Height"] as? Double {
                self.height = value
            }
            if let value = dict["Interval"] as? Double {
                self.interval = value
            }
            if let value = dict["Number"] as? Int32 {
                self.number = value
            }
            if let value = dict["ScaleType"] as? String {
                self.scaleType = value
            }
            if let value = dict["StartTime"] as? Double {
                self.startTime = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
            if let value = dict["Width"] as? Double {
                self.width = value
            }
        }
    }
    public class Snapshots : Tea.TeaModel {
        public var format: String?

        public var height: Double?

        public var interval: Double?

        public var mode: String?

        public var number: Int32?

        public var scaleType: String?

        public var startTime: Double?

        public var threshold: Int32?

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
            if self.format != nil {
                map["Format"] = self.format!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.interval != nil {
                map["Interval"] = self.interval!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
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
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            if self.width != nil {
                map["Width"] = self.width!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Format"] as? String {
                self.format = value
            }
            if let value = dict["Height"] as? Double {
                self.height = value
            }
            if let value = dict["Interval"] as? Double {
                self.interval = value
            }
            if let value = dict["Mode"] as? String {
                self.mode = value
            }
            if let value = dict["Number"] as? Int32 {
                self.number = value
            }
            if let value = dict["ScaleType"] as? String {
                self.scaleType = value
            }
            if let value = dict["StartTime"] as? Double {
                self.startTime = value
            }
            if let value = dict["Threshold"] as? Int32 {
                self.threshold = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
            if let value = dict["Width"] as? Double {
                self.width = value
            }
        }
    }
    public class Sprites : Tea.TeaModel {
        public var format: String?

        public var interval: Double?

        public var margin: Int32?

        public var mode: String?

        public var number: Int32?

        public var pad: Int32?

        public var scaleHeight: Double?

        public var scaleType: String?

        public var scaleWidth: Double?

        public var startTime: Double?

        public var threshold: Int32?

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
            if self.mode != nil {
                map["Mode"] = self.mode!
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
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Format"] as? String {
                self.format = value
            }
            if let value = dict["Interval"] as? Double {
                self.interval = value
            }
            if let value = dict["Margin"] as? Int32 {
                self.margin = value
            }
            if let value = dict["Mode"] as? String {
                self.mode = value
            }
            if let value = dict["Number"] as? Int32 {
                self.number = value
            }
            if let value = dict["Pad"] as? Int32 {
                self.pad = value
            }
            if let value = dict["ScaleHeight"] as? Double {
                self.scaleHeight = value
            }
            if let value = dict["ScaleType"] as? String {
                self.scaleType = value
            }
            if let value = dict["ScaleWidth"] as? Double {
                self.scaleWidth = value
            }
            if let value = dict["StartTime"] as? Double {
                self.startTime = value
            }
            if let value = dict["Threshold"] as? Int32 {
                self.threshold = value
            }
            if let value = dict["TileHeight"] as? Int32 {
                self.tileHeight = value
            }
            if let value = dict["TileWidth"] as? Int32 {
                self.tileWidth = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
    public var animations: [TargetImage.Animations]?

    public var snapshots: [TargetImage.Snapshots]?

    public var sprites: [TargetImage.Sprites]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.animations != nil {
            var tmp : [Any] = []
            for k in self.animations! {
                tmp.append(k.toMap())
            }
            map["Animations"] = tmp
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Animations"] as? [Any?] {
            var tmp : [TargetImage.Animations] = []
            for v in value {
                if v != nil {
                    var model = TargetImage.Animations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.animations = tmp
        }
        if let value = dict["Snapshots"] as? [Any?] {
            var tmp : [TargetImage.Snapshots] = []
            for v in value {
                if v != nil {
                    var model = TargetImage.Snapshots()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.snapshots = tmp
        }
        if let value = dict["Sprites"] as? [Any?] {
            var tmp : [TargetImage.Sprites] = []
            for v in value {
                if v != nil {
                    var model = TargetImage.Sprites()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sprites = tmp
        }
    }
}

public class TargetSubtitle : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Format"] as? String {
                self.format = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
    public var disableSubtitle: Bool?

    public var extractSubtitle: TargetSubtitle.ExtractSubtitle?

    public var stream: [Int32]?

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
        if self.stream != nil {
            map["Stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DisableSubtitle"] as? Bool {
            self.disableSubtitle = value
        }
        if let value = dict["ExtractSubtitle"] as? [String: Any?] {
            var model = TargetSubtitle.ExtractSubtitle()
            model.fromMap(value)
            self.extractSubtitle = model
        }
        if let value = dict["Stream"] as? [Int32] {
            self.stream = value
        }
    }
}

public class TargetVideo : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Duration"] as? Double {
                    self.duration = value
                }
                if let value = dict["Dx"] as? Double {
                    self.dx = value
                }
                if let value = dict["Dy"] as? Double {
                    self.dy = value
                }
                if let value = dict["Height"] as? Double {
                    self.height = value
                }
                if let value = dict["ReferPos"] as? String {
                    self.referPos = value
                }
                if let value = dict["StartTime"] as? Double {
                    self.startTime = value
                }
                if let value = dict["Width"] as? Double {
                    self.width = value
                }
            }
        }
        public class Desensitization : Tea.TeaModel {
            public class Face : Tea.TeaModel {
                public var confidence: Double?

                public var minSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.confidence != nil {
                        map["Confidence"] = self.confidence!
                    }
                    if self.minSize != nil {
                        map["MinSize"] = self.minSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Confidence"] as? Double {
                        self.confidence = value
                    }
                    if let value = dict["MinSize"] as? Int32 {
                        self.minSize = value
                    }
                }
            }
            public class LicensePlate : Tea.TeaModel {
                public var confidence: Double?

                public var minSize: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.confidence != nil {
                        map["Confidence"] = self.confidence!
                    }
                    if self.minSize != nil {
                        map["MinSize"] = self.minSize!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Confidence"] as? Double {
                        self.confidence = value
                    }
                    if let value = dict["MinSize"] as? Int32 {
                        self.minSize = value
                    }
                }
            }
            public var face: TargetVideo.FilterVideo.Desensitization.Face?

            public var licensePlate: TargetVideo.FilterVideo.Desensitization.LicensePlate?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.face?.validate()
                try self.licensePlate?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.face != nil {
                    map["Face"] = self.face?.toMap()
                }
                if self.licensePlate != nil {
                    map["LicensePlate"] = self.licensePlate?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Face"] as? [String: Any?] {
                    var model = TargetVideo.FilterVideo.Desensitization.Face()
                    model.fromMap(value)
                    self.face = model
                }
                if let value = dict["LicensePlate"] as? [String: Any?] {
                    var model = TargetVideo.FilterVideo.Desensitization.LicensePlate()
                    model.fromMap(value)
                    self.licensePlate = model
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BorderColor"] as? String {
                    self.borderColor = value
                }
                if let value = dict["BorderWidth"] as? Int32 {
                    self.borderWidth = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Duration"] as? Double {
                    self.duration = value
                }
                if let value = dict["Dx"] as? Double {
                    self.dx = value
                }
                if let value = dict["Dy"] as? Double {
                    self.dy = value
                }
                if let value = dict["FontApha"] as? Double {
                    self.fontApha = value
                }
                if let value = dict["FontColor"] as? String {
                    self.fontColor = value
                }
                if let value = dict["FontName"] as? String {
                    self.fontName = value
                }
                if let value = dict["FontSize"] as? Int32 {
                    self.fontSize = value
                }
                if let value = dict["Height"] as? Double {
                    self.height = value
                }
                if let value = dict["ReferPos"] as? String {
                    self.referPos = value
                }
                if let value = dict["StartTime"] as? Double {
                    self.startTime = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["URI"] as? String {
                    self.URI = value
                }
                if let value = dict["Width"] as? Double {
                    self.width = value
                }
            }
        }
        public var delogos: [TargetVideo.FilterVideo.Delogos]?

        public var desensitization: TargetVideo.FilterVideo.Desensitization?

        public var speed: Double?

        public var watermarks: [TargetVideo.FilterVideo.Watermarks]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.desensitization?.validate()
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
            if self.desensitization != nil {
                map["Desensitization"] = self.desensitization?.toMap()
            }
            if self.speed != nil {
                map["Speed"] = self.speed!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Delogos"] as? [Any?] {
                var tmp : [TargetVideo.FilterVideo.Delogos] = []
                for v in value {
                    if v != nil {
                        var model = TargetVideo.FilterVideo.Delogos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.delogos = tmp
            }
            if let value = dict["Desensitization"] as? [String: Any?] {
                var model = TargetVideo.FilterVideo.Desensitization()
                model.fromMap(value)
                self.desensitization = model
            }
            if let value = dict["Speed"] as? Double {
                self.speed = value
            }
            if let value = dict["Watermarks"] as? [Any?] {
                var tmp : [TargetVideo.FilterVideo.Watermarks] = []
                for v in value {
                    if v != nil {
                        var model = TargetVideo.FilterVideo.Watermarks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.watermarks = tmp
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

        public var videoSlim: Int32?

        public override init() {
            super.init()
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
            if self.videoSlim != nil {
                map["VideoSlim"] = self.videoSlim!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdaptiveResolutionDirection"] as? Bool {
                self.adaptiveResolutionDirection = value
            }
            if let value = dict["BFrames"] as? Int32 {
                self.BFrames = value
            }
            if let value = dict["Bitrate"] as? Int32 {
                self.bitrate = value
            }
            if let value = dict["BitrateOption"] as? String {
                self.bitrateOption = value
            }
            if let value = dict["BufferSize"] as? Int32 {
                self.bufferSize = value
            }
            if let value = dict["CRF"] as? Double {
                self.CRF = value
            }
            if let value = dict["Codec"] as? String {
                self.codec = value
            }
            if let value = dict["FrameRate"] as? Double {
                self.frameRate = value
            }
            if let value = dict["FrameRateOption"] as? String {
                self.frameRateOption = value
            }
            if let value = dict["GOPSize"] as? Int32 {
                self.GOPSize = value
            }
            if let value = dict["MaxBitrate"] as? Int32 {
                self.maxBitrate = value
            }
            if let value = dict["PixelFormat"] as? String {
                self.pixelFormat = value
            }
            if let value = dict["Refs"] as? Int32 {
                self.refs = value
            }
            if let value = dict["Resolution"] as? String {
                self.resolution = value
            }
            if let value = dict["ResolutionOption"] as? String {
                self.resolutionOption = value
            }
            if let value = dict["Rotation"] as? Int32 {
                self.rotation = value
            }
            if let value = dict["ScaleType"] as? String {
                self.scaleType = value
            }
            if let value = dict["VideoSlim"] as? Int32 {
                self.videoSlim = value
            }
        }
    }
    public var disableVideo: Bool?

    public var filterVideo: TargetVideo.FilterVideo?

    public var stream: [Int32]?

    public var transcodeVideo: TargetVideo.TranscodeVideo?

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
        if self.stream != nil {
            map["Stream"] = self.stream!
        }
        if self.transcodeVideo != nil {
            map["TranscodeVideo"] = self.transcodeVideo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DisableVideo"] as? Bool {
            self.disableVideo = value
        }
        if let value = dict["FilterVideo"] as? [String: Any?] {
            var model = TargetVideo.FilterVideo()
            model.fromMap(value)
            self.filterVideo = model
        }
        if let value = dict["Stream"] as? [Int32] {
            self.stream = value
        }
        if let value = dict["TranscodeVideo"] as? [String: Any?] {
            var model = TargetVideo.TranscodeVideo()
            model.fromMap(value)
            self.transcodeVideo = model
        }
    }
}

public class TaskInfo : Tea.TeaModel {
    public var code: String?

    public var endTime: String?

    public var message: String?

    public var progress: Int32?

    public var startTime: String?

    public var status: String?

    public var tags: [String: Any]?

    public var taskId: String?

    public var taskRequestDefinition: String?

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
        if self.progress != nil {
            map["Progress"] = self.progress!
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
        if self.taskRequestDefinition != nil {
            map["TaskRequestDefinition"] = self.taskRequestDefinition!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Progress"] as? Int32 {
            self.progress = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskRequestDefinition"] as? String {
            self.taskRequestDefinition = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["End"] as? String {
            self.end = value
        }
        if let value = dict["Start"] as? String {
            self.start = value
        }
    }
}

public class ToolCall : Tea.TeaModel {
    public var function: FunctionCall?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.function?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.function != nil {
            map["Function"] = self.function?.toMap()
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Function"] as? [String: Any?] {
            var model = FunctionCall()
            model.fromMap(value)
            self.function = model
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class TrainingSpecification : Tea.TeaModel {
    public var datasetName: String?

    public var endpoint: String?

    public var modelSpecification: ModelSpecification?

    public var runtime: Runtime?

    public var sourceURI: String?

    public var targetURI: String?

    public var transforms: [CustomParams]?

    public var validationSourceURI: String?

    public var validationSplit: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.modelSpecification?.validate()
        try self.runtime?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.modelSpecification != nil {
            map["ModelSpecification"] = self.modelSpecification?.toMap()
        }
        if self.runtime != nil {
            map["Runtime"] = self.runtime?.toMap()
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.transforms != nil {
            var tmp : [Any] = []
            for k in self.transforms! {
                tmp.append(k.toMap())
            }
            map["Transforms"] = tmp
        }
        if self.validationSourceURI != nil {
            map["ValidationSourceURI"] = self.validationSourceURI!
        }
        if self.validationSplit != nil {
            map["ValidationSplit"] = self.validationSplit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["ModelSpecification"] as? [String: Any?] {
            var model = ModelSpecification()
            model.fromMap(value)
            self.modelSpecification = model
        }
        if let value = dict["Runtime"] as? [String: Any?] {
            var model = Runtime()
            model.fromMap(value)
            self.runtime = model
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["Transforms"] as? [Any?] {
            var tmp : [CustomParams] = []
            for v in value {
                if v != nil {
                    var model = CustomParams()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.transforms = tmp
        }
        if let value = dict["ValidationSourceURI"] as? String {
            self.validationSourceURI = value
        }
        if let value = dict["ValidationSplit"] as? Double {
            self.validationSplit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DisableDeleteEmptyCell"] as? Bool {
            self.disableDeleteEmptyCell = value
        }
        if let value = dict["DisableDeleteRepeatedStyle"] as? Bool {
            self.disableDeleteRepeatedStyle = value
        }
        if let value = dict["DisableDeleteUnusedPicture"] as? Bool {
            self.disableDeleteUnusedPicture = value
        }
        if let value = dict["DisableDeleteUnusedShape"] as? Bool {
            self.disableDeleteUnusedShape = value
        }
    }
}

public class VideoInsight : Tea.TeaModel {
    public var caption: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caption != nil {
            map["Caption"] = self.caption!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Caption"] as? String {
            self.caption = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AverageFrameRate"] as? String {
            self.averageFrameRate = value
        }
        if let value = dict["BitDepth"] as? Int64 {
            self.bitDepth = value
        }
        if let value = dict["Bitrate"] as? Int64 {
            self.bitrate = value
        }
        if let value = dict["CodecLongName"] as? String {
            self.codecLongName = value
        }
        if let value = dict["CodecName"] as? String {
            self.codecName = value
        }
        if let value = dict["CodecTag"] as? String {
            self.codecTag = value
        }
        if let value = dict["CodecTagString"] as? String {
            self.codecTagString = value
        }
        if let value = dict["CodecTimeBase"] as? String {
            self.codecTimeBase = value
        }
        if let value = dict["ColorPrimaries"] as? String {
            self.colorPrimaries = value
        }
        if let value = dict["ColorRange"] as? String {
            self.colorRange = value
        }
        if let value = dict["ColorSpace"] as? String {
            self.colorSpace = value
        }
        if let value = dict["ColorTransfer"] as? String {
            self.colorTransfer = value
        }
        if let value = dict["DisplayAspectRatio"] as? String {
            self.displayAspectRatio = value
        }
        if let value = dict["Duration"] as? Double {
            self.duration = value
        }
        if let value = dict["FrameCount"] as? Int64 {
            self.frameCount = value
        }
        if let value = dict["FrameRate"] as? String {
            self.frameRate = value
        }
        if let value = dict["HasBFrames"] as? Int64 {
            self.hasBFrames = value
        }
        if let value = dict["Height"] as? Int64 {
            self.height = value
        }
        if let value = dict["Index"] as? Int64 {
            self.index = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["Level"] as? Int64 {
            self.level = value
        }
        if let value = dict["PixelFormat"] as? String {
            self.pixelFormat = value
        }
        if let value = dict["Profile"] as? String {
            self.profile = value
        }
        if let value = dict["Rotate"] as? String {
            self.rotate = value
        }
        if let value = dict["SampleAspectRatio"] as? String {
            self.sampleAspectRatio = value
        }
        if let value = dict["StartTime"] as? Double {
            self.startTime = value
        }
        if let value = dict["TimeBase"] as? String {
            self.timeBase = value
        }
        if let value = dict["Width"] as? Int64 {
            self.width = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Copy"] as? Bool {
            self.copy = value
        }
        if let value = dict["Export"] as? Bool {
            self.export = value
        }
        if let value = dict["History"] as? Bool {
            self.history = value
        }
        if let value = dict["Print"] as? Bool {
            self.print = value
        }
        if let value = dict["Readonly"] as? Bool {
            self.readonly = value
        }
        if let value = dict["Rename"] as? Bool {
            self.rename = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Avatar"] as? String {
            self.avatar = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FillStyle"] as? String {
            self.fillStyle = value
        }
        if let value = dict["Font"] as? String {
            self.font = value
        }
        if let value = dict["Horizontal"] as? Int64 {
            self.horizontal = value
        }
        if let value = dict["Rotate"] as? Double {
            self.rotate = value
        }
        if let value = dict["Type"] as? Int64 {
            self.type = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
        if let value = dict["Vertical"] as? Int64 {
            self.vertical = value
        }
    }
}

public class WorkflowParameter : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Height"] as? Double {
                    self.height = value
                }
                if let value = dict["ReferPos"] as? String {
                    self.referPos = value
                }
                if let value = dict["Width"] as? Double {
                    self.width = value
                }
                if let value = dict["X"] as? Double {
                    self.x = value
                }
                if let value = dict["Y"] as? Double {
                    self.y = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlurRadius"] as? Int32 {
                self.blurRadius = value
            }
            if let value = dict["Boundary"] as? [String: Any?] {
                var model = AddImageMosaicRequest.Targets.Boundary()
                model.fromMap(value)
                self.boundary = model
            }
            if let value = dict["Color"] as? String {
                self.color = value
            }
            if let value = dict["MosaicRadius"] as? Int32 {
                self.mosaicRadius = value
            }
            if let value = dict["Sigma"] as? Int32 {
                self.sigma = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ImageFormat"] as? String {
            self.imageFormat = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Quality"] as? Int32 {
            self.quality = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["Targets"] as? [Any?] {
            var tmp : [AddImageMosaicRequest.Targets] = []
            for v in value {
                if v != nil {
                    var model = AddImageMosaicRequest.Targets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.targets = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ImageFormat"] as? String {
            self.imageFormat = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Quality"] as? Int32 {
            self.quality = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["Targets"] as? String {
            self.targetsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddImageMosaicResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URI"] as? String {
                self.URI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [AddStoryFilesRequest.Files] = []
            for v in value {
                if v != nil {
                    var model = AddStoryFilesRequest.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Files"] as? String {
            self.filesShrink = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [AddStoryFilesResponseBody.Files] = []
            for v in value {
                if v != nil {
                    var model = AddStoryFilesResponseBody.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddStoryFilesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachOSSBucketRequest : Tea.TeaModel {
    public var description_: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.OSSBucket != nil {
            map["OSSBucket"] = self.OSSBucket!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["OSSBucket"] as? String {
            self.OSSBucket = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachOSSBucketResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["URIs"] as? [String] {
            self.URIs = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["URIs"] as? String {
            self.URIsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchDeleteFileMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGetFigureClusterRequest : Tea.TeaModel {
    public var datasetName: String?

    public var objectIds: [String]?

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
        if self.objectIds != nil {
            map["ObjectIds"] = self.objectIds!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ObjectIds"] as? [String] {
            self.objectIds = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
    }
}

public class BatchGetFigureClusterShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var objectIdsShrink: String?

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
        if self.objectIdsShrink != nil {
            map["ObjectIds"] = self.objectIdsShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ObjectIds"] as? String {
            self.objectIdsShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
    }
}

public class BatchGetFigureClusterResponseBody : Tea.TeaModel {
    public var figureClusters: [FigureCluster]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FigureClusters"] as? [Any?] {
            var tmp : [FigureCluster] = []
            for v in value {
                if v != nil {
                    var model = FigureCluster()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.figureClusters = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class BatchGetFigureClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchGetFigureClusterResponseBody?

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
            var model = BatchGetFigureClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchGetFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public var URIs: [String]?

    public var withFields: [String]?

    public override init() {
        super.init()
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
        if self.withFields != nil {
            map["WithFields"] = self.withFields!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["URIs"] as? [String] {
            self.URIs = value
        }
        if let value = dict["WithFields"] as? [String] {
            self.withFields = value
        }
    }
}

public class BatchGetFileMetaShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public var URIsShrink: String?

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
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.URIsShrink != nil {
            map["URIs"] = self.URIsShrink!
        }
        if self.withFieldsShrink != nil {
            map["WithFields"] = self.withFieldsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["URIs"] as? String {
            self.URIsShrink = value
        }
        if let value = dict["WithFields"] as? String {
            self.withFieldsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [File] = []
            for v in value {
                if v != nil {
                    var model = File()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchGetFileMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchIndexFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var files: [InputFile]?

    public var notification: Notification?

    public var projectName: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.notification?.validate()
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
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [InputFile] = []
            for v in value {
                if v != nil {
                    var model = InputFile()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class BatchIndexFileMetaShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var filesShrink: String?

    public var notificationShrink: String?

    public var projectName: String?

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
        if self.filesShrink != nil {
            map["Files"] = self.filesShrink!
        }
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Files"] as? String {
            self.filesShrink = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchIndexFileMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchUpdateFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var files: [InputFile]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [InputFile] = []
            for v in value {
                if v != nil {
                    var model = InputFile()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Files"] as? String {
            self.filesShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [BatchUpdateFileMetaResponseBody.Files] = []
            for v in value {
                if v != nil {
                    var model = BatchUpdateFileMetaResponseBody.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchUpdateFileMetaResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URI1"] as? String {
                self.URI1 = value
            }
            if let value = dict["URI2"] as? String {
                self.URI2 = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Source"] as? [String: Any?] {
            var model = CompareImageFacesRequest.Source()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Source"] as? String {
            self.sourceShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Similarity"] as? Double {
            self.similarity = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CompareImageFacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ContextualAnswerRequest : Tea.TeaModel {
    public var files: [ContextualFile]?

    public var messages: [ContextualMessage]?

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
        if self.files != nil {
            var tmp : [Any] = []
            for k in self.files! {
                tmp.append(k.toMap())
            }
            map["Files"] = tmp
        }
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["Messages"] = tmp
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [ContextualFile] = []
            for v in value {
                if v != nil {
                    var model = ContextualFile()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["Messages"] as? [Any?] {
            var tmp : [ContextualMessage] = []
            for v in value {
                if v != nil {
                    var model = ContextualMessage()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
    }
}

public class ContextualAnswerShrinkRequest : Tea.TeaModel {
    public var filesShrink: String?

    public var messagesShrink: String?

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
        if self.filesShrink != nil {
            map["Files"] = self.filesShrink!
        }
        if self.messagesShrink != nil {
            map["Messages"] = self.messagesShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Files"] as? String {
            self.filesShrink = value
        }
        if let value = dict["Messages"] as? String {
            self.messagesShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
    }
}

public class ContextualAnswerResponseBody : Tea.TeaModel {
    public var answer: Answer?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.answer?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.answer != nil {
            map["Answer"] = self.answer?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Answer"] as? [String: Any?] {
            var model = Answer()
            model.fromMap(value)
            self.answer = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ContextualAnswerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContextualAnswerResponseBody?

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
            var model = ContextualAnswerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ContextualRetrievalRequest : Tea.TeaModel {
    public var datasetName: String?

    public var messages: [ContextualMessage]?

    public var projectName: String?

    public var recallOnly: Bool?

    public var smartClusterIds: [String]?

    public override init() {
        super.init()
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
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["Messages"] = tmp
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.recallOnly != nil {
            map["RecallOnly"] = self.recallOnly!
        }
        if self.smartClusterIds != nil {
            map["SmartClusterIds"] = self.smartClusterIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Messages"] as? [Any?] {
            var tmp : [ContextualMessage] = []
            for v in value {
                if v != nil {
                    var model = ContextualMessage()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RecallOnly"] as? Bool {
            self.recallOnly = value
        }
        if let value = dict["SmartClusterIds"] as? [String] {
            self.smartClusterIds = value
        }
    }
}

public class ContextualRetrievalShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var messagesShrink: String?

    public var projectName: String?

    public var recallOnly: Bool?

    public var smartClusterIdsShrink: String?

    public override init() {
        super.init()
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
        if self.messagesShrink != nil {
            map["Messages"] = self.messagesShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.recallOnly != nil {
            map["RecallOnly"] = self.recallOnly!
        }
        if self.smartClusterIdsShrink != nil {
            map["SmartClusterIds"] = self.smartClusterIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Messages"] as? String {
            self.messagesShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RecallOnly"] as? Bool {
            self.recallOnly = value
        }
        if let value = dict["SmartClusterIds"] as? String {
            self.smartClusterIdsShrink = value
        }
    }
}

public class ContextualRetrievalResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var results: [File]?

    public override init() {
        super.init()
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
        if self.results != nil {
            var tmp : [Any] = []
            for k in self.results! {
                tmp.append(k.toMap())
            }
            map["Results"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Results"] as? [Any?] {
            var tmp : [File] = []
            for v in value {
                if v != nil {
                    var model = File()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.results = tmp
        }
    }
}

public class ContextualRetrievalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContextualRetrievalResponseBody?

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
            var model = ContextualRetrievalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateArchiveFileInspectionTaskRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var notification: Notification?

    public var password: String?

    public var projectName: String?

    public var sourceURI: String?

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
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
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
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateArchiveFileInspectionTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var notificationShrink: String?

    public var password: String?

    public var projectName: String?

    public var sourceURI: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateArchiveFileInspectionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBatchRequest : Tea.TeaModel {
    public class Actions : Tea.TeaModel {
        public var fastFailPolicy: FastFailPolicy?

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
            try self.fastFailPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fastFailPolicy != nil {
                map["FastFailPolicy"] = self.fastFailPolicy?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FastFailPolicy"] as? [String: Any?] {
                var model = FastFailPolicy()
                model.fromMap(value)
                self.fastFailPolicy = model
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Parameters"] as? [String] {
                self.parameters = value
            }
        }
    }
    public class Notification : Tea.TeaModel {
        public var MNS: MNS?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.MNS?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.MNS != nil {
                map["MNS"] = self.MNS?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MNS"] as? [String: Any?] {
                var model = MNS()
                model.fromMap(value)
                self.MNS = model
            }
        }
    }
    public var actions: [CreateBatchRequest.Actions]?

    public var input: Input?

    public var notification: CreateBatchRequest.Notification?

    public var projectName: String?

    public var serviceRole: String?

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
        if self.input != nil {
            map["Input"] = self.input?.toMap()
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.serviceRole != nil {
            map["ServiceRole"] = self.serviceRole!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Actions"] as? [Any?] {
            var tmp : [CreateBatchRequest.Actions] = []
            for v in value {
                if v != nil {
                    var model = CreateBatchRequest.Actions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.actions = tmp
        }
        if let value = dict["Input"] as? [String: Any?] {
            var model = Input()
            model.fromMap(value)
            self.input = model
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = CreateBatchRequest.Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["ServiceRole"] as? String {
            self.serviceRole = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
    }
}

public class CreateBatchShrinkRequest : Tea.TeaModel {
    public var actionsShrink: String?

    public var inputShrink: String?

    public var notificationShrink: String?

    public var projectName: String?

    public var serviceRole: String?

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
        if self.inputShrink != nil {
            map["Input"] = self.inputShrink!
        }
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.serviceRole != nil {
            map["ServiceRole"] = self.serviceRole!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Actions"] as? String {
            self.actionsShrink = value
        }
        if let value = dict["Input"] as? String {
            self.inputShrink = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["ServiceRole"] as? String {
            self.serviceRole = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class CreateBatchResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBatchResponseBody?

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
            var model = CreateBatchResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Binding"] as? [String: Any?] {
            var model = Binding()
            model.fromMap(value)
            self.binding = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateBindingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCompressPointCloudTaskRequest : Tea.TeaModel {
    public var compressMethod: String?

    public var credentialConfig: CredentialConfig?

    public var kdtreeOption: KdtreeOption?

    public var notification: Notification?

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
        try self.notification?.validate()
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
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompressMethod"] as? String {
            self.compressMethod = value
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["KdtreeOption"] as? [String: Any?] {
            var model = KdtreeOption()
            model.fromMap(value)
            self.kdtreeOption = model
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["OctreeOption"] as? [String: Any?] {
            var model = OctreeOption()
            model.fromMap(value)
            self.octreeOption = model
        }
        if let value = dict["PointCloudFields"] as? [String] {
            self.pointCloudFields = value
        }
        if let value = dict["PointCloudFileFormat"] as? String {
            self.pointCloudFileFormat = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateCompressPointCloudTaskShrinkRequest : Tea.TeaModel {
    public var compressMethod: String?

    public var credentialConfigShrink: String?

    public var kdtreeOptionShrink: String?

    public var notificationShrink: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompressMethod"] as? String {
            self.compressMethod = value
        }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["KdtreeOption"] as? String {
            self.kdtreeOptionShrink = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["OctreeOption"] as? String {
            self.octreeOptionShrink = value
        }
        if let value = dict["PointCloudFields"] as? String {
            self.pointCloudFieldsShrink = value
        }
        if let value = dict["PointCloudFileFormat"] as? String {
            self.pointCloudFileFormat = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCompressPointCloudTaskResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URI"] as? String {
                self.URI = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URI"] as? String {
                self.URI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cover"] as? [String: Any?] {
            var model = CreateCustomizedStoryRequest.Cover()
            model.fromMap(value)
            self.cover = model
        }
        if let value = dict["CustomLabels"] as? [String: Any] {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [CreateCustomizedStoryRequest.Files] = []
            for v in value {
                if v != nil {
                    var model = CreateCustomizedStoryRequest.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["StoryName"] as? String {
            self.storyName = value
        }
        if let value = dict["StorySubType"] as? String {
            self.storySubType = value
        }
        if let value = dict["StoryType"] as? String {
            self.storyType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cover"] as? String {
            self.coverShrink = value
        }
        if let value = dict["CustomLabels"] as? String {
            self.customLabelsShrink = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Files"] as? String {
            self.filesShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["StoryName"] as? String {
            self.storyName = value
        }
        if let value = dict["StorySubType"] as? String {
            self.storySubType = value
        }
        if let value = dict["StoryType"] as? String {
            self.storyType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCustomizedStoryResponseBody()
            model.fromMap(value)
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

    public var workflowParameters: [WorkflowParameter]?

    public override init() {
        super.init()
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
        if self.workflowParameters != nil {
            var tmp : [Any] = []
            for k in self.workflowParameters! {
                tmp.append(k.toMap())
            }
            map["WorkflowParameters"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetMaxBindCount"] as? Int64 {
            self.datasetMaxBindCount = value
        }
        if let value = dict["DatasetMaxEntityCount"] as? Int64 {
            self.datasetMaxEntityCount = value
        }
        if let value = dict["DatasetMaxFileCount"] as? Int64 {
            self.datasetMaxFileCount = value
        }
        if let value = dict["DatasetMaxRelationCount"] as? Int64 {
            self.datasetMaxRelationCount = value
        }
        if let value = dict["DatasetMaxTotalFileSize"] as? Int64 {
            self.datasetMaxTotalFileSize = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["WorkflowParameters"] as? [Any?] {
            var tmp : [WorkflowParameter] = []
            for v in value {
                if v != nil {
                    var model = WorkflowParameter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workflowParameters = tmp
        }
    }
}

public class CreateDatasetShrinkRequest : Tea.TeaModel {
    public var datasetMaxBindCount: Int64?

    public var datasetMaxEntityCount: Int64?

    public var datasetMaxFileCount: Int64?

    public var datasetMaxRelationCount: Int64?

    public var datasetMaxTotalFileSize: Int64?

    public var datasetName: String?

    public var description_: String?

    public var projectName: String?

    public var templateId: String?

    public var workflowParametersShrink: String?

    public override init() {
        super.init()
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
        if self.workflowParametersShrink != nil {
            map["WorkflowParameters"] = self.workflowParametersShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetMaxBindCount"] as? Int64 {
            self.datasetMaxBindCount = value
        }
        if let value = dict["DatasetMaxEntityCount"] as? Int64 {
            self.datasetMaxEntityCount = value
        }
        if let value = dict["DatasetMaxFileCount"] as? Int64 {
            self.datasetMaxFileCount = value
        }
        if let value = dict["DatasetMaxRelationCount"] as? Int64 {
            self.datasetMaxRelationCount = value
        }
        if let value = dict["DatasetMaxTotalFileSize"] as? Int64 {
            self.datasetMaxTotalFileSize = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["WorkflowParameters"] as? String {
            self.workflowParametersShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dataset"] as? [String: Any?] {
            var model = Dataset()
            model.fromMap(value)
            self.dataset = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDecodeBlindWatermarkTaskRequest : Tea.TeaModel {
    public var imageQuality: Int32?

    public var model: String?

    public var notification: Notification?

    public var originalImageURI: String?

    public var projectName: String?

    public var sourceURI: String?

    public var strengthLevel: String?

    public var targetURI: String?

    public var watermarkType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageQuality != nil {
            map["ImageQuality"] = self.imageQuality!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
        }
        if self.originalImageURI != nil {
            map["OriginalImageURI"] = self.originalImageURI!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.strengthLevel != nil {
            map["StrengthLevel"] = self.strengthLevel!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.watermarkType != nil {
            map["WatermarkType"] = self.watermarkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageQuality"] as? Int32 {
            self.imageQuality = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["OriginalImageURI"] as? String {
            self.originalImageURI = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["StrengthLevel"] as? String {
            self.strengthLevel = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["WatermarkType"] as? String {
            self.watermarkType = value
        }
    }
}

public class CreateDecodeBlindWatermarkTaskShrinkRequest : Tea.TeaModel {
    public var imageQuality: Int32?

    public var model: String?

    public var notificationShrink: String?

    public var originalImageURI: String?

    public var projectName: String?

    public var sourceURI: String?

    public var strengthLevel: String?

    public var targetURI: String?

    public var watermarkType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageQuality != nil {
            map["ImageQuality"] = self.imageQuality!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
        }
        if self.originalImageURI != nil {
            map["OriginalImageURI"] = self.originalImageURI!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.strengthLevel != nil {
            map["StrengthLevel"] = self.strengthLevel!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.watermarkType != nil {
            map["WatermarkType"] = self.watermarkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageQuality"] as? Int32 {
            self.imageQuality = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["OriginalImageURI"] as? String {
            self.originalImageURI = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["StrengthLevel"] as? String {
            self.strengthLevel = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["WatermarkType"] as? String {
            self.watermarkType = value
        }
    }
}

public class CreateDecodeBlindWatermarkTaskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateDecodeBlindWatermarkTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDecodeBlindWatermarkTaskResponseBody?

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
            var model = CreateDecodeBlindWatermarkTaskResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
    public var datasetName: String?

    public var maxResult: Int64?

    public var notification: Notification?

    public var projectName: String?

    public var sources: [CreateFacesSearchingTaskRequest.Sources]?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.maxResult != nil {
            map["MaxResult"] = self.maxResult!
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
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
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxResult"] as? Int64 {
            self.maxResult = value
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sources"] as? [Any?] {
            var tmp : [CreateFacesSearchingTaskRequest.Sources] = []
            for v in value {
                if v != nil {
                    var model = CreateFacesSearchingTaskRequest.Sources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sources = tmp
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateFacesSearchingTaskShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var maxResult: Int64?

    public var notificationShrink: String?

    public var projectName: String?

    public var sourcesShrink: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourcesShrink != nil {
            map["Sources"] = self.sourcesShrink!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxResult"] as? Int64 {
            self.maxResult = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sources"] as? String {
            self.sourcesShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFacesSearchingTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFigureClusteringTaskRequest : Tea.TeaModel {
    public var datasetName: String?

    public var notification: Notification?

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
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
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
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateFigureClusteringTaskShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var notificationShrink: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFigureClusteringTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFigureClustersMergingTaskRequest : Tea.TeaModel {
    public var datasetName: String?

    public var from: String?

    public var froms: [String]?

    public var notification: Notification?

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
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.froms != nil {
            map["Froms"] = self.froms!
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
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["Froms"] as? [String] {
            self.froms = value
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["To"] as? String {
            self.to = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateFigureClustersMergingTaskShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var from: String?

    public var fromsShrink: String?

    public var notificationShrink: String?

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
        if self.fromsShrink != nil {
            map["Froms"] = self.fromsShrink!
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
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["Froms"] as? String {
            self.fromsShrink = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["To"] as? String {
            self.to = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFigureClustersMergingTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFileCompressionTaskRequest : Tea.TeaModel {
    public class Sources : Tea.TeaModel {
        public var alias: String?

        public var mode: String?

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
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Alias"] as? String {
                self.alias = value
            }
            if let value = dict["Mode"] as? String {
                self.mode = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
    public var compressedFormat: String?

    public var credentialConfig: CredentialConfig?

    public var notification: Notification?

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
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compressedFormat != nil {
            map["CompressedFormat"] = self.compressedFormat!
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompressedFormat"] as? String {
            self.compressedFormat = value
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceManifestURI"] as? String {
            self.sourceManifestURI = value
        }
        if let value = dict["Sources"] as? [Any?] {
            var tmp : [CreateFileCompressionTaskRequest.Sources] = []
            for v in value {
                if v != nil {
                    var model = CreateFileCompressionTaskRequest.Sources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sources = tmp
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateFileCompressionTaskShrinkRequest : Tea.TeaModel {
    public var compressedFormat: String?

    public var credentialConfigShrink: String?

    public var notificationShrink: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompressedFormat"] as? String {
            self.compressedFormat = value
        }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceManifestURI"] as? String {
            self.sourceManifestURI = value
        }
        if let value = dict["Sources"] as? String {
            self.sourcesShrink = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFileCompressionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFileUncompressionTaskRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var notification: Notification?

    public var password: String?

    public var projectName: String?

    public var selectedFiles: [String]?

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
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
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
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SelectedFiles"] as? [String] {
            self.selectedFiles = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateFileUncompressionTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var notificationShrink: String?

    public var password: String?

    public var projectName: String?

    public var selectedFilesShrink: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SelectedFiles"] as? String {
            self.selectedFilesShrink = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFileUncompressionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateImageModerationTaskRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var interval: Int64?

    public var maxFrames: Int64?

    public var notification: Notification?

    public var projectName: String?

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
        try self.notification?.validate()
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
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["Interval"] as? Int64 {
            self.interval = value
        }
        if let value = dict["MaxFrames"] as? Int64 {
            self.maxFrames = value
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Scenes"] as? [String] {
            self.scenes = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateImageModerationTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var interval: Int64?

    public var maxFrames: Int64?

    public var notificationShrink: String?

    public var projectName: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["Interval"] as? Int64 {
            self.interval = value
        }
        if let value = dict["MaxFrames"] as? Int64 {
            self.maxFrames = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Scenes"] as? String {
            self.scenesShrink = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateImageModerationTaskResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Rotate"] as? Int64 {
                self.rotate = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
    public var align: Int64?

    public var backgroundColor: String?

    public var credentialConfig: CredentialConfig?

    public var direction: String?

    public var imageFormat: String?

    public var margin: Int64?

    public var notification: Notification?

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
        try self.notification?.validate()
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
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Align"] as? Int64 {
            self.align = value
        }
        if let value = dict["BackgroundColor"] as? String {
            self.backgroundColor = value
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["ImageFormat"] as? String {
            self.imageFormat = value
        }
        if let value = dict["Margin"] as? Int64 {
            self.margin = value
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["Padding"] as? Int64 {
            self.padding = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Quality"] as? Int64 {
            self.quality = value
        }
        if let value = dict["ScaleType"] as? String {
            self.scaleType = value
        }
        if let value = dict["Sources"] as? [Any?] {
            var tmp : [CreateImageSplicingTaskRequest.Sources] = []
            for v in value {
                if v != nil {
                    var model = CreateImageSplicingTaskRequest.Sources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sources = tmp
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public var notificationShrink: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Align"] as? Int64 {
            self.align = value
        }
        if let value = dict["BackgroundColor"] as? String {
            self.backgroundColor = value
        }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["Direction"] as? String {
            self.direction = value
        }
        if let value = dict["ImageFormat"] as? String {
            self.imageFormat = value
        }
        if let value = dict["Margin"] as? Int64 {
            self.margin = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["Padding"] as? Int64 {
            self.padding = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Quality"] as? Int64 {
            self.quality = value
        }
        if let value = dict["ScaleType"] as? String {
            self.scaleType = value
        }
        if let value = dict["Sources"] as? String {
            self.sourcesShrink = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateImageSplicingTaskResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Rotate"] as? Int64 {
                self.rotate = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
    public var credentialConfig: CredentialConfig?

    public var notification: Notification?

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
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sources"] as? [Any?] {
            var tmp : [CreateImageToPDFTaskRequest.Sources] = []
            for v in value {
                if v != nil {
                    var model = CreateImageToPDFTaskRequest.Sources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sources = tmp
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateImageToPDFTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var notificationShrink: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sources"] as? String {
            self.sourcesShrink = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateImageToPDFTaskResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GapDays"] as? Int64 {
                self.gapDays = value
            }
            if let value = dict["MaxDays"] as? Int64 {
                self.maxDays = value
            }
            if let value = dict["MinDays"] as? Int64 {
                self.minDays = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LocationDateClusterLevels"] as? [String] {
                self.locationDateClusterLevels = value
            }
        }
    }
    public var datasetName: String?

    public var dateOptions: CreateLocationDateClusteringTaskRequest.DateOptions?

    public var locationOptions: CreateLocationDateClusteringTaskRequest.LocationOptions?

    public var notification: Notification?

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
        try self.notification?.validate()
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
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["DateOptions"] as? [String: Any?] {
            var model = CreateLocationDateClusteringTaskRequest.DateOptions()
            model.fromMap(value)
            self.dateOptions = model
        }
        if let value = dict["LocationOptions"] as? [String: Any?] {
            var model = CreateLocationDateClusteringTaskRequest.LocationOptions()
            model.fromMap(value)
            self.locationOptions = model
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateLocationDateClusteringTaskShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var dateOptionsShrink: String?

    public var locationOptionsShrink: String?

    public var notificationShrink: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["DateOptions"] as? String {
            self.dateOptionsShrink = value
        }
        if let value = dict["LocationOptions"] as? String {
            self.locationOptionsShrink = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateLocationDateClusteringTaskResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Language"] as? String {
                    self.language = value
                }
                if let value = dict["TimeOffset"] as? Double {
                    self.timeOffset = value
                }
                if let value = dict["URI"] as? String {
                    self.URI = value
                }
            }
        }
        public var alignMode: String?

        public var attached: Bool?

        public var disableAudio: Bool?

        public var disableVideo: Bool?

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
            if self.alignMode != nil {
                map["AlignMode"] = self.alignMode!
            }
            if self.attached != nil {
                map["Attached"] = self.attached!
            }
            if self.disableAudio != nil {
                map["DisableAudio"] = self.disableAudio!
            }
            if self.disableVideo != nil {
                map["DisableVideo"] = self.disableVideo!
            }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AlignMode"] as? String {
                self.alignMode = value
            }
            if let value = dict["Attached"] as? Bool {
                self.attached = value
            }
            if let value = dict["DisableAudio"] as? Bool {
                self.disableAudio = value
            }
            if let value = dict["DisableVideo"] as? Bool {
                self.disableVideo = value
            }
            if let value = dict["Duration"] as? Double {
                self.duration = value
            }
            if let value = dict["StartTime"] as? Double {
                self.startTime = value
            }
            if let value = dict["Subtitles"] as? [Any?] {
                var tmp : [CreateMediaConvertTaskRequest.Sources.Subtitles] = []
                for v in value {
                    if v != nil {
                        var model = CreateMediaConvertTaskRequest.Sources.Subtitles()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subtitles = tmp
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
    public class Targets : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Duration"] as? Double {
                    self.duration = value
                }
                if let value = dict["Format"] as? String {
                    self.format = value
                }
                if let value = dict["StartNumber"] as? Int32 {
                    self.startNumber = value
                }
            }
        }
        public var audio: TargetAudio?

        public var container: String?

        public var image: TargetImage?

        public var segment: CreateMediaConvertTaskRequest.Targets.Segment?

        public var speed: Double?

        public var stripMetadata: Bool?

        public var subtitle: TargetSubtitle?

        public var URI: String?

        public var video: TargetVideo?

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
            if self.segment != nil {
                map["Segment"] = self.segment?.toMap()
            }
            if self.speed != nil {
                map["Speed"] = self.speed!
            }
            if self.stripMetadata != nil {
                map["StripMetadata"] = self.stripMetadata!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Audio"] as? [String: Any?] {
                var model = TargetAudio()
                model.fromMap(value)
                self.audio = model
            }
            if let value = dict["Container"] as? String {
                self.container = value
            }
            if let value = dict["Image"] as? [String: Any?] {
                var model = TargetImage()
                model.fromMap(value)
                self.image = model
            }
            if let value = dict["Segment"] as? [String: Any?] {
                var model = CreateMediaConvertTaskRequest.Targets.Segment()
                model.fromMap(value)
                self.segment = model
            }
            if let value = dict["Speed"] as? Double {
                self.speed = value
            }
            if let value = dict["StripMetadata"] as? Bool {
                self.stripMetadata = value
            }
            if let value = dict["Subtitle"] as? [String: Any?] {
                var model = TargetSubtitle()
                model.fromMap(value)
                self.subtitle = model
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
            if let value = dict["Video"] as? [String: Any?] {
                var model = TargetVideo()
                model.fromMap(value)
                self.video = model
            }
        }
    }
    public var alignmentIndex: Int32?

    public var credentialConfig: CredentialConfig?

    public var notification: Notification?

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
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alignmentIndex != nil {
            map["AlignmentIndex"] = self.alignmentIndex!
        }
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlignmentIndex"] as? Int32 {
            self.alignmentIndex = value
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sources"] as? [Any?] {
            var tmp : [CreateMediaConvertTaskRequest.Sources] = []
            for v in value {
                if v != nil {
                    var model = CreateMediaConvertTaskRequest.Sources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sources = tmp
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["Targets"] as? [Any?] {
            var tmp : [CreateMediaConvertTaskRequest.Targets] = []
            for v in value {
                if v != nil {
                    var model = CreateMediaConvertTaskRequest.Targets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.targets = tmp
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateMediaConvertTaskShrinkRequest : Tea.TeaModel {
    public var alignmentIndex: Int32?

    public var credentialConfigShrink: String?

    public var notificationShrink: String?

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
        if self.alignmentIndex != nil {
            map["AlignmentIndex"] = self.alignmentIndex!
        }
        if self.credentialConfigShrink != nil {
            map["CredentialConfig"] = self.credentialConfigShrink!
        }
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AlignmentIndex"] as? Int32 {
            self.alignmentIndex = value
        }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sources"] as? String {
            self.sourcesShrink = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["Targets"] as? String {
            self.targetsShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMediaConvertTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOfficeConversionTaskRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Rotate"] as? Int64 {
                self.rotate = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
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

    public var notification: Notification?

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

    public var sources: [CreateOfficeConversionTaskRequest.Sources]?

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
        try self.notification?.validate()
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
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
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
        if self.sources != nil {
            var tmp : [Any] = []
            for k in self.sources! {
                tmp.append(k.toMap())
            }
            map["Sources"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["EndPage"] as? Int64 {
            self.endPage = value
        }
        if let value = dict["FirstPage"] as? Bool {
            self.firstPage = value
        }
        if let value = dict["FitToHeight"] as? Bool {
            self.fitToHeight = value
        }
        if let value = dict["FitToWidth"] as? Bool {
            self.fitToWidth = value
        }
        if let value = dict["HoldLineFeed"] as? Bool {
            self.holdLineFeed = value
        }
        if let value = dict["ImageDPI"] as? Int64 {
            self.imageDPI = value
        }
        if let value = dict["LongPicture"] as? Bool {
            self.longPicture = value
        }
        if let value = dict["LongText"] as? Bool {
            self.longText = value
        }
        if let value = dict["MaxSheetColumn"] as? Int64 {
            self.maxSheetColumn = value
        }
        if let value = dict["MaxSheetRow"] as? Int64 {
            self.maxSheetRow = value
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["Pages"] as? String {
            self.pages = value
        }
        if let value = dict["PaperHorizontal"] as? Bool {
            self.paperHorizontal = value
        }
        if let value = dict["PaperSize"] as? String {
            self.paperSize = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Quality"] as? Int64 {
            self.quality = value
        }
        if let value = dict["ScalePercentage"] as? Int64 {
            self.scalePercentage = value
        }
        if let value = dict["SheetCount"] as? Int64 {
            self.sheetCount = value
        }
        if let value = dict["SheetIndex"] as? Int64 {
            self.sheetIndex = value
        }
        if let value = dict["ShowComments"] as? Bool {
            self.showComments = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Sources"] as? [Any?] {
            var tmp : [CreateOfficeConversionTaskRequest.Sources] = []
            for v in value {
                if v != nil {
                    var model = CreateOfficeConversionTaskRequest.Sources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sources = tmp
        }
        if let value = dict["StartPage"] as? Int64 {
            self.startPage = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["TargetURIPrefix"] as? String {
            self.targetURIPrefix = value
        }
        if let value = dict["TrimPolicy"] as? [String: Any?] {
            var model = TrimPolicy()
            model.fromMap(value)
            self.trimPolicy = model
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public var notificationShrink: String?

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

    public var sourcesShrink: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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
        if self.sourcesShrink != nil {
            map["Sources"] = self.sourcesShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["EndPage"] as? Int64 {
            self.endPage = value
        }
        if let value = dict["FirstPage"] as? Bool {
            self.firstPage = value
        }
        if let value = dict["FitToHeight"] as? Bool {
            self.fitToHeight = value
        }
        if let value = dict["FitToWidth"] as? Bool {
            self.fitToWidth = value
        }
        if let value = dict["HoldLineFeed"] as? Bool {
            self.holdLineFeed = value
        }
        if let value = dict["ImageDPI"] as? Int64 {
            self.imageDPI = value
        }
        if let value = dict["LongPicture"] as? Bool {
            self.longPicture = value
        }
        if let value = dict["LongText"] as? Bool {
            self.longText = value
        }
        if let value = dict["MaxSheetColumn"] as? Int64 {
            self.maxSheetColumn = value
        }
        if let value = dict["MaxSheetRow"] as? Int64 {
            self.maxSheetRow = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["Pages"] as? String {
            self.pages = value
        }
        if let value = dict["PaperHorizontal"] as? Bool {
            self.paperHorizontal = value
        }
        if let value = dict["PaperSize"] as? String {
            self.paperSize = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Quality"] as? Int64 {
            self.quality = value
        }
        if let value = dict["ScalePercentage"] as? Int64 {
            self.scalePercentage = value
        }
        if let value = dict["SheetCount"] as? Int64 {
            self.sheetCount = value
        }
        if let value = dict["SheetIndex"] as? Int64 {
            self.sheetIndex = value
        }
        if let value = dict["ShowComments"] as? Bool {
            self.showComments = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Sources"] as? String {
            self.sourcesShrink = value
        }
        if let value = dict["StartPage"] as? Int64 {
            self.startPage = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
        if let value = dict["TargetURIPrefix"] as? String {
            self.targetURIPrefix = value
        }
        if let value = dict["TrimPolicy"] as? String {
            self.trimPolicyShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateOfficeConversionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateProjectRequest : Tea.TeaModel {
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
    public var datasetMaxBindCount: Int64?

    public var datasetMaxEntityCount: Int64?

    public var datasetMaxFileCount: Int64?

    public var datasetMaxRelationCount: Int64?

    public var datasetMaxTotalFileSize: Int64?

    public var description_: String?

    public var projectMaxDatasetCount: Int64?

    public var projectName: String?

    public var serviceRole: String?

    public var tag: [CreateProjectRequest.Tag]?

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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetMaxBindCount"] as? Int64 {
            self.datasetMaxBindCount = value
        }
        if let value = dict["DatasetMaxEntityCount"] as? Int64 {
            self.datasetMaxEntityCount = value
        }
        if let value = dict["DatasetMaxFileCount"] as? Int64 {
            self.datasetMaxFileCount = value
        }
        if let value = dict["DatasetMaxRelationCount"] as? Int64 {
            self.datasetMaxRelationCount = value
        }
        if let value = dict["DatasetMaxTotalFileSize"] as? Int64 {
            self.datasetMaxTotalFileSize = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ProjectMaxDatasetCount"] as? Int64 {
            self.projectMaxDatasetCount = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["ServiceRole"] as? String {
            self.serviceRole = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateProjectRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateProjectRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class CreateProjectShrinkRequest : Tea.TeaModel {
    public var datasetMaxBindCount: Int64?

    public var datasetMaxEntityCount: Int64?

    public var datasetMaxFileCount: Int64?

    public var datasetMaxRelationCount: Int64?

    public var datasetMaxTotalFileSize: Int64?

    public var description_: String?

    public var projectMaxDatasetCount: Int64?

    public var projectName: String?

    public var serviceRole: String?

    public var tagShrink: String?

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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetMaxBindCount"] as? Int64 {
            self.datasetMaxBindCount = value
        }
        if let value = dict["DatasetMaxEntityCount"] as? Int64 {
            self.datasetMaxEntityCount = value
        }
        if let value = dict["DatasetMaxFileCount"] as? Int64 {
            self.datasetMaxFileCount = value
        }
        if let value = dict["DatasetMaxRelationCount"] as? Int64 {
            self.datasetMaxRelationCount = value
        }
        if let value = dict["DatasetMaxTotalFileSize"] as? Int64 {
            self.datasetMaxTotalFileSize = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ProjectMaxDatasetCount"] as? Int64 {
            self.projectMaxDatasetCount = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["ServiceRole"] as? String {
            self.serviceRole = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Project"] as? [String: Any?] {
            var model = Project()
            model.fromMap(value)
            self.project = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateProjectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSimilarImageClusteringTaskRequest : Tea.TeaModel {
    public var datasetName: String?

    public var notification: Notification?

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
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
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
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateSimilarImageClusteringTaskShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var notificationShrink: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateSimilarImageClusteringTaskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class CreateSimilarImageClusteringTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSimilarImageClusteringTaskResponseBody?

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
            var model = CreateSimilarImageClusteringTaskResponseBody()
            model.fromMap(value)
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

    public var notification: Notification?

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
        try self.notification?.validate()
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
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? [String: Any?] {
            var model = AddressForStory()
            model.fromMap(value)
            self.address = model
        }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["CustomLabels"] as? [String: Any] {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxFileCount"] as? Int64 {
            self.maxFileCount = value
        }
        if let value = dict["MinFileCount"] as? Int64 {
            self.minFileCount = value
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["NotifyTopicName"] as? String {
            self.notifyTopicName = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["StoryEndTime"] as? String {
            self.storyEndTime = value
        }
        if let value = dict["StoryName"] as? String {
            self.storyName = value
        }
        if let value = dict["StoryStartTime"] as? String {
            self.storyStartTime = value
        }
        if let value = dict["StorySubType"] as? String {
            self.storySubType = value
        }
        if let value = dict["StoryType"] as? String {
            self.storyType = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public var notificationShrink: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.addressShrink = value
        }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["CustomLabels"] as? String {
            self.customLabelsShrink = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxFileCount"] as? Int64 {
            self.maxFileCount = value
        }
        if let value = dict["MinFileCount"] as? Int64 {
            self.minFileCount = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["NotifyTopicName"] as? String {
            self.notifyTopicName = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["StoryEndTime"] as? String {
            self.storyEndTime = value
        }
        if let value = dict["StoryName"] as? String {
            self.storyName = value
        }
        if let value = dict["StoryStartTime"] as? String {
            self.storyStartTime = value
        }
        if let value = dict["StorySubType"] as? String {
            self.storySubType = value
        }
        if let value = dict["StoryType"] as? String {
            self.storyType = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateStoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTriggerRequest : Tea.TeaModel {
    public class Actions : Tea.TeaModel {
        public var fastFailPolicy: FastFailPolicy?

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
            try self.fastFailPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fastFailPolicy != nil {
                map["FastFailPolicy"] = self.fastFailPolicy?.toMap()
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FastFailPolicy"] as? [String: Any?] {
                var model = FastFailPolicy()
                model.fromMap(value)
                self.fastFailPolicy = model
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Parameters"] as? [String] {
                self.parameters = value
            }
        }
    }
    public class Notification : Tea.TeaModel {
        public var MNS: MNS?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.MNS?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.MNS != nil {
                map["MNS"] = self.MNS?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MNS"] as? [String: Any?] {
                var model = MNS()
                model.fromMap(value)
                self.MNS = model
            }
        }
    }
    public var actions: [CreateTriggerRequest.Actions]?

    public var input: Input?

    public var notification: CreateTriggerRequest.Notification?

    public var projectName: String?

    public var serviceRole: String?

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
        if self.input != nil {
            map["Input"] = self.input?.toMap()
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.serviceRole != nil {
            map["ServiceRole"] = self.serviceRole!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Actions"] as? [Any?] {
            var tmp : [CreateTriggerRequest.Actions] = []
            for v in value {
                if v != nil {
                    var model = CreateTriggerRequest.Actions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.actions = tmp
        }
        if let value = dict["Input"] as? [String: Any?] {
            var model = Input()
            model.fromMap(value)
            self.input = model
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = CreateTriggerRequest.Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["ServiceRole"] as? String {
            self.serviceRole = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
    }
}

public class CreateTriggerShrinkRequest : Tea.TeaModel {
    public var actionsShrink: String?

    public var inputShrink: String?

    public var notificationShrink: String?

    public var projectName: String?

    public var serviceRole: String?

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
        if self.inputShrink != nil {
            map["Input"] = self.inputShrink!
        }
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.serviceRole != nil {
            map["ServiceRole"] = self.serviceRole!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Actions"] as? String {
            self.actionsShrink = value
        }
        if let value = dict["Input"] as? String {
            self.inputShrink = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["ServiceRole"] as? String {
            self.serviceRole = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class CreateTriggerResponseBody : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTriggerResponseBody?

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
            var model = CreateTriggerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVideoLabelClassificationTaskRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var notification: Notification?

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
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateVideoLabelClassificationTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var notificationShrink: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVideoLabelClassificationTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVideoModerationTaskRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var interval: Int64?

    public var maxFrames: Int64?

    public var notification: Notification?

    public var projectName: String?

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
        try self.notification?.validate()
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
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["Interval"] as? Int64 {
            self.interval = value
        }
        if let value = dict["MaxFrames"] as? Int64 {
            self.maxFrames = value
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Scenes"] as? [String] {
            self.scenes = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class CreateVideoModerationTaskShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var interval: Int64?

    public var maxFrames: Int64?

    public var notificationShrink: String?

    public var projectName: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["Interval"] as? Int64 {
            self.interval = value
        }
        if let value = dict["MaxFrames"] as? Int64 {
            self.maxFrames = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Scenes"] as? String {
            self.scenesShrink = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVideoModerationTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteBatchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteBindingRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteBindingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDatasetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFileMetaResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteLocationDateClusterResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteProjectResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteStoryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTriggerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OSSBucket"] as? String {
            self.OSSBucket = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachOSSBucketResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sensitivity"] as? Double {
            self.sensitivity = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sensitivity"] as? Double {
            self.sensitivity = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bodies"] as? [Any?] {
            var tmp : [Body] = []
            for v in value {
                if v != nil {
                    var model = Body()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.bodies = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectImageBodiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectImageCarsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
    }
}

public class DetectImageCarsShrinkRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
    }
}

public class DetectImageCarsResponseBody : Tea.TeaModel {
    public var cars: [Car]?

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
        if self.cars != nil {
            var tmp : [Any] = []
            for k in self.cars! {
                tmp.append(k.toMap())
            }
            map["Cars"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cars"] as? [Any?] {
            var tmp : [Car] = []
            for v in value {
                if v != nil {
                    var model = Car()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cars = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectImageCarsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectImageCarsResponseBody?

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
            var model = DetectImageCarsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Codes"] as? [Any?] {
            var tmp : [Codes] = []
            for v in value {
                if v != nil {
                    var model = Codes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.codes = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectImageCodesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AspectRatios"] as? String {
            self.aspectRatios = value
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AspectRatios"] as? String {
            self.aspectRatios = value
        }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Croppings"] as? [Any?] {
            var tmp : [CroppingSuggestion] = []
            for v in value {
                if v != nil {
                    var model = CroppingSuggestion()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.croppings = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectImageCroppingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Faces"] as? [Any?] {
            var tmp : [Figure] = []
            for v in value {
                if v != nil {
                    var model = Figure()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.faces = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectImageFacesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Threshold"] as? Double {
            self.threshold = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Threshold"] as? Double {
            self.threshold = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectImageLabelsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OverallQualityScore"] as? Double {
                self.overallQualityScore = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImageScore"] as? [String: Any?] {
            var model = DetectImageScoreResponseBody.ImageScore()
            model.fromMap(value)
            self.imageScore = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectImageScoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectImageTextsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
    }
}

public class DetectImageTextsShrinkRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
    }
}

public class DetectImageTextsResponseBody : Tea.TeaModel {
    public var OCRContents: [OCRContents]?

    public var OCRTexts: String?

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
        if self.OCRContents != nil {
            var tmp : [Any] = []
            for k in self.OCRContents! {
                tmp.append(k.toMap())
            }
            map["OCRContents"] = tmp
        }
        if self.OCRTexts != nil {
            map["OCRTexts"] = self.OCRTexts!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OCRContents"] as? [Any?] {
            var tmp : [OCRContents] = []
            for v in value {
                if v != nil {
                    var model = OCRContents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.OCRContents = tmp
        }
        if let value = dict["OCRTexts"] as? String {
            self.OCRTexts = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectImageTextsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectImageTextsResponseBody?

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
            var model = DetectImageTextsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Addresses"] as? [Any?] {
            var tmp : [Address] = []
            for v in value {
                if v != nil {
                    var model = Address()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addresses = tmp
        }
        if let value = dict["Album"] as? String {
            self.album = value
        }
        if let value = dict["AlbumArtist"] as? String {
            self.albumArtist = value
        }
        if let value = dict["Artist"] as? String {
            self.artist = value
        }
        if let value = dict["AudioStreams"] as? [Any?] {
            var tmp : [AudioStream] = []
            for v in value {
                if v != nil {
                    var model = AudioStream()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.audioStreams = tmp
        }
        if let value = dict["Bitrate"] as? Int64 {
            self.bitrate = value
        }
        if let value = dict["Composer"] as? String {
            self.composer = value
        }
        if let value = dict["Duration"] as? Double {
            self.duration = value
        }
        if let value = dict["FormatLongName"] as? String {
            self.formatLongName = value
        }
        if let value = dict["FormatName"] as? String {
            self.formatName = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["LatLong"] as? String {
            self.latLong = value
        }
        if let value = dict["Performer"] as? String {
            self.performer = value
        }
        if let value = dict["ProduceTime"] as? String {
            self.produceTime = value
        }
        if let value = dict["ProgramCount"] as? Int64 {
            self.programCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Size"] as? Int64 {
            self.size = value
        }
        if let value = dict["StartTime"] as? Double {
            self.startTime = value
        }
        if let value = dict["StreamCount"] as? Int64 {
            self.streamCount = value
        }
        if let value = dict["Subtitles"] as? [Any?] {
            var tmp : [SubtitleStream] = []
            for v in value {
                if v != nil {
                    var model = SubtitleStream()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subtitles = tmp
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["VideoHeight"] as? Int64 {
            self.videoHeight = value
        }
        if let value = dict["VideoStreams"] as? [Any?] {
            var tmp : [VideoStream] = []
            for v in value {
                if v != nil {
                    var model = VideoStream()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.videoStreams = tmp
        }
        if let value = dict["VideoWidth"] as? Int64 {
            self.videoWidth = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectMediaMetaResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Suggestion"] as? String {
            self.suggestion = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetectTextAnomalyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EncodeBlindWatermarkRequest : Tea.TeaModel {
    public var content: String?

    public var imageQuality: Int32?

    public var projectName: String?

    public var sourceURI: String?

    public var strengthLevel: String?

    public var targetURI: String?

    public override init() {
        super.init()
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
        if self.imageQuality != nil {
            map["ImageQuality"] = self.imageQuality!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.strengthLevel != nil {
            map["StrengthLevel"] = self.strengthLevel!
        }
        if self.targetURI != nil {
            map["TargetURI"] = self.targetURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ImageQuality"] as? Int32 {
            self.imageQuality = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["StrengthLevel"] as? String {
            self.strengthLevel = value
        }
        if let value = dict["TargetURI"] as? String {
            self.targetURI = value
        }
    }
}

public class EncodeBlindWatermarkResponseBody : Tea.TeaModel {
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

public class EncodeBlindWatermarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EncodeBlindWatermarkResponseBody?

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
            var model = EncodeBlindWatermarkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExtractDocumentTextRequest : Tea.TeaModel {
    public var credentialConfig: CredentialConfig?

    public var projectName: String?

    public var sourceType: String?

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
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
    }
}

public class ExtractDocumentTextShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var projectName: String?

    public var sourceType: String?

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
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
    }
}

public class ExtractDocumentTextResponseBody : Tea.TeaModel {
    public var documentText: String?

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
        if self.documentText != nil {
            map["DocumentText"] = self.documentText!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DocumentText"] as? String {
            self.documentText = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExtractDocumentTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExtractDocumentTextResponseBody?

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
            var model = ExtractDocumentTextResponseBody()
            model.fromMap(value)
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

    public var withFields: [String]?

    public override init() {
        super.init()
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
        if self.withFields != nil {
            map["WithFields"] = self.withFields!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["WithFields"] as? [String] {
            self.withFields = value
        }
    }
}

public class FuzzyQueryShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var order: String?

    public var projectName: String?

    public var query: String?

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
        if self.withFieldsShrink != nil {
            map["WithFields"] = self.withFieldsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["WithFields"] as? String {
            self.withFieldsShrink = value
        }
    }
}

public class FuzzyQueryResponseBody : Tea.TeaModel {
    public var files: [File]?

    public var nextToken: String?

    public var requestId: String?

    public var totalHits: Int64?

    public override init() {
        super.init()
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
        if self.totalHits != nil {
            map["TotalHits"] = self.totalHits!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [File] = []
            for v in value {
                if v != nil {
                    var model = File()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalHits"] as? Int64 {
            self.totalHits = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FuzzyQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateVideoPlaylistRequest : Tea.TeaModel {
    public class SourceSubtitles : Tea.TeaModel {
        public var language: String?

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
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Language"] as? String {
                self.language = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
    public class Targets : Tea.TeaModel {
        public var audio: TargetAudio?

        public var duration: Double?

        public var initialSegments: [Double]?

        public var initialTranscode: Double?

        public var subtitle: TargetSubtitle?

        public var tags: [String: String]?

        public var transcodeAhead: Int32?

        public var URI: String?

        public var video: TargetVideo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.audio?.validate()
            try self.subtitle?.validate()
            try self.video?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.audio != nil {
                map["Audio"] = self.audio?.toMap()
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.initialSegments != nil {
                map["InitialSegments"] = self.initialSegments!
            }
            if self.initialTranscode != nil {
                map["InitialTranscode"] = self.initialTranscode!
            }
            if self.subtitle != nil {
                map["Subtitle"] = self.subtitle?.toMap()
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            if self.transcodeAhead != nil {
                map["TranscodeAhead"] = self.transcodeAhead!
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            if self.video != nil {
                map["Video"] = self.video?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Audio"] as? [String: Any?] {
                var model = TargetAudio()
                model.fromMap(value)
                self.audio = model
            }
            if let value = dict["Duration"] as? Double {
                self.duration = value
            }
            if let value = dict["InitialSegments"] as? [Double] {
                self.initialSegments = value
            }
            if let value = dict["InitialTranscode"] as? Double {
                self.initialTranscode = value
            }
            if let value = dict["Subtitle"] as? [String: Any?] {
                var model = TargetSubtitle()
                model.fromMap(value)
                self.subtitle = model
            }
            if let value = dict["Tags"] as? [String: String] {
                self.tags = value
            }
            if let value = dict["TranscodeAhead"] as? Int32 {
                self.transcodeAhead = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
            if let value = dict["Video"] as? [String: Any?] {
                var model = TargetVideo()
                model.fromMap(value)
                self.video = model
            }
        }
    }
    public var credentialConfig: CredentialConfig?

    public var masterURI: String?

    public var notification: Notification?

    public var overwritePolicy: String?

    public var projectName: String?

    public var sourceDuration: Double?

    public var sourceStartTime: Double?

    public var sourceSubtitles: [GenerateVideoPlaylistRequest.SourceSubtitles]?

    public var sourceURI: String?

    public var tags: [String: String]?

    public var targets: [GenerateVideoPlaylistRequest.Targets]?

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
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialConfig != nil {
            map["CredentialConfig"] = self.credentialConfig?.toMap()
        }
        if self.masterURI != nil {
            map["MasterURI"] = self.masterURI!
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
        }
        if self.overwritePolicy != nil {
            map["OverwritePolicy"] = self.overwritePolicy!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceDuration != nil {
            map["SourceDuration"] = self.sourceDuration!
        }
        if self.sourceStartTime != nil {
            map["SourceStartTime"] = self.sourceStartTime!
        }
        if self.sourceSubtitles != nil {
            var tmp : [Any] = []
            for k in self.sourceSubtitles! {
                tmp.append(k.toMap())
            }
            map["SourceSubtitles"] = tmp
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["MasterURI"] as? String {
            self.masterURI = value
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["OverwritePolicy"] as? String {
            self.overwritePolicy = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceDuration"] as? Double {
            self.sourceDuration = value
        }
        if let value = dict["SourceStartTime"] as? Double {
            self.sourceStartTime = value
        }
        if let value = dict["SourceSubtitles"] as? [Any?] {
            var tmp : [GenerateVideoPlaylistRequest.SourceSubtitles] = []
            for v in value {
                if v != nil {
                    var model = GenerateVideoPlaylistRequest.SourceSubtitles()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sourceSubtitles = tmp
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Tags"] as? [String: String] {
            self.tags = value
        }
        if let value = dict["Targets"] as? [Any?] {
            var tmp : [GenerateVideoPlaylistRequest.Targets] = []
            for v in value {
                if v != nil {
                    var model = GenerateVideoPlaylistRequest.Targets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.targets = tmp
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class GenerateVideoPlaylistShrinkRequest : Tea.TeaModel {
    public var credentialConfigShrink: String?

    public var masterURI: String?

    public var notificationShrink: String?

    public var overwritePolicy: String?

    public var projectName: String?

    public var sourceDuration: Double?

    public var sourceStartTime: Double?

    public var sourceSubtitlesShrink: String?

    public var sourceURI: String?

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
        if self.masterURI != nil {
            map["MasterURI"] = self.masterURI!
        }
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
        }
        if self.overwritePolicy != nil {
            map["OverwritePolicy"] = self.overwritePolicy!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sourceDuration != nil {
            map["SourceDuration"] = self.sourceDuration!
        }
        if self.sourceStartTime != nil {
            map["SourceStartTime"] = self.sourceStartTime!
        }
        if self.sourceSubtitlesShrink != nil {
            map["SourceSubtitles"] = self.sourceSubtitlesShrink!
        }
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["MasterURI"] as? String {
            self.masterURI = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["OverwritePolicy"] as? String {
            self.overwritePolicy = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceDuration"] as? Double {
            self.sourceDuration = value
        }
        if let value = dict["SourceStartTime"] as? Double {
            self.sourceStartTime = value
        }
        if let value = dict["SourceSubtitles"] as? String {
            self.sourceSubtitlesShrink = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["Targets"] as? String {
            self.targetsShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class GenerateVideoPlaylistResponseBody : Tea.TeaModel {
    public class AudioPlaylist : Tea.TeaModel {
        public var channels: Int32?

        public var token: String?

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
            if self.channels != nil {
                map["Channels"] = self.channels!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Channels"] as? Int32 {
                self.channels = value
            }
            if let value = dict["Token"] as? String {
                self.token = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
    public class SubtitlePlaylist : Tea.TeaModel {
        public var index: Int32?

        public var language: String?

        public var token: String?

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
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Index"] as? Int32 {
                self.index = value
            }
            if let value = dict["Language"] as? String {
                self.language = value
            }
            if let value = dict["Token"] as? String {
                self.token = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
    public class VideoPlaylist : Tea.TeaModel {
        public var frameRate: String?

        public var resolution: String?

        public var token: String?

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
            if self.frameRate != nil {
                map["FrameRate"] = self.frameRate!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FrameRate"] as? String {
                self.frameRate = value
            }
            if let value = dict["Resolution"] as? String {
                self.resolution = value
            }
            if let value = dict["Token"] as? String {
                self.token = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
    public var audioPlaylist: [GenerateVideoPlaylistResponseBody.AudioPlaylist]?

    public var duration: Double?

    public var masterURI: String?

    public var requestId: String?

    public var subtitlePlaylist: [GenerateVideoPlaylistResponseBody.SubtitlePlaylist]?

    public var token: String?

    public var videoPlaylist: [GenerateVideoPlaylistResponseBody.VideoPlaylist]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audioPlaylist != nil {
            var tmp : [Any] = []
            for k in self.audioPlaylist! {
                tmp.append(k.toMap())
            }
            map["AudioPlaylist"] = tmp
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.masterURI != nil {
            map["MasterURI"] = self.masterURI!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subtitlePlaylist != nil {
            var tmp : [Any] = []
            for k in self.subtitlePlaylist! {
                tmp.append(k.toMap())
            }
            map["SubtitlePlaylist"] = tmp
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.videoPlaylist != nil {
            var tmp : [Any] = []
            for k in self.videoPlaylist! {
                tmp.append(k.toMap())
            }
            map["VideoPlaylist"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AudioPlaylist"] as? [Any?] {
            var tmp : [GenerateVideoPlaylistResponseBody.AudioPlaylist] = []
            for v in value {
                if v != nil {
                    var model = GenerateVideoPlaylistResponseBody.AudioPlaylist()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.audioPlaylist = tmp
        }
        if let value = dict["Duration"] as? Double {
            self.duration = value
        }
        if let value = dict["MasterURI"] as? String {
            self.masterURI = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SubtitlePlaylist"] as? [Any?] {
            var tmp : [GenerateVideoPlaylistResponseBody.SubtitlePlaylist] = []
            for v in value {
                if v != nil {
                    var model = GenerateVideoPlaylistResponseBody.SubtitlePlaylist()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subtitlePlaylist = tmp
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["VideoPlaylist"] as? [Any?] {
            var tmp : [GenerateVideoPlaylistResponseBody.VideoPlaylist] = []
            for v in value {
                if v != nil {
                    var model = GenerateVideoPlaylistResponseBody.VideoPlaylist()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.videoPlaylist = tmp
        }
    }
}

public class GenerateVideoPlaylistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateVideoPlaylistResponseBody?

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
            var model = GenerateVideoPlaylistResponseBody()
            model.fromMap(value)
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

    public var notification: Notification?

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
        try self.notification?.validate()
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
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CachePreview"] as? Bool {
            self.cachePreview = value
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ExternalUploaded"] as? Bool {
            self.externalUploaded = value
        }
        if let value = dict["Filename"] as? String {
            self.filename = value
        }
        if let value = dict["Hidecmb"] as? Bool {
            self.hidecmb = value
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["NotifyTopicName"] as? String {
            self.notifyTopicName = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Permission"] as? [String: Any?] {
            var model = WebofficePermission()
            model.fromMap(value)
            self.permission = model
        }
        if let value = dict["PreviewPages"] as? Int64 {
            self.previewPages = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Referer"] as? String {
            self.referer = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = WebofficeUser()
            model.fromMap(value)
            self.user = model
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
        if let value = dict["Watermark"] as? [String: Any?] {
            var model = WebofficeWatermark()
            model.fromMap(value)
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

    public var notificationShrink: String?

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
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CachePreview"] as? Bool {
            self.cachePreview = value
        }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ExternalUploaded"] as? Bool {
            self.externalUploaded = value
        }
        if let value = dict["Filename"] as? String {
            self.filename = value
        }
        if let value = dict["Hidecmb"] as? Bool {
            self.hidecmb = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["NotifyTopicName"] as? String {
            self.notifyTopicName = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Permission"] as? String {
            self.permissionShrink = value
        }
        if let value = dict["PreviewPages"] as? Int64 {
            self.previewPages = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Referer"] as? String {
            self.referer = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["User"] as? String {
            self.userShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
        if let value = dict["Watermark"] as? String {
            self.watermarkShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessToken"] as? String {
            self.accessToken = value
        }
        if let value = dict["AccessTokenExpiredTime"] as? String {
            self.accessTokenExpiredTime = value
        }
        if let value = dict["RefreshToken"] as? String {
            self.refreshToken = value
        }
        if let value = dict["RefreshTokenExpiredTime"] as? String {
            self.refreshTokenExpiredTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WebofficeURL"] as? String {
            self.webofficeURL = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GenerateWebofficeTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBatchRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
    }
}

public class GetBatchResponseBody : Tea.TeaModel {
    public var batch: DataIngestion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.batch?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batch != nil {
            map["Batch"] = self.batch?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Batch"] as? [String: Any?] {
            var model = DataIngestion()
            model.fromMap(value)
            self.batch = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetBatchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBatchResponseBody?

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
            var model = GetBatchResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Binding"] as? [String: Any?] {
            var model = Binding()
            model.fromMap(value)
            self.binding = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBindingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDRMLicenseRequest : Tea.TeaModel {
    public var keyId: String?

    public var notifyEndpoint: String?

    public var notifyTopicName: String?

    public var projectName: String?

    public var protectionSystem: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.notifyEndpoint != nil {
            map["NotifyEndpoint"] = self.notifyEndpoint!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.protectionSystem != nil {
            map["ProtectionSystem"] = self.protectionSystem!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["NotifyEndpoint"] as? String {
            self.notifyEndpoint = value
        }
        if let value = dict["NotifyTopicName"] as? String {
            self.notifyTopicName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["ProtectionSystem"] as? String {
            self.protectionSystem = value
        }
    }
}

public class GetDRMLicenseResponseBody : Tea.TeaModel {
    public var deviceInfo: String?

    public var license: String?

    public var requestId: String?

    public var states: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceInfo != nil {
            map["DeviceInfo"] = self.deviceInfo!
        }
        if self.license != nil {
            map["License"] = self.license!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.states != nil {
            map["States"] = self.states!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceInfo"] as? String {
            self.deviceInfo = value
        }
        if let value = dict["License"] as? String {
            self.license = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["States"] as? Int64 {
            self.states = value
        }
    }
}

public class GetDRMLicenseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDRMLicenseResponseBody?

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
            var model = GetDRMLicenseResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["WithStatistics"] as? Bool {
            self.withStatistics = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dataset"] as? [String: Any?] {
            var model = Dataset()
            model.fromMap(value)
            self.dataset = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDecodeBlindWatermarkResultRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class GetDecodeBlindWatermarkResultResponseBody : Tea.TeaModel {
    public var code: String?

    public var content: String?

    public var endTime: String?

    public var eventId: String?

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
        if self.content != nil {
            map["Content"] = self.content!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class GetDecodeBlindWatermarkResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDecodeBlindWatermarkResultResponseBody?

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
            var model = GetDecodeBlindWatermarkResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FigureCluster"] as? [String: Any?] {
            var model = FigureCluster()
            model.fromMap(value)
            self.figureCluster = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetFigureClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public var URI: String?

    public var withFields: [String]?

    public override init() {
        super.init()
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
        if self.withFields != nil {
            map["WithFields"] = self.withFields!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
        }
        if let value = dict["WithFields"] as? [String] {
            self.withFields = value
        }
    }
}

public class GetFileMetaShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var projectName: String?

    public var URI: String?

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
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.URI != nil {
            map["URI"] = self.URI!
        }
        if self.withFieldsShrink != nil {
            map["WithFields"] = self.withFieldsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["URI"] as? String {
            self.URI = value
        }
        if let value = dict["WithFields"] as? String {
            self.withFieldsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [File] = []
            for v in value {
                if v != nil {
                    var model = File()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetFileMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetImageModerationResultRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class GetImageModerationResultResponseBody : Tea.TeaModel {
    public class ModerationResult : Tea.TeaModel {
        public class Frames : Tea.TeaModel {
            public class BlockFrames : Tea.TeaModel {
                public var label: String?

                public var offset: Int32?

                public var rate: Double?

                public override init() {
                    super.init()
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
                    if self.offset != nil {
                        map["Offset"] = self.offset!
                    }
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Offset"] as? Int32 {
                        self.offset = value
                    }
                    if let value = dict["Rate"] as? Double {
                        self.rate = value
                    }
                }
            }
            public var blockFrames: [GetImageModerationResultResponseBody.ModerationResult.Frames.BlockFrames]?

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
                if self.blockFrames != nil {
                    var tmp : [Any] = []
                    for k in self.blockFrames! {
                        tmp.append(k.toMap())
                    }
                    map["BlockFrames"] = tmp
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlockFrames"] as? [Any?] {
                    var tmp : [GetImageModerationResultResponseBody.ModerationResult.Frames.BlockFrames] = []
                    for v in value {
                        if v != nil {
                            var model = GetImageModerationResultResponseBody.ModerationResult.Frames.BlockFrames()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.blockFrames = tmp
                }
                if let value = dict["TotalCount"] as? Int32 {
                    self.totalCount = value
                }
            }
        }
        public var categories: [String]?

        public var frames: GetImageModerationResultResponseBody.ModerationResult.Frames?

        public var suggestion: String?

        public var URI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.frames?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.frames != nil {
                map["Frames"] = self.frames?.toMap()
            }
            if self.suggestion != nil {
                map["Suggestion"] = self.suggestion!
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Categories"] as? [String] {
                self.categories = value
            }
            if let value = dict["Frames"] as? [String: Any?] {
                var model = GetImageModerationResultResponseBody.ModerationResult.Frames()
                model.fromMap(value)
                self.frames = model
            }
            if let value = dict["Suggestion"] as? String {
                self.suggestion = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
    public var code: String?

    public var endTime: String?

    public var eventId: String?

    public var message: String?

    public var moderationResult: GetImageModerationResultResponseBody.ModerationResult?

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
        try self.moderationResult?.validate()
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
        if self.moderationResult != nil {
            map["ModerationResult"] = self.moderationResult?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ModerationResult"] as? [String: Any?] {
            var model = GetImageModerationResultResponseBody.ModerationResult()
            model.fromMap(value)
            self.moderationResult = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class GetImageModerationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageModerationResultResponseBody?

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
            var model = GetImageModerationResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OSSBucket"] as? String {
            self.OSSBucket = value
        }
    }
}

public class GetOSSBucketAttachmentResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var description_: String?

    public var projectName: String?

    public var requestId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetOSSBucketAttachmentResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["WithStatistics"] as? Bool {
            self.withStatistics = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Project"] as? [String: Any?] {
            var model = Project()
            model.fromMap(value)
            self.project = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetProjectResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Story"] as? [String: Any?] {
            var model = Story()
            model.fromMap(value)
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetStoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTaskRequest : Tea.TeaModel {
    public var projectName: String?

    public var requestDefinition: Bool?

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
        if self.requestDefinition != nil {
            map["RequestDefinition"] = self.requestDefinition!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestDefinition"] as? Bool {
            self.requestDefinition = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class GetTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var endTime: String?

    public var eventId: String?

    public var message: String?

    public var progress: Int32?

    public var projectName: String?

    public var requestId: String?

    public var startTime: String?

    public var status: String?

    public var tags: [String: Any]?

    public var taskId: String?

    public var taskRequestDefinition: String?

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
        if self.progress != nil {
            map["Progress"] = self.progress!
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
        if self.taskRequestDefinition != nil {
            map["TaskRequestDefinition"] = self.taskRequestDefinition!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Progress"] as? Int32 {
            self.progress = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskRequestDefinition"] as? String {
            self.taskRequestDefinition = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTriggerRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
    }
}

public class GetTriggerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var trigger: DataIngestion?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trigger?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trigger != nil {
            map["Trigger"] = self.trigger?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Trigger"] as? [String: Any?] {
            var model = DataIngestion()
            model.fromMap(value)
            self.trigger = model
        }
    }
}

public class GetTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTriggerResponseBody?

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
            var model = GetTriggerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Label] = []
            for v in value {
                if v != nil {
                    var model = Label()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetVideoLabelClassificationResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoModerationResultRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class GetVideoModerationResultResponseBody : Tea.TeaModel {
    public class ModerationResult : Tea.TeaModel {
        public class Frames : Tea.TeaModel {
            public class BlockFrames : Tea.TeaModel {
                public var label: String?

                public var offset: Int32?

                public var rate: Double?

                public override init() {
                    super.init()
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
                    if self.offset != nil {
                        map["Offset"] = self.offset!
                    }
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Offset"] as? Int32 {
                        self.offset = value
                    }
                    if let value = dict["Rate"] as? Double {
                        self.rate = value
                    }
                }
            }
            public var blockFrames: [GetVideoModerationResultResponseBody.ModerationResult.Frames.BlockFrames]?

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
                if self.blockFrames != nil {
                    var tmp : [Any] = []
                    for k in self.blockFrames! {
                        tmp.append(k.toMap())
                    }
                    map["BlockFrames"] = tmp
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlockFrames"] as? [Any?] {
                    var tmp : [GetVideoModerationResultResponseBody.ModerationResult.Frames.BlockFrames] = []
                    for v in value {
                        if v != nil {
                            var model = GetVideoModerationResultResponseBody.ModerationResult.Frames.BlockFrames()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.blockFrames = tmp
                }
                if let value = dict["TotalCount"] as? Int32 {
                    self.totalCount = value
                }
            }
        }
        public var categories: [String]?

        public var frames: GetVideoModerationResultResponseBody.ModerationResult.Frames?

        public var suggestion: String?

        public var URI: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.frames?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.frames != nil {
                map["Frames"] = self.frames?.toMap()
            }
            if self.suggestion != nil {
                map["Suggestion"] = self.suggestion!
            }
            if self.URI != nil {
                map["URI"] = self.URI!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Categories"] as? [String] {
                self.categories = value
            }
            if let value = dict["Frames"] as? [String: Any?] {
                var model = GetVideoModerationResultResponseBody.ModerationResult.Frames()
                model.fromMap(value)
                self.frames = model
            }
            if let value = dict["Suggestion"] as? String {
                self.suggestion = value
            }
            if let value = dict["URI"] as? String {
                self.URI = value
            }
        }
    }
    public var code: String?

    public var endTime: String?

    public var eventId: String?

    public var message: String?

    public var moderationResult: GetVideoModerationResultResponseBody.ModerationResult?

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
        try self.moderationResult?.validate()
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
        if self.moderationResult != nil {
            map["ModerationResult"] = self.moderationResult?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ModerationResult"] as? [String: Any?] {
            var model = GetVideoModerationResultResponseBody.ModerationResult()
            model.fromMap(value)
            self.moderationResult = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class GetVideoModerationResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoModerationResultResponseBody?

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
            var model = GetVideoModerationResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class IndexFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var file: InputFile?

    public var notification: Notification?

    public var projectName: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.file?.validate()
        try self.notification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.file != nil {
            map["File"] = self.file?.toMap()
        }
        if self.notification != nil {
            map["Notification"] = self.notification?.toMap()
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["File"] as? [String: Any?] {
            var model = InputFile()
            model.fromMap(value)
            self.file = model
        }
        if let value = dict["Notification"] as? [String: Any?] {
            var model = Notification()
            model.fromMap(value)
            self.notification = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
    }
}

public class IndexFileMetaShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var fileShrink: String?

    public var notificationShrink: String?

    public var projectName: String?

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
        if self.fileShrink != nil {
            map["File"] = self.fileShrink!
        }
        if self.notificationShrink != nil {
            map["Notification"] = self.notificationShrink!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["File"] as? String {
            self.fileShrink = value
        }
        if let value = dict["Notification"] as? String {
            self.notificationShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = IndexFileMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAttachedOSSBucketsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
    }
}

public class ListAttachedOSSBucketsResponseBody : Tea.TeaModel {
    public class AttachedOSSBuckets : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var OSSBucket: String?

        public var ownerId: String?

        public var projectName: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.OSSBucket != nil {
                map["OSSBucket"] = self.OSSBucket!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["OSSBucket"] as? String {
                self.OSSBucket = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["ProjectName"] as? String {
                self.projectName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var attachedOSSBuckets: [ListAttachedOSSBucketsResponseBody.AttachedOSSBuckets]?

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
        if self.attachedOSSBuckets != nil {
            var tmp : [Any] = []
            for k in self.attachedOSSBuckets! {
                tmp.append(k.toMap())
            }
            map["AttachedOSSBuckets"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttachedOSSBuckets"] as? [Any?] {
            var tmp : [ListAttachedOSSBucketsResponseBody.AttachedOSSBuckets] = []
            for v in value {
                if v != nil {
                    var model = ListAttachedOSSBucketsResponseBody.AttachedOSSBuckets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attachedOSSBuckets = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAttachedOSSBucketsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAttachedOSSBucketsResponseBody?

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
            var model = ListAttachedOSSBucketsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBatchesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var order: String?

    public var projectName: String?

    public var sort: String?

    public var state: String?

    public var tagSelector: String?

    public override init() {
        super.init()
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
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tagSelector != nil {
            map["TagSelector"] = self.tagSelector!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["TagSelector"] as? String {
            self.tagSelector = value
        }
    }
}

public class ListBatchesResponseBody : Tea.TeaModel {
    public var batches: [DataIngestion]?

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
        if self.batches != nil {
            var tmp : [Any] = []
            for k in self.batches! {
                tmp.append(k.toMap())
            }
            map["Batches"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Batches"] as? [Any?] {
            var tmp : [DataIngestion] = []
            for v in value {
                if v != nil {
                    var model = DataIngestion()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.batches = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListBatchesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBatchesResponseBody?

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
            var model = ListBatchesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bindings"] as? [Any?] {
            var tmp : [Binding] = []
            for v in value {
                if v != nil {
                    var model = Binding()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.bindings = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListBindingsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Datasets"] as? [Any?] {
            var tmp : [Dataset] = []
            for v in value {
                if v != nil {
                    var model = Dataset()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.datasets = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDatasetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProjectsRequest : Tea.TeaModel {
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
    public var maxResults: Int64?

    public var nextToken: String?

    public var prefix_: String?

    public var tag: [ListProjectsRequest.Tag]?

    public override init() {
        super.init()
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
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListProjectsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListProjectsRequest.Tag()
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

public class ListProjectsShrinkRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var prefix_: String?

    public var tagShrink: String?

    public override init() {
        super.init()
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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Prefix"] as? String {
            self.prefix_ = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Projects"] as? [Any?] {
            var tmp : [Project] = []
            for v in value {
                if v != nil {
                    var model = Project()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.projects = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListProjectsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [RegionType] = []
            for v in value {
                if v != nil {
                    var model = RegionType()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRegionsResponseBody()
            model.fromMap(value)
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

    public var requestDefinition: Bool?

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
        if self.requestDefinition != nil {
            map["RequestDefinition"] = self.requestDefinition!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTimeRange"] as? [String: Any?] {
            var model = TimeRange()
            model.fromMap(value)
            self.endTimeRange = model
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestDefinition"] as? Bool {
            self.requestDefinition = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["StartTimeRange"] as? [String: Any?] {
            var model = TimeRange()
            model.fromMap(value)
            self.startTimeRange = model
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TagSelector"] as? String {
            self.tagSelector = value
        }
        if let value = dict["TaskTypes"] as? [String] {
            self.taskTypes = value
        }
    }
}

public class ListTasksShrinkRequest : Tea.TeaModel {
    public var endTimeRangeShrink: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var order: String?

    public var projectName: String?

    public var requestDefinition: Bool?

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
        if self.requestDefinition != nil {
            map["RequestDefinition"] = self.requestDefinition!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTimeRange"] as? String {
            self.endTimeRangeShrink = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestDefinition"] as? Bool {
            self.requestDefinition = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["StartTimeRange"] as? String {
            self.startTimeRangeShrink = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TagSelector"] as? String {
            self.tagSelector = value
        }
        if let value = dict["TaskTypes"] as? String {
            self.taskTypesShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? String {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [TaskInfo] = []
            for v in value {
                if v != nil {
                    var model = TaskInfo()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTriggersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var order: String?

    public var projectName: String?

    public var sort: String?

    public var state: String?

    public var tagSelector: String?

    public override init() {
        super.init()
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
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tagSelector != nil {
            map["TagSelector"] = self.tagSelector!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["TagSelector"] as? String {
            self.tagSelector = value
        }
    }
}

public class ListTriggersResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

    public var triggers: [DataIngestion]?

    public override init() {
        super.init()
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
        if self.triggers != nil {
            var tmp : [Any] = []
            for k in self.triggers! {
                tmp.append(k.toMap())
            }
            map["Triggers"] = tmp
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
        if let value = dict["Triggers"] as? [Any?] {
            var tmp : [DataIngestion] = []
            for v in value {
                if v != nil {
                    var model = DataIngestion()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.triggers = tmp
        }
    }
}

public class ListTriggersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTriggersResponseBody?

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
            var model = ListTriggersResponseBody()
            model.fromMap(value)
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

    public var withTotalCount: Bool?

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
        if self.withTotalCount != nil {
            map["WithTotalCount"] = self.withTotalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTimeRange"] as? [String: Any?] {
            var model = TimeRange()
            model.fromMap(value)
            self.createTimeRange = model
        }
        if let value = dict["CustomLabels"] as? String {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["UpdateTimeRange"] as? [String: Any?] {
            var model = TimeRange()
            model.fromMap(value)
            self.updateTimeRange = model
        }
        if let value = dict["WithTotalCount"] as? Bool {
            self.withTotalCount = value
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

    public var withTotalCount: Bool?

    public override init() {
        super.init()
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
        if self.withTotalCount != nil {
            map["WithTotalCount"] = self.withTotalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTimeRange"] as? String {
            self.createTimeRangeShrink = value
        }
        if let value = dict["CustomLabels"] as? String {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["UpdateTimeRange"] as? String {
            self.updateTimeRangeShrink = value
        }
        if let value = dict["WithTotalCount"] as? Bool {
            self.withTotalCount = value
        }
    }
}

public class QueryFigureClustersResponseBody : Tea.TeaModel {
    public var figureClusters: [FigureCluster]?

    public var nextToken: String?

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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FigureClusters"] as? [Any?] {
            var tmp : [FigureCluster] = []
            for v in value {
                if v != nil {
                    var model = FigureCluster()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.figureClusters = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryFigureClustersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? [String: Any?] {
            var model = Address()
            model.fromMap(value)
            self.address = model
        }
        if let value = dict["CreateTimeRange"] as? [String: Any?] {
            var model = TimeRange()
            model.fromMap(value)
            self.createTimeRange = model
        }
        if let value = dict["CustomLabels"] as? String {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["LocationDateClusterEndTimeRange"] as? [String: Any?] {
            var model = TimeRange()
            model.fromMap(value)
            self.locationDateClusterEndTimeRange = model
        }
        if let value = dict["LocationDateClusterLevels"] as? [String] {
            self.locationDateClusterLevels = value
        }
        if let value = dict["LocationDateClusterStartTimeRange"] as? [String: Any?] {
            var model = TimeRange()
            model.fromMap(value)
            self.locationDateClusterStartTimeRange = model
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UpdateTimeRange"] as? [String: Any?] {
            var model = TimeRange()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.addressShrink = value
        }
        if let value = dict["CreateTimeRange"] as? String {
            self.createTimeRangeShrink = value
        }
        if let value = dict["CustomLabels"] as? String {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["LocationDateClusterEndTimeRange"] as? String {
            self.locationDateClusterEndTimeRangeShrink = value
        }
        if let value = dict["LocationDateClusterLevels"] as? String {
            self.locationDateClusterLevelsShrink = value
        }
        if let value = dict["LocationDateClusterStartTimeRange"] as? String {
            self.locationDateClusterStartTimeRangeShrink = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UpdateTimeRange"] as? String {
            self.updateTimeRangeShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LocationDateClusters"] as? [Any?] {
            var tmp : [LocationDateCluster] = []
            for v in value {
                if v != nil {
                    var model = LocationDateCluster()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.locationDateClusters = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryLocationDateClustersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySimilarImageClustersRequest : Tea.TeaModel {
    public var customLabels: String?

    public var datasetName: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var order: String?

    public var projectName: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomLabels"] as? String {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
    }
}

public class QuerySimilarImageClustersResponseBody : Tea.TeaModel {
    public var nextToken: String?

    public var requestId: String?

    public var similarImageClusters: [SimilarImageCluster]?

    public override init() {
        super.init()
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
        if self.similarImageClusters != nil {
            var tmp : [Any] = []
            for k in self.similarImageClusters! {
                tmp.append(k.toMap())
            }
            map["SimilarImageClusters"] = tmp
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
        if let value = dict["SimilarImageClusters"] as? [Any?] {
            var tmp : [SimilarImageCluster] = []
            for v in value {
                if v != nil {
                    var model = SimilarImageCluster()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.similarImageClusters = tmp
        }
    }
}

public class QuerySimilarImageClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySimilarImageClustersResponseBody?

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
            var model = QuerySimilarImageClustersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTimeRange"] as? [String: Any?] {
            var model = TimeRange()
            model.fromMap(value)
            self.createTimeRange = model
        }
        if let value = dict["CustomLabels"] as? String {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["FigureClusterIds"] as? [String] {
            self.figureClusterIds = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["StoryEndTimeRange"] as? [String: Any?] {
            var model = TimeRange()
            model.fromMap(value)
            self.storyEndTimeRange = model
        }
        if let value = dict["StoryName"] as? String {
            self.storyName = value
        }
        if let value = dict["StoryStartTimeRange"] as? [String: Any?] {
            var model = TimeRange()
            model.fromMap(value)
            self.storyStartTimeRange = model
        }
        if let value = dict["StorySubType"] as? String {
            self.storySubType = value
        }
        if let value = dict["StoryType"] as? String {
            self.storyType = value
        }
        if let value = dict["WithEmptyStories"] as? Bool {
            self.withEmptyStories = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTimeRange"] as? String {
            self.createTimeRangeShrink = value
        }
        if let value = dict["CustomLabels"] as? String {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["FigureClusterIds"] as? String {
            self.figureClusterIdsShrink = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["StoryEndTimeRange"] as? String {
            self.storyEndTimeRangeShrink = value
        }
        if let value = dict["StoryName"] as? String {
            self.storyName = value
        }
        if let value = dict["StoryStartTimeRange"] as? String {
            self.storyStartTimeRangeShrink = value
        }
        if let value = dict["StorySubType"] as? String {
            self.storySubType = value
        }
        if let value = dict["StoryType"] as? String {
            self.storyType = value
        }
        if let value = dict["WithEmptyStories"] as? Bool {
            self.withEmptyStories = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Stories"] as? [Any?] {
            var tmp : [Story] = []
            for v in value {
                if v != nil {
                    var model = Story()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.stories = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryStoriesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessToken"] as? String {
            self.accessToken = value
        }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RefreshToken"] as? String {
            self.refreshToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessToken"] as? String {
            self.accessToken = value
        }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RefreshToken"] as? String {
            self.refreshToken = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessToken"] as? String {
            self.accessToken = value
        }
        if let value = dict["AccessTokenExpiredTime"] as? String {
            self.accessTokenExpiredTime = value
        }
        if let value = dict["RefreshToken"] as? String {
            self.refreshToken = value
        }
        if let value = dict["RefreshTokenExpiredTime"] as? String {
            self.refreshTokenExpiredTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RefreshWebofficeTokenResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URI"] as? String {
                self.URI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [RemoveStoryFilesRequest.Files] = []
            for v in value {
                if v != nil {
                    var model = RemoveStoryFilesRequest.Files()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Files"] as? String {
            self.filesShrink = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveStoryFilesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResumeBatchResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResumeTriggerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? [String: Any?] {
            var model = CredentialConfig()
            model.fromMap(value)
            self.credentialConfig = model
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialConfig"] as? String {
            self.credentialConfigShrink = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Boundary"] as? [String: Any?] {
                var model = Boundary()
                model.fromMap(value)
                self.boundary = model
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["Similarity"] as? Double {
                self.similarity = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Clusters"] as? [Any?] {
            var tmp : [SearchImageFigureClusterResponseBody.Clusters] = []
            for v in value {
                if v != nil {
                    var model = SearchImageFigureClusterResponseBody.Clusters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.clusters = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchImageFigureClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SemanticQueryRequest : Tea.TeaModel {
    public var datasetName: String?

    public var maxResults: Int32?

    public var mediaTypes: [String]?

    public var nextToken: String?

    public var projectName: String?

    public var query: String?

    public var sourceURI: String?

    public var withFields: [String]?

    public override init() {
        super.init()
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
        if self.mediaTypes != nil {
            map["MediaTypes"] = self.mediaTypes!
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
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.withFields != nil {
            map["WithFields"] = self.withFields!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["MediaTypes"] as? [String] {
            self.mediaTypes = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["WithFields"] as? [String] {
            self.withFields = value
        }
    }
}

public class SemanticQueryShrinkRequest : Tea.TeaModel {
    public var datasetName: String?

    public var maxResults: Int32?

    public var mediaTypesShrink: String?

    public var nextToken: String?

    public var projectName: String?

    public var query: String?

    public var sourceURI: String?

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
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.mediaTypesShrink != nil {
            map["MediaTypes"] = self.mediaTypesShrink!
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
        if self.sourceURI != nil {
            map["SourceURI"] = self.sourceURI!
        }
        if self.withFieldsShrink != nil {
            map["WithFields"] = self.withFieldsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["MediaTypes"] as? String {
            self.mediaTypesShrink = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["SourceURI"] as? String {
            self.sourceURI = value
        }
        if let value = dict["WithFields"] as? String {
            self.withFieldsShrink = value
        }
    }
}

public class SemanticQueryResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [File] = []
            for v in value {
                if v != nil {
                    var model = File()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SemanticQueryResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Field"] as? String {
                self.field = value
            }
            if let value = dict["Operation"] as? String {
                self.operation = value
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

    public var withoutTotalHits: Bool?

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
        if self.withoutTotalHits != nil {
            map["WithoutTotalHits"] = self.withoutTotalHits!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Aggregations"] as? [Any?] {
            var tmp : [SimpleQueryRequest.Aggregations] = []
            for v in value {
                if v != nil {
                    var model = SimpleQueryRequest.Aggregations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.aggregations = tmp
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Query"] as? [String: Any?] {
            var model = SimpleQuery()
            model.fromMap(value)
            self.query = model
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["WithFields"] as? [String] {
            self.withFields = value
        }
        if let value = dict["WithoutTotalHits"] as? Bool {
            self.withoutTotalHits = value
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

    public var withoutTotalHits: Bool?

    public override init() {
        super.init()
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
        if self.withoutTotalHits != nil {
            map["WithoutTotalHits"] = self.withoutTotalHits!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Aggregations"] as? String {
            self.aggregationsShrink = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Query"] as? String {
            self.queryShrink = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["WithFields"] as? String {
            self.withFieldsShrink = value
        }
        if let value = dict["WithoutTotalHits"] as? Bool {
            self.withoutTotalHits = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int64 {
                    self.count = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Field"] as? String {
                self.field = value
            }
            if let value = dict["Groups"] as? [Any?] {
                var tmp : [SimpleQueryResponseBody.Aggregations.Groups] = []
                for v in value {
                    if v != nil {
                        var model = SimpleQueryResponseBody.Aggregations.Groups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.groups = tmp
            }
            if let value = dict["Operation"] as? String {
                self.operation = value
            }
            if let value = dict["Value"] as? Double {
                self.value = value
            }
        }
    }
    public var aggregations: [SimpleQueryResponseBody.Aggregations]?

    public var files: [File]?

    public var nextToken: String?

    public var requestId: String?

    public var totalHits: Int64?

    public override init() {
        super.init()
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
        if self.totalHits != nil {
            map["TotalHits"] = self.totalHits!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Aggregations"] as? [Any?] {
            var tmp : [SimpleQueryResponseBody.Aggregations] = []
            for v in value {
                if v != nil {
                    var model = SimpleQueryResponseBody.Aggregations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.aggregations = tmp
        }
        if let value = dict["Files"] as? [Any?] {
            var tmp : [File] = []
            for v in value {
                if v != nil {
                    var model = File()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.files = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalHits"] as? Int64 {
            self.totalHits = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SimpleQueryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SuspendBatchResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SuspendTriggerResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Parameters"] as? [String] {
                self.parameters = value
            }
        }
    }
    public var actions: [UpdateBatchRequest.Actions]?

    public var id: String?

    public var input: Input?

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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Actions"] as? [Any?] {
            var tmp : [UpdateBatchRequest.Actions] = []
            for v in value {
                if v != nil {
                    var model = UpdateBatchRequest.Actions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.actions = tmp
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Input"] as? [String: Any?] {
            var model = Input()
            model.fromMap(value)
            self.input = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
    }
}

public class UpdateBatchShrinkRequest : Tea.TeaModel {
    public var actionsShrink: String?

    public var id: String?

    public var inputShrink: String?

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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Actions"] as? String {
            self.actionsShrink = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Input"] as? String {
            self.inputShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateBatchResponseBody()
            model.fromMap(value)
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

    public var workflowParameters: [WorkflowParameter]?

    public override init() {
        super.init()
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
        if self.workflowParameters != nil {
            var tmp : [Any] = []
            for k in self.workflowParameters! {
                tmp.append(k.toMap())
            }
            map["WorkflowParameters"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetMaxBindCount"] as? Int64 {
            self.datasetMaxBindCount = value
        }
        if let value = dict["DatasetMaxEntityCount"] as? Int64 {
            self.datasetMaxEntityCount = value
        }
        if let value = dict["DatasetMaxFileCount"] as? Int64 {
            self.datasetMaxFileCount = value
        }
        if let value = dict["DatasetMaxRelationCount"] as? Int64 {
            self.datasetMaxRelationCount = value
        }
        if let value = dict["DatasetMaxTotalFileSize"] as? Int64 {
            self.datasetMaxTotalFileSize = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["WorkflowParameters"] as? [Any?] {
            var tmp : [WorkflowParameter] = []
            for v in value {
                if v != nil {
                    var model = WorkflowParameter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workflowParameters = tmp
        }
    }
}

public class UpdateDatasetShrinkRequest : Tea.TeaModel {
    public var datasetMaxBindCount: Int64?

    public var datasetMaxEntityCount: Int64?

    public var datasetMaxFileCount: Int64?

    public var datasetMaxRelationCount: Int64?

    public var datasetMaxTotalFileSize: Int64?

    public var datasetName: String?

    public var description_: String?

    public var projectName: String?

    public var templateId: String?

    public var workflowParametersShrink: String?

    public override init() {
        super.init()
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
        if self.workflowParametersShrink != nil {
            map["WorkflowParameters"] = self.workflowParametersShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetMaxBindCount"] as? Int64 {
            self.datasetMaxBindCount = value
        }
        if let value = dict["DatasetMaxEntityCount"] as? Int64 {
            self.datasetMaxEntityCount = value
        }
        if let value = dict["DatasetMaxFileCount"] as? Int64 {
            self.datasetMaxFileCount = value
        }
        if let value = dict["DatasetMaxRelationCount"] as? Int64 {
            self.datasetMaxRelationCount = value
        }
        if let value = dict["DatasetMaxTotalFileSize"] as? Int64 {
            self.datasetMaxTotalFileSize = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
        if let value = dict["WorkflowParameters"] as? String {
            self.workflowParametersShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Dataset"] as? [String: Any?] {
            var model = Dataset()
            model.fromMap(value)
            self.dataset = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDatasetResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["FigureCluster"] as? [String: Any?] {
            var model = FigureClusterForReq()
            model.fromMap(value)
            self.figureCluster = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["FigureCluster"] as? String {
            self.figureClusterShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateFigureClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFileMetaRequest : Tea.TeaModel {
    public var datasetName: String?

    public var file: InputFile?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["File"] as? [String: Any?] {
            var model = InputFile()
            model.fromMap(value)
            self.file = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["File"] as? String {
            self.fileShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateFileMetaResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["CustomLabels"] as? [String: Any] {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["CustomLabels"] as? String {
            self.customLabelsShrink = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateLocationDateClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
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
    public var datasetMaxBindCount: Int64?

    public var datasetMaxEntityCount: Int64?

    public var datasetMaxFileCount: Int64?

    public var datasetMaxRelationCount: Int64?

    public var datasetMaxTotalFileSize: Int64?

    public var description_: String?

    public var projectMaxDatasetCount: Int64?

    public var projectName: String?

    public var serviceRole: String?

    public var tag: [UpdateProjectRequest.Tag]?

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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetMaxBindCount"] as? Int64 {
            self.datasetMaxBindCount = value
        }
        if let value = dict["DatasetMaxEntityCount"] as? Int64 {
            self.datasetMaxEntityCount = value
        }
        if let value = dict["DatasetMaxFileCount"] as? Int64 {
            self.datasetMaxFileCount = value
        }
        if let value = dict["DatasetMaxRelationCount"] as? Int64 {
            self.datasetMaxRelationCount = value
        }
        if let value = dict["DatasetMaxTotalFileSize"] as? Int64 {
            self.datasetMaxTotalFileSize = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ProjectMaxDatasetCount"] as? Int64 {
            self.projectMaxDatasetCount = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["ServiceRole"] as? String {
            self.serviceRole = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [UpdateProjectRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = UpdateProjectRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
        }
    }
}

public class UpdateProjectShrinkRequest : Tea.TeaModel {
    public var datasetMaxBindCount: Int64?

    public var datasetMaxEntityCount: Int64?

    public var datasetMaxFileCount: Int64?

    public var datasetMaxRelationCount: Int64?

    public var datasetMaxTotalFileSize: Int64?

    public var description_: String?

    public var projectMaxDatasetCount: Int64?

    public var projectName: String?

    public var serviceRole: String?

    public var tagShrink: String?

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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetMaxBindCount"] as? Int64 {
            self.datasetMaxBindCount = value
        }
        if let value = dict["DatasetMaxEntityCount"] as? Int64 {
            self.datasetMaxEntityCount = value
        }
        if let value = dict["DatasetMaxFileCount"] as? Int64 {
            self.datasetMaxFileCount = value
        }
        if let value = dict["DatasetMaxRelationCount"] as? Int64 {
            self.datasetMaxRelationCount = value
        }
        if let value = dict["DatasetMaxTotalFileSize"] as? Int64 {
            self.datasetMaxTotalFileSize = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ProjectMaxDatasetCount"] as? Int64 {
            self.projectMaxDatasetCount = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["ServiceRole"] as? String {
            self.serviceRole = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
        if let value = dict["TemplateId"] as? String {
            self.templateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Project"] as? [String: Any?] {
            var model = Project()
            model.fromMap(value)
            self.project = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateProjectResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URI"] as? String {
                self.URI = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cover"] as? [String: Any?] {
            var model = UpdateStoryRequest.Cover()
            model.fromMap(value)
            self.cover = model
        }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["CustomLabels"] as? [String: Any] {
            self.customLabels = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["StoryName"] as? String {
            self.storyName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cover"] as? String {
            self.coverShrink = value
        }
        if let value = dict["CustomId"] as? String {
            self.customId = value
        }
        if let value = dict["CustomLabels"] as? String {
            self.customLabelsShrink = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
        if let value = dict["ObjectId"] as? String {
            self.objectId = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["StoryName"] as? String {
            self.storyName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateStoryResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Parameters"] as? [String] {
                self.parameters = value
            }
        }
    }
    public var actions: [UpdateTriggerRequest.Actions]?

    public var id: String?

    public var input: Input?

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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Actions"] as? [Any?] {
            var tmp : [UpdateTriggerRequest.Actions] = []
            for v in value {
                if v != nil {
                    var model = UpdateTriggerRequest.Actions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.actions = tmp
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Input"] as? [String: Any?] {
            var model = Input()
            model.fromMap(value)
            self.input = model
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
    }
}

public class UpdateTriggerShrinkRequest : Tea.TeaModel {
    public var actionsShrink: String?

    public var id: String?

    public var inputShrink: String?

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
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Actions"] as? String {
            self.actionsShrink = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Input"] as? String {
            self.inputShrink = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateTriggerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
